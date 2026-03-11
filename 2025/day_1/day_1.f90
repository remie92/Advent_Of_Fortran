
program test

    REAL :: start, finish
    

    INTEGER :: io=2
    character(10) :: a
    character(1) :: dir
    character(10) :: numStr
    INTEGER :: num
    INTEGER :: prev_number=50
    INTEGER :: dial=50
    INTEGER :: counter=0
    INTEGER :: counter2=0
    INTEGER :: clicked=0

    CALL CPU_TIME(start)

    open(unit=io,file="input.txt")
    do 
        !print * ,""
        read(io, *,IOSTAT = IOS) a

               if (IOS==-1) then
            print *,"Finished Day 1"
            exit
        end if

        dir=a (1:1)
        numStr=a(2:10)
        read(numStr,'(I10)') num
        !print *,dir,num

        if (dir=="R") then
            !print *,"To The Right!"
            dial=dial+num
        end if
        if (dir=="L") then
            !print *,"To The Left!"
            dial=dial-num
        end if
        !print *,prev_number
        DO WHILE (dial<0)
            dial=dial+100
            if (prev_number /= 0) then
                counter2=counter2+1
                !print *,"Number ticked up!  ADDED TO COUNTER"
            else
                prev_number=-1
                !print *,"Number ticked up BUT FROM ZERO!"
            end if
        end do
        DO WHILE (dial>99)
            dial=dial-100
            if (dial /= 0) then
                counter2=counter2+1
                !print *,"Number ticked down! ADDED TO COUNTER"
            else
                !print *,"Number ticked down to zero!"
            end if
        end do


        if (dial==0) then
            counter=counter+1
            counter2=counter2+1
            !print *, "ADDED TO COUNTER"
        end if


        !print *,"Dial:",dial,"Counter:",counter,counter2

        prev_number=dial
        clicked=0


 


    end do

    close(io)

    print *,"Puzzle1:", counter,"Puzzle2: ",counter2

     CALL CPU_TIME(finish)
    PRINT '("Time = ", F6.3, " seconds.")', finish - start

    
end program test