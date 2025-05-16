-- This script creates a partitioned table for booking records based on the start date of the booking.
CREATE TABLE Booking_Partitioned (
    id NUMBER PRIMARY KEY,
    user_id NUMBER NOT NULL,
    property_id NUMBER NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR2(50),
    guests NUMBER,
    price NUMBER(10,2),
    created_at DATE,
    updated_at DATE,
    payment_status VARCHAR2(50),
    cancellation_reason VARCHAR2(255),
    special_requests VARCHAR2(255)
)
PARTITION BY RANGE (start_date) (
    PARTITION booking_2020 VALUES LESS THAN (TO_DATE('2021-01-01', 'YYYY-MM-DD')),
    PARTITION booking_2021 VALUES LESS THAN (TO_DATE('2022-01-01', 'YYYY-MM-DD')),
    PARTITION booking_2022 VALUES LESS THAN (TO_DATE('2023-01-01', 'YYYY-MM-DD')),
    PARTITION booking_2023 VALUES LESS THAN (TO_DATE('2024-01-01', 'YYYY-MM-DD')),
    PARTITION booking_future VALUES LESS THAN (MAXVALUE)
);

