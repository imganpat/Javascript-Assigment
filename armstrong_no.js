<!DOCTYPE html>

<head>
    <title>Javascript.html</title>
</head>

<body>
    <script>
        let number = prompt("Enter a Number ");
        let digit;
        let sum = 0;
        let temp;
        temp = number;
        while (number != 0) {
            digit = number % 10;
            sum = sum + digit * digit * digit;
            number = Math.floor(number / 10);
        }
        if (temp == sum) {
            document.write(temp + " is a Armstrong Number");
        } else {
            document.write(temp + " is not a Armstrong Number");
        }
    </script>
</body>

</html>
