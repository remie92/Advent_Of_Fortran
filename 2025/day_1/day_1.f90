
program test
    INTEGER :: io=2
    character(10) :: a
    open(unit=io,file="input.txt",status="old",action="read")
    do 
        read(io, *,IOSTAT = IOS) a
        print *,IOS
        if (IOS==-1) then
            print *,"STOP"
            exit
        end if
        print *, a
    end do

    close(io)

    
end program test