local Translations = {
    success = {
        tuned = 'Vehículo tuneado',
        installed = '%s instalado',
        repaired = 'Vehículo reparado',
        part_repaired = '%s reparado',
        tire_repaired = 'Neumático reparado',
        cleaned = 'Vehículo limpiado',
    },
    warning = {
        not_tuned = 'Vehículo no tuneado',
        no_materials = 'Materiales insuficientes',
    },
    target = {
        duty = 'Entrar/Salir de servicio',
        stash = 'Almacenamiento',
        shop = 'Tienda',
        paint = 'Pintar vehículo',
        withdraw = 'Retirar vehículo',
        deposit = 'Depositar vehículo',
    },
    menu = {
        none = 'Ninguno',
        back = 'Volver',
        close = 'Cerrar',
        submit = 'Confirmar',
        status = 'Estado',
        vehicle_stats = 'Datos del vehículo',
        engine_health = 'Estado del motor',
        body_health = 'Estado de la carroceria',
        fuel_health = 'Estado del tanque',
        radiator_repair = 'Radiador',
        axle_repair = 'Eje',
        fuel_repair = 'Tanque',
        clutch_repair = 'Embrague',
        brakes_repair = 'Frenos',
        vehicle_list = 'Lista de vehículos',
        paint_vehicle = 'Pintar vehículo',
        paints = 'Pinturas',
        type = 'Tipo',
        metallic = 'Metálico',
        matte = 'Mate',
        chrome = 'Cromado',
        custom_color = 'Color personalizado',
        section = 'Sección',
        primary = 'Primario',
        secondary = 'Secundario',
        pearlescent = 'Nacarado',
        interior = 'Interior',
        exterior = 'Exterior',
        wheels = 'Ruedas',
        neons = 'Neones',
        xenon = 'Faros',
        window_tint = 'Polarizado',
        plate = 'Patente',
        repair = 'Reparar',
        unknown = 'Desconocido',
        tire_smoke = 'Humo en neumáticos',
        standard = 'Estándar',
        custom = 'Personalizado',
        toggle = 'Alternar',
        enabled = 'Activado',
        disabled = 'Desactivado',
        color = 'Color',
        front_toggle = 'Parte frontal',
        rear_toggle = 'Parte trasera',
        left_toggle = 'Parte izquierda',
        right_toggle = 'Parte derecha',
        stock = 'Acciones',
        armor = 'Nivel de blindaje',
        brakes = 'Nivel de frenos',
        engine = 'Nivel del motor',
        transmission = 'Nivel de transmisión',
        suspension = 'Nivel de suspensión',
        turbo = 'Turbo',
        install_turbo = 'Instalar turbo',
        uninstall_turbo = 'Desinstalar Turbo',
    },
    progress = {
        nitrous = 'Conectando nitro',
        installing = 'Instalando %s',
        repairing = 'Reparando %s',
        repair_vehicle = 'Reparando vehículo',
        repair_tire = 'Reparando neumáticos',
        cleaning = 'Limpiando el vehículo',
        tuner_chip = 'Conectando chip',
    }
}

if GetConvar('qb_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end