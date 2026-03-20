
program test

    REAL :: start, finish
    

    INTEGER :: io=7
    character(1000) :: a
    INTEGER :: counter=0
    INTEGER :: counter2=0

    CALL CPU_TIME(start)

    open(unit=io,file="test",  FORM='FORMATTED',DELIM='NONE')
    do 
        !print * ,""
        read(io, *,IOSTAT = IOS) a

               if (IOS==-1) then
            print *,"Finished Day 2"
            exit
        end if

        print *,"In: ",a,"Stop"

    end do

    close(io)

    print *,"Puzzle1:", counter,"Puzzle2: ",counter2

     CALL CPU_TIME(finish)
    PRINT '("Time Day 2 = ", F6.3, " seconds.")', finish - start

    
end program test