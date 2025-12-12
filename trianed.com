<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Picture Layout</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background: #333;
            color: white;
            padding: 1em 0;
            text-align: center;
        }

        header h1 {
            margin: 0;
        }

        section.pictures {
            padding: 2em 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 1em;
            display: flex;
            gap: 1em;
        }

        .left-column, .right-column {
            display: flex;
            flex-direction: column;
            gap: 1em;
        }

        .left-column img, .right-column img {
            width: 100%;
            height: auto;
        }

        .left-column {
            flex: 1;
        }

        .right-column {
            flex: 2;
        }

        footer {
            background: #333;
            color: white;
            text-align: center;
            padding: 1em 0;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <h1>Picture Layout</h1>
        </div>
    </header>

    <section class="pictures">
        <div class="container">
            <div class="left-column">
                <img src="image1.jpg" alt="Image 1">
                <img src="image2.jpg" alt="Image 2">
            </div>
            <div class="right-column">
                <img src="image3.jpg" alt="Image 3">
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; 2024 Picture Layout. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
