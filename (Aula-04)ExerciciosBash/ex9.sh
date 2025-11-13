# Peça o peso (kg) e altura (m) do usuário e calcule o IMC: imc = peso / (altura ** 2)
echo "============================"
read -p "Digite seu peso: " peso
read -p "Digite sua alturao: " altura

imc=$(echo "$peso / ($altura**2)" | bc)

if(($imc < 18.5)); then
    status="Abaixo do peso"
elif(($imc => 18.5) && ($imc <= 24.9)); then
    status="Peso normal"
elif(($imc >= 25) && ($imc <= 29.9)); then
    status="Sobrepeso"
else
    status="Obesidade"
fi

clear
echo "Resultado:"
echo "Seu IMC é: $imc"
echo "Voce esta $status"