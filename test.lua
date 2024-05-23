local symbols = {'|', '/', '-', '\\'}
local counter = 0

function coolSpin(delay)
    while true do
        io.write(symbols[counter % #symbols + 1])
        io.flush()
        counter = counter + 1
        os.execute('sleep ' .. tostring(delay))
        io.write('r')
    end
end

coolSpin(0.1) 
