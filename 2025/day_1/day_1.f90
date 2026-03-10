
program test
    INTEGER :: io=2
    character(10) :: a
    character(1) :: dir
    character(10) :: numStr
    INTEGER :: num
    INTEGER :: dial=50
    INTEGER :: counter=0
    open(unit=io,file="input.txt")
    do 
        print * ,""
        read(io, *,IOSTAT = IOS) a

        dir=a (1:1)
        numStr=a(2:10)
        read(numStr,'(I10)') num
        print *,dir,num

        if (dir=="R") then
            print *,"To The Right!"
            dial=dial+num
        end if
        if (dir=="L") then
            print *,"To The Left!"
            dial=dial-num
        end if

        DO WHILE (dial<0)
            dial=dial+100
        end do
        DO WHILE (dial>99)
            dial=dial-100
        end do

        if (dial==0) then
            counter=counter+1
        end if


        print *,"Dial:",dial,"Counter:",counter


        if (IOS==-1) then
            print *,"STOP"
            exit
        end if


    end do

    close(io)

    print *,counter

    
end program test