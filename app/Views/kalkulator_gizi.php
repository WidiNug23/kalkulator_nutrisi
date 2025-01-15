<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kalkulator Gizi</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 90%;
            max-width: 800px;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin: 10px 0 5px;
            color: #555;
        }
        input, select, button {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        button {
            background-color: #28a745;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
        .results {
            margin-top: 20px;
            padding: 15px;
            background: #e9ecef;
            border-radius: 5px;
        }
        .results h3 {
            color: #333;
        }
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Kalkulator Gizi</h1>
        <form id="kalkulatorGiziForm">
            <label for="gender">Jenis Kelamin:</label>
            <select id="gender" name="gender" required>
                <option value="male">Laki-laki</option>
                <option value="female">Perempuan</option>
            </select>

            <label for="weight">Berat Badan (kg):</label>
            <input type="number" id="weight" name="weight" step="0.1" required>

            <label for="height">Tinggi Badan (cm):</label>
            <input type="number" id="height" name="height" step="0.1" required>

            <label for="age">Umur (tahun):</label>
            <input type="number" id="age" name="age" required>

            <label for="activity_level">Tingkat Aktivitas:</label>
            <select id="activity_level" name="activity_level" required>
                <option value="sedentary">Sedentary (sedikit bergerak)</option>
                <option value="light">Ringan</option>
                <option value="moderate">Sedang</option>
                <option value="active">Aktif</option>
            </select>

            <button type="button" onclick="calculateGizi()">Hitung</button>
        </form>

        <div id="results" class="results" style="display: none;">
            <h3>Hasil Perhitungan:</h3>
            <p><strong>TDEE:</strong> <span id="tdee"></span> kcal</p>
            <p><strong>Karbohidrat:</strong> <span id="carbs"></span> gram</p>
            <p><strong>Protein:</strong> <span id="protein"></span> gram</p>
            <p><strong>Lemak:</strong> <span id="fat"></span> gram</p>
        </div>

        <div id="error" class="error" style="display: none;"></div>
    </div>

    <script>
        async function calculateGizi() {
            const form = document.getElementById('kalkulatorGiziForm');
            const formData = new FormData(form);

            const data = {
                gender: formData.get('gender'),
                weight: parseFloat(formData.get('weight')),
                height: parseFloat(formData.get('height')),
                age: parseInt(formData.get('age')),
                activity_level: formData.get('activity_level')
            };

            try {
                const response = await fetch('/kalkulator_gizi/calculate', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify(data),
                });


                if (!response.ok) {
                    throw new Error('Terjadi kesalahan saat menghitung gizi.');
                }

                const result = await response.json();

                if (result.error) {
                    showError(result.error);
                } else {
                    document.getElementById('tdee').textContent = result.tdee;
                    document.getElementById('carbs').textContent = result.carbs;
                    document.getElementById('protein').textContent = result.protein;
                    document.getElementById('fat').textContent = result.fat;
                    document.getElementById('results').style.display = 'block';
                    document.getElementById('error').style.display = 'none';
                }
            } catch (error) {
                showError(error.message);
            }
        }

        function showError(message) {
            const errorDiv = document.getElementById('error');
            errorDiv.textContent = message;
            errorDiv.style.display = 'block';
            document.getElementById('results').style.display = 'none';
        }
    </script>
</body>
</html>
