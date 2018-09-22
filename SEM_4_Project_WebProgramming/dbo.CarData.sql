CREATE TABLE [dbo].[CarData] (
    [car_id]              INT        NOT NULL,
    [car_name]            NCHAR (20) NOT NULL,
    [car_engine_layout]   NCHAR (20) NULL,
    [car_horsepower]      INT        NOT NULL,
    [car_rpm]             INT        NOT NULL,
    [car_torque]          INT        NOT NULL,
    [car_top_speed]       INT        NOT NULL,
    [car_acceleration]    FLOAT (53) NOT NULL,
    [car_length]          FLOAT (53) NOT NULL,
    [car_width]           FLOAT (53) NOT NULL,
    [car_height]          FLOAT (53) NOT NULL,
    [car_wheelbase]       FLOAT (53) NOT NULL,
    [car_gweight]         FLOAT (53) NOT NULL,
    [car_trunk_cap]       FLOAT (53) NULL,
    [car_mileage_city]    INT        NULL,
    [car_mileage_highway] INT        NULL,
    [car_price]           MONEY      NOT NULL,
    [car_image1]          IMAGE      NULL,
    [car_image2]          IMAGE      NULL,
    [car_image3]          IMAGE      NULL,
    PRIMARY KEY CLUSTERED ([car_id] ASC)
);

