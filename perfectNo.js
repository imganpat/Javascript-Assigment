<!DOCTYPE html>

<head>

    <title>Javascript.html</title>

</head>

<body>

    <script>

        let number = prompt("Enter a Number ");

        let digit;

        let sum = 0;

		       	let i=1;																				let t=number;

		

        while (i <= number/2) {

            digit = number % 10;

        			   if(number%i ==0)

            sum = sum + digit;

          number = Math.floor(number/10);

        }

        	if(t==sum)

            document.write(t+" is a perfect number ");

        		else

        		   document.write(t+" is not a perfect number ");

    </script>

</body>

</html>
