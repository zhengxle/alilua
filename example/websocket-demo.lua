function on(data,frame_opcode,is_multi_frame)
    LOG(INFO, data)
    if data == 'close' then die() end
    websocket_send('['..data..']')
end

function loop()
    websocket_send('Now: ' .. time())
    sleep(1000)
end

websocket_accept(loop, on)