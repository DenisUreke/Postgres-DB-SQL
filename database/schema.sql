CREATE TABLE public.robot_events (
    id SERIAL PRIMARY KEY,
    action TEXT NOT NULL,
    event_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    image_url TEXT NOT NULL,
    identification TEXT NOT NULL
);