<!DOCTYPE html>

<head>
    <title>Javascript.html</title>
</head>

<body>
    <script>
        let number = prompt("Enter a Number ");
        let digit;
        let sum = 0;
        while (number != 0) {
            digit = number % 10;
            sum = sum + digit;
            number = Math.floor(number / 10);
        }
        document.write("Sum is " + sum);
    </script>
</body>

</html>
