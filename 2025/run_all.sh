start=$(date +%s%3N)
cd day_1
bash compile.sh
cd ..
cd day_2
bash compile.sh
cd ..

end=$(date +%s%3N)
echo "Time taken to compile: $((end - start))ms"
start=$(date +%s%3N)

cd day_1
bash execute.sh
cd ..
cd day_2
bash execute.sh
cd ..

end=$(date +%s%3N)
echo "Time taken run: $((end - start))ms"