-- ============================================================
-- SCRIPT DE PRUEBA: VALIDACIÓN DE RESTRICCIONES DML
-- ARCHIVO: 01-test-constraints.sql
-- ============================================================

-- ------------------------------------------------------------
-- 1. DATOS VÁLIDOS INICIALES
-- Inserción de departamento, municipio y caficultor válidos
-- ------------------------------------------------------------

-- A. Departamento válido
INSERT INTO geo.departments (department_id, name, code)
VALUES (1, 'Santander', 'ST');

-- B. Municipio válido
INSERT INTO geo.municipalities (municipality_id, department_id, name, code)
VALUES (101, 1, 'San Gil', 'ST-SG');

-- C. Caficultor válido (Edad >= 18 al momento de asociarse)
INSERT INTO farm.farmers (farmer_id, municipality_id, first_name, last_name, national_id, birth_date, membership_date)
VALUES (
    '00000000-0000-0000-0000-000000000001',
    101,
    'Juan',
    'Pérez',
    '1234567890',
    '1990-05-15',
    '2015-06-01'
);


-- ------------------------------------------------------------
-- 2. CASOS DE PRUEBA: DATOS QUE DEBEN SER RECHAZADOS
-- (Ejecutar uno a uno o dejar comentados para verificar los errores)
-- ------------------------------------------------------------

-- PRUEBA 1: Caficultor menor de 18 años al momento de asociarse
-- (Nació en 2010 y se asoció en 2020 -> Tenía 10 años. Viola la restricción CHECK de edad)
/*
INSERT INTO farm.farmers (farmer_id, municipality_id, first_name, last_name, national_id, birth_date, membership_date)
VALUES (
    '00000000-0000-0000-0000-000000000002',
    101,
    'Carlos',
    'Gómez',
    '0987654321',
    '2010-01-01',
    '2020-01-01'
);
*/


-- PRUEBA 2: Dos fincas con el mismo nombre para el mismo caficultor
-- (Finca 1 se inserta correctamente, Finca 2 falla por restricción UNIQUE de nombre + caficultor)
INSERT INTO farm.farms (farm_id, farmer_id, farm_name, altitude_masl, total_area_hectares)
VALUES (
    '11111111-1111-1111-1111-111111111111',
    '00000000-0000-0000-0000-000000000001',
    'La Esperanza',
    1500,
    5.5
);

/*
INSERT INTO farm.farms (farm_id, farmer_id, farm_name, altitude_masl, total_area_hectares)
VALUES (
    '22222222-2222-2222-2222-222222222222',
    '00000000-0000-0000-0000-000000000001',
    'La Esperanza', -- Mismo nombre y mismo caficultor
    1600,
    3.0
);
*/


-- PRUEBA 3: Pago por transferencia sin 'transaction_reference'
-- (Viola la restricción CHECK que exige transaction_reference cuando el método es 'TRANSFER')
/*
INSERT INTO pay.payments (payment_id, delivery_id, payment_method, amount, payment_date, transaction_reference)
VALUES (
    '33333333-3333-3333-3333-333333333333',
    '44444444-4444-4444-4444-444444444444',
    'TRANSFER',
    500000.00,
    CURRENT_DATE,
    NULL -- Viola la restricción porque en transferencia debe llevar referencia
);
*/