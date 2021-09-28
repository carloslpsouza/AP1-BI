
CREATE SEQUENCE public.dim_filial_sk_filial_seq;

CREATE TABLE public.dim_filial (
                sk_filial INTEGER NOT NULL DEFAULT nextval('public.dim_filial_sk_filial_seq'),
                nk_filial INTEGER NOT NULL,
                nm_filial VARCHAR(50) NOT NULL,
                CONSTRAINT sk_filial PRIMARY KEY (sk_filial)
);


ALTER SEQUENCE public.dim_filial_sk_filial_seq OWNED BY public.dim_filial.sk_filial;

CREATE SEQUENCE public.dim_funcionario_sk_funcionario_seq;

CREATE TABLE public.dim_funcionario (
                sk_funcionario INTEGER NOT NULL DEFAULT nextval('public.dim_funcionario_sk_funcionario_seq'),
                nk_funcionario INTEGER NOT NULL,
                nm_funcionario VARCHAR(50) NOT NULL,
                CONSTRAINT sk_funcionario PRIMARY KEY (sk_funcionario)
);


ALTER SEQUENCE public.dim_funcionario_sk_funcionario_seq OWNED BY public.dim_funcionario.sk_funcionario;

CREATE SEQUENCE public.dim_bicicleta_sk_bicicleta_seq;

CREATE TABLE public.dim_bicicleta (
                sk_bicicleta INTEGER NOT NULL DEFAULT nextval('public.dim_bicicleta_sk_bicicleta_seq'),
                nk_bicicleta INTEGER NOT NULL,
                marca VARCHAR(50) NOT NULL,
                modelo VARCHAR(50) NOT NULL,
                tipo VARCHAR(50) NOT NULL,
                CONSTRAINT sk_bicicleta PRIMARY KEY (sk_bicicleta)
);


ALTER SEQUENCE public.dim_bicicleta_sk_bicicleta_seq OWNED BY public.dim_bicicleta.sk_bicicleta;

CREATE SEQUENCE public.dim_data_sk_data_seq;

CREATE TABLE public.dim_data (
                sk_data INTEGER NOT NULL DEFAULT nextval('public.dim_data_sk_data_seq'),
                dia INTEGER NOT NULL,
                mes VARCHAR NOT NULL,
                dt_locacao DATE NOT NULL,
                hora_locacao TIME NOT NULL,
                ano VARCHAR NOT NULL,
                CONSTRAINT sk_data PRIMARY KEY (sk_data)
);


ALTER SEQUENCE public.dim_data_sk_data_seq OWNED BY public.dim_data.sk_data;

CREATE TABLE public.ft_locacao_bike (
                dd_valor_loacao REAL NOT NULL,
                tempo_locacao INTEGER NOT NULL,
                desconto REAL NOT NULL,
                sk_data INTEGER NOT NULL,
                sk_filial INTEGER NOT NULL,
                sk_funcionario INTEGER NOT NULL,
                sk_bicicleta INTEGER NOT NULL
);


ALTER TABLE public.ft_locacao_bike ADD CONSTRAINT dim_filial_ft_locacao_bike_fk
FOREIGN KEY (sk_filial)
REFERENCES public.dim_filial (sk_filial)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_locacao_bike ADD CONSTRAINT dim_funcionario_ft_locacao_bike_fk
FOREIGN KEY (sk_funcionario)
REFERENCES public.dim_funcionario (sk_funcionario)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_locacao_bike ADD CONSTRAINT dim_bicicleta_ft_locacao_bike_fk
FOREIGN KEY (sk_bicicleta)
REFERENCES public.dim_bicicleta (sk_bicicleta)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_locacao_bike ADD CONSTRAINT dim_data_ft_locacao_bike_fk
FOREIGN KEY (sk_data)
REFERENCES public.dim_data (sk_data)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
