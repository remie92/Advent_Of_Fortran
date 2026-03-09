program test
    INTEGER :: first=1
    INTEGER :: second=1
    INTEGER :: old_second=1
    LOOP : DO I=1,20
        print *, first
        
        old_second=second
        second = second+first
        first=old_second

    END DO LOOP
    
end program test