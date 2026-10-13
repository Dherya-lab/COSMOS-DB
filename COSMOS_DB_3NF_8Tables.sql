-- ============================================================================
-- COSMOS-DB: 8-TABLE 3NF RELATIONAL DATABASE SCRIPT (MySQL 8.0 & SQL*Plus)
-- ============================================================================

CREATE TABLE GALAXIES (
    galaxy_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    morphology VARCHAR(30),
    distance_mly DECIMAL(8,3),
    diameter_ly INT,
    redshift_z DECIMAL(6,4),
    smbh_mass_solar BIGINT
);

INSERT INTO GALAXIES (galaxy_id, name, morphology, distance_mly, diameter_ly, redshift_z, smbh_mass_solar) VALUES ('GAL-01', 'Milky Way Galaxy', 'SBbc Barred Spiral', 0, 105700, 0, 4300000);
INSERT INTO GALAXIES (galaxy_id, name, morphology, distance_mly, diameter_ly, redshift_z, smbh_mass_solar) VALUES ('GAL-02', 'Andromeda Galaxy (M31)', 'SA(s)b Spiral', 2.537, 220000, -0.001, 140000000);
INSERT INTO GALAXIES (galaxy_id, name, morphology, distance_mly, diameter_ly, redshift_z, smbh_mass_solar) VALUES ('GAL-03', 'Triangulum Galaxy (M33)', 'SA(s)cd Spiral', 2.73, 60000, -0.0006, 1500);
INSERT INTO GALAXIES (galaxy_id, name, morphology, distance_mly, diameter_ly, redshift_z, smbh_mass_solar) VALUES ('GAL-04', 'Messier 87 (Virgo A)', 'E0P Giant Elliptical', 53.49, 240000, 0.0042, 6500000000);
INSERT INTO GALAXIES (galaxy_id, name, morphology, distance_mly, diameter_ly, redshift_z, smbh_mass_solar) VALUES ('GAL-05', 'Large Magellanic Cloud', 'SB(s)m Irregular', 0.163, 32200, 0.0009, 600000);
INSERT INTO GALAXIES (galaxy_id, name, morphology, distance_mly, diameter_ly, redshift_z, smbh_mass_solar) VALUES ('GAL-06', 'Sombrero Galaxy (M104)', 'SA(s)a Spiral', 31.1, 49000, 0.0034, 1000000000);

CREATE TABLE STAR_SYSTEMS (
    system_id VARCHAR(10) PRIMARY KEY,
    galaxy_id VARCHAR(10),
    star_name VARCHAR(60) NOT NULL,
    spectral_class VARCHAR(25),
    temp_kelvin INT,
    luminosity_solar DECIMAL(12,4),
    age_gyr DECIMAL(5,2),
    distance_ly DECIMAL(10,2)
);

INSERT INTO STAR_SYSTEMS (system_id, galaxy_id, star_name, spectral_class, temp_kelvin, luminosity_solar, age_gyr, distance_ly) VALUES ('SYS-01', 'GAL-01', 'Sol (The Sun)', 'G2V Main-Sequence', 5778, 1, 4.6, 0);
INSERT INTO STAR_SYSTEMS (system_id, galaxy_id, star_name, spectral_class, temp_kelvin, luminosity_solar, age_gyr, distance_ly) VALUES ('SYS-02', 'GAL-01', 'TRAPPIST-1', 'M8V Ultracool Dwarf', 2566, 0.0005, 7.6, 40.66);
INSERT INTO STAR_SYSTEMS (system_id, galaxy_id, star_name, spectral_class, temp_kelvin, luminosity_solar, age_gyr, distance_ly) VALUES ('SYS-03', 'GAL-01', 'Alpha Centauri AB / Proxima', 'G2V + K1V + M5.5Ve', 5790, 1.519, 5.3, 4.24);
INSERT INTO STAR_SYSTEMS (system_id, galaxy_id, star_name, spectral_class, temp_kelvin, luminosity_solar, age_gyr, distance_ly) VALUES ('SYS-04', 'GAL-01', 'PSR B0531+21 (Crab)', 'Neutron Star / Pulsar', 1600000, 100000, 0.001, 6500);
INSERT INTO STAR_SYSTEMS (system_id, galaxy_id, star_name, spectral_class, temp_kelvin, luminosity_solar, age_gyr, distance_ly) VALUES ('SYS-05', 'GAL-01', 'Sagittarius A* Core', 'Supermassive Kerr BH', 10000000, 100, 13.2, 26670);
INSERT INTO STAR_SYSTEMS (system_id, galaxy_id, star_name, spectral_class, temp_kelvin, luminosity_solar, age_gyr, distance_ly) VALUES ('SYS-06', 'GAL-02', 'M31 Galactic Core', 'K0III Bulge Cluster', 4200, 450, 9, 2537000);

CREATE TABLE CELESTIAL_BODIES (
    body_id VARCHAR(10) PRIMARY KEY,
    system_id VARCHAR(10),
    name VARCHAR(60) NOT NULL,
    body_type VARCHAR(35),
    mass_scale VARCHAR(25),
    radius_km DECIMAL(12,1),
    gravity_ms2 DECIMAL(10,2),
    temp_k INT,
    orbital_period_days DECIMAL(10,2),
    esi_index DECIMAL(4,2)
);

INSERT INTO CELESTIAL_BODIES (body_id, system_id, name, body_type, mass_scale, radius_km, gravity_ms2, temp_k, orbital_period_days, esi_index) VALUES ('CB-103', 'SYS-01', 'Earth (Sol-III)', 'Terrestrial Planet', '1.000 M⊕', 6371, 9.81, 288, 365.25, 1);
INSERT INTO CELESTIAL_BODIES (body_id, system_id, name, body_type, mass_scale, radius_km, gravity_ms2, temp_k, orbital_period_days, esi_index) VALUES ('CB-104', 'SYS-01', 'Mars (Sol-IV)', 'Terrestrial Planet', '0.107 M⊕', 3390, 3.72, 210, 686.98, 0.64);
INSERT INTO CELESTIAL_BODIES (body_id, system_id, name, body_type, mass_scale, radius_km, gravity_ms2, temp_k, orbital_period_days, esi_index) VALUES ('CB-105', 'SYS-01', 'Jupiter (Sol-V)', 'Gas Giant', '317.8 M⊕', 69911, 24.79, 165, 4332.59, 0.12);
INSERT INTO CELESTIAL_BODIES (body_id, system_id, name, body_type, mass_scale, radius_km, gravity_ms2, temp_k, orbital_period_days, esi_index) VALUES ('CB-106', 'SYS-01', 'Saturn (Sol-VI)', 'Gas Giant', '95.16 M⊕', 58232, 10.44, 134, 10759.22, 0.13);
INSERT INTO CELESTIAL_BODIES (body_id, system_id, name, body_type, mass_scale, radius_km, gravity_ms2, temp_k, orbital_period_days, esi_index) VALUES ('CB-107', 'SYS-01', 'Neptune (Sol-VIII)', 'Ice Giant', '17.15 M⊕', 24622, 11.15, 72, 60195, 0.16);
INSERT INTO CELESTIAL_BODIES (body_id, system_id, name, body_type, mass_scale, radius_km, gravity_ms2, temp_k, orbital_period_days, esi_index) VALUES ('CB-101', 'SYS-01', 'The Sun (Sol)', 'Relativistic', '1.000 M☉', 696340, 274, 5778, 0, 0);
INSERT INTO CELESTIAL_BODIES (body_id, system_id, name, body_type, mass_scale, radius_km, gravity_ms2, temp_k, orbital_period_days, esi_index) VALUES ('CB-108', 'SYS-05', 'Gargantua / Sgr A*', 'Relativistic', '4.30M M☉', 12000000, 99999, 10000000, 0, 0);
INSERT INTO CELESTIAL_BODIES (body_id, system_id, name, body_type, mass_scale, radius_km, gravity_ms2, temp_k, orbital_period_days, esi_index) VALUES ('CB-109', 'SYS-04', 'Crab Pulsar (PSR B0531)', 'Relativistic', '1.400 M☉', 10.5, 99999, 1600000, 0, 0);
INSERT INTO CELESTIAL_BODIES (body_id, system_id, name, body_type, mass_scale, radius_km, gravity_ms2, temp_k, orbital_period_days, esi_index) VALUES ('CB-110', 'SYS-06', 'Andromeda Galaxy (M31)', 'Relativistic', '1.50T M☉', 9999999, 120, 4200, 0, 0);
INSERT INTO CELESTIAL_BODIES (body_id, system_id, name, body_type, mass_scale, radius_km, gravity_ms2, temp_k, orbital_period_days, esi_index) VALUES ('CB-102', 'SYS-01', 'James Webb Telescope (L2)', 'Relativistic', '6,500 kg', 0.021, 0, 40, 365.25, 0);

CREATE TABLE ATMOSPHERES (
    atmo_id VARCHAR(10) PRIMARY KEY,
    body_id VARCHAR(10),
    pressure_bar DECIMAL(10,4),
    primary_gas VARCHAR(30),
    secondary_gas VARCHAR(30),
    scale_height_km DECIMAL(6,2),
    magnetosphere_gauss DECIMAL(8,3)
);

INSERT INTO ATMOSPHERES (atmo_id, body_id, pressure_bar, primary_gas, secondary_gas, scale_height_km, magnetosphere_gauss) VALUES ('ATM-01', 'CB-103', 1.0132, 'N2 (78.08%)', 'O2 (20.95%)', 8.5, 0.5);
INSERT INTO ATMOSPHERES (atmo_id, body_id, pressure_bar, primary_gas, secondary_gas, scale_height_km, magnetosphere_gauss) VALUES ('ATM-02', 'CB-104', 0.0063, 'CO2 (95.32%)', 'N2 (2.70%)', 11.1, 0.001);
INSERT INTO ATMOSPHERES (atmo_id, body_id, pressure_bar, primary_gas, secondary_gas, scale_height_km, magnetosphere_gauss) VALUES ('ATM-03', 'CB-105', 1000, 'H2 (89.80%)', 'He (10.20%)', 27, 4.28);
INSERT INTO ATMOSPHERES (atmo_id, body_id, pressure_bar, primary_gas, secondary_gas, scale_height_km, magnetosphere_gauss) VALUES ('ATM-04', 'CB-106', 1400, 'H2 (96.30%)', 'He (3.25%)', 59.5, 0.21);
INSERT INTO ATMOSPHERES (atmo_id, body_id, pressure_bar, primary_gas, secondary_gas, scale_height_km, magnetosphere_gauss) VALUES ('ATM-05', 'CB-107', 1000, 'H2 (80.00%)', 'He (19.00%)', 19.7, 0.14);
INSERT INTO ATMOSPHERES (atmo_id, body_id, pressure_bar, primary_gas, secondary_gas, scale_height_km, magnetosphere_gauss) VALUES ('ATM-06', 'CB-101', 0.0001, 'H+ Corona (73%)', 'He2+ (25%)', 150, 1);

CREATE TABLE SPACE_AGENCIES (
    agency_id VARCHAR(10) PRIMARY KEY,
    agency_code VARCHAR(12),
    agency_name VARCHAR(80) NOT NULL,
    country VARCHAR(40),
    founded_year INT,
    annual_budget_usd_b DECIMAL(6,2),
    primary_launch_vehicle VARCHAR(50)
);

INSERT INTO SPACE_AGENCIES (agency_id, agency_code, agency_name, country, founded_year, annual_budget_usd_b, primary_launch_vehicle) VALUES ('AG-01', 'NASA', 'National Aeronautics and Space Administration', 'United States', 1958, 25.4, 'SLS Block 1 / Falcon Heavy');
INSERT INTO SPACE_AGENCIES (agency_id, agency_code, agency_name, country, founded_year, annual_budget_usd_b, primary_launch_vehicle) VALUES ('AG-02', 'ISRO', 'Indian Space Research Organisation', 'India', 1969, 1.95, 'LVM3 (GSLV Mk-III) / PSLV-XL');
INSERT INTO SPACE_AGENCIES (agency_id, agency_code, agency_name, country, founded_year, annual_budget_usd_b, primary_launch_vehicle) VALUES ('AG-03', 'ESA', 'European Space Agency', 'Europe (22 States)', 1975, 8.45, 'Ariane 6 / Vega-C');
INSERT INTO SPACE_AGENCIES (agency_id, agency_code, agency_name, country, founded_year, annual_budget_usd_b, primary_launch_vehicle) VALUES ('AG-04', 'JAXA', 'Japan Aerospace Exploration Agency', 'Japan', 2003, 3.1, 'H3 Launch Vehicle');
INSERT INTO SPACE_AGENCIES (agency_id, agency_code, agency_name, country, founded_year, annual_budget_usd_b, primary_launch_vehicle) VALUES ('AG-05', 'CSA', 'Canadian Space Agency', 'Canada', 1989, 0.42, 'Partnered (Canadarm3 / NIRISS)');

CREATE TABLE SPACE_MISSIONS (
    mission_id VARCHAR(10) PRIMARY KEY,
    agency_id VARCHAR(10),
    target_body_id VARCHAR(10),
    mission_name VARCHAR(65) NOT NULL,
    launch_date DATE,
    mission_type VARCHAR(30),
    status VARCHAR(25),
    delta_v_kms DECIMAL(6,2),
    payload_kg INT,
    key_finding VARCHAR(140)
);

INSERT INTO SPACE_MISSIONS (mission_id, agency_id, target_body_id, mission_name, launch_date, mission_type, status, delta_v_kms, payload_kg, key_finding) VALUES ('MS-101', 'AG-01', 'CB-104', 'Mars Perseverance & Ingenuity', '2020-07-30', 'Rover & Rotorcraft', 'ACTIVE SURFACE', 5.9, 1025, 'Jezero Crater delta mudstone core caching, MOXIE oxygen synthesis, and 72 aerial flights.');
INSERT INTO SPACE_MISSIONS (mission_id, agency_id, target_body_id, mission_name, launch_date, mission_type, status, delta_v_kms, payload_kg, key_finding) VALUES ('MS-102', 'AG-02', 'CB-104', 'Mangalyaan (Mars Orbiter Mission)', '2013-11-05', 'Planetary Orbiter', 'COMPLETED', 5.4, 1337, 'Martian exospheric Argon-40 telemetry and global dust storm albedo mapping.');
INSERT INTO SPACE_MISSIONS (mission_id, agency_id, target_body_id, mission_name, launch_date, mission_type, status, delta_v_kms, payload_kg, key_finding) VALUES ('MS-103', 'AG-02', 'CB-103', 'Chandrayaan-3 Vikram & Pragyan', '2023-07-14', 'Lunar South Pole Lander', 'SUCCESS', 6.1, 3900, 'First soft landing near Lunar South Pole (69.37°S) and in-situ LIBS sulfur confirmation.');
INSERT INTO SPACE_MISSIONS (mission_id, agency_id, target_body_id, mission_name, launch_date, mission_type, status, delta_v_kms, payload_kg, key_finding) VALUES ('MS-104', 'AG-02', 'CB-101', 'Aditya-L1 Solar Observatory', '2023-09-02', 'Lagrange L1 Halo', 'ACTIVE L1', 0.42, 1475, 'Continuous VELC coronal mass ejection kinematics and solar wind particle monitoring.');
INSERT INTO SPACE_MISSIONS (mission_id, agency_id, target_body_id, mission_name, launch_date, mission_type, status, delta_v_kms, payload_kg, key_finding) VALUES ('MS-105', 'AG-01', 'CB-107', 'Voyager 2 Grand Tour', '1977-08-20', 'Interstellar Probe', 'INTERSTELLAR', 18.5, 825, 'Only spacecraft to visit Jupiter, Saturn, Uranus, and Neptune; crossed Heliopause at 119 AU.');
INSERT INTO SPACE_MISSIONS (mission_id, agency_id, target_body_id, mission_name, launch_date, mission_type, status, delta_v_kms, payload_kg, key_finding) VALUES ('MS-106', 'AG-03', 'CB-106', 'Cassini-Huygens Saturn Orbiter', '1997-10-15', 'Orbiter & Titan Lander', 'COMPLETED', 14.4, 5712, 'Enceladus hydrothermal H2 plumes and Huygens landing on Titan hydrocarbon lakes.');
INSERT INTO SPACE_MISSIONS (mission_id, agency_id, target_body_id, mission_name, launch_date, mission_type, status, delta_v_kms, payload_kg, key_finding) VALUES ('MS-107', 'AG-03', 'CB-102', 'James Webb Space Telescope', '2021-12-25', 'L2 Space Observatory', 'ACTIVE L2', 0.15, 6500, 'High-redshift z>13 early galaxies and exoplanet atmospheric transmission spectra.');
INSERT INTO SPACE_MISSIONS (mission_id, agency_id, target_body_id, mission_name, launch_date, mission_type, status, delta_v_kms, payload_kg, key_finding) VALUES ('MS-108', 'AG-01', 'CB-105', 'Juno Polar Jupiter Orbiter', '2011-08-05', 'Polar Magnetosphere Orbiter', 'ACTIVE ORBIT', 11.2, 3625, 'Mapped Jovian deep dynamo, polar cyclone polygons, and Ganymede ionospheric profile.');
INSERT INTO SPACE_MISSIONS (mission_id, agency_id, target_body_id, mission_name, launch_date, mission_type, status, delta_v_kms, payload_kg, key_finding) VALUES ('MS-109', 'AG-01', 'CB-101', 'Parker Solar Probe', '2018-08-12', 'Heliophysics Perihelion', 'ACTIVE', 22.1, 685, 'Fastest human-made object (192 km/s) sampling magnetic switchbacks inside the solar corona.');

CREATE TABLE OBSERVATORIES (
    obs_id VARCHAR(10) PRIMARY KEY,
    agency_id VARCHAR(10),
    name VARCHAR(65) NOT NULL,
    orbit_regime VARCHAR(40),
    wavelength_band VARCHAR(40),
    aperture_m DECIMAL(7,2),
    angular_res_arcsec DECIMAL(8,5),
    operational_temp_k INT
);

INSERT INTO OBSERVATORIES (obs_id, agency_id, name, orbit_regime, wavelength_band, aperture_m, angular_res_arcsec, operational_temp_k) VALUES ('OBS-01', 'AG-01', 'James Webb Space Telescope', 'Sun-Earth L2 Halo', 'Near/Mid-Infrared (0.6-28 μm)', 6.5, 0.068, 40);
INSERT INTO OBSERVATORIES (obs_id, agency_id, name, orbit_regime, wavelength_band, aperture_m, angular_res_arcsec, operational_temp_k) VALUES ('OBS-02', 'AG-01', 'Hubble Space Telescope', 'LEO 535 km (28.5°)', 'UV / Optical / Near-IR', 2.4, 0.043, 294);
INSERT INTO OBSERVATORIES (obs_id, agency_id, name, orbit_regime, wavelength_band, aperture_m, angular_res_arcsec, operational_temp_k) VALUES ('OBS-03', 'AG-01', 'Chandra X-Ray Observatory', 'HEO Elliptical (133k km)', 'Soft/Hard X-Ray (0.1-10 keV)', 1.2, 0.5, 153);
INSERT INTO OBSERVATORIES (obs_id, agency_id, name, orbit_regime, wavelength_band, aperture_m, angular_res_arcsec, operational_temp_k) VALUES ('OBS-04', 'AG-02', 'AstroSat Multi-Wavelength', 'LEO 650 km Equatorial', 'Far-UV to Hard X-Ray', 0.38, 1.8, 280);
INSERT INTO OBSERVATORIES (obs_id, agency_id, name, orbit_regime, wavelength_band, aperture_m, angular_res_arcsec, operational_temp_k) VALUES ('OBS-05', 'AG-03', 'Event Horizon Telescope (EHT)', 'Global VLBI Baseline', 'Millimeter Radio (230 GHz)', 10000, 0.00002, 4);
INSERT INTO OBSERVATORIES (obs_id, agency_id, name, orbit_regime, wavelength_band, aperture_m, angular_res_arcsec, operational_temp_k) VALUES ('OBS-06', 'AG-03', 'Gaia Astrometric Observatory', 'Sun-Earth L2 Lissajous', 'Optical G-Band (330-1050 nm)', 1.45, 0.00001, 130);

CREATE TABLE SCIENTISTS_DISCOVERIES (
    disc_id VARCHAR(10) PRIMARY KEY,
    target_body_id VARCHAR(10),
    obs_id VARCHAR(10),
    scientist_name VARCHAR(60) NOT NULL,
    nationality VARCHAR(35),
    discovery_year INT,
    law_or_discovery VARCHAR(85),
    core_equation VARCHAR(60),
    nobel_status VARCHAR(30)
);

INSERT INTO SCIENTISTS_DISCOVERIES (disc_id, target_body_id, obs_id, scientist_name, nationality, discovery_year, law_or_discovery, core_equation, nobel_status) VALUES ('DSC-01', 'CB-103', 'OBS-04', 'Aryabhata', 'India', 499, 'Sidereal Earth Rotation & Lunar/Solar Eclipse Geometry', 'T_sid = 23h 56m 4.1s', 'Classical Era');
INSERT INTO SCIENTISTS_DISCOVERIES (disc_id, target_body_id, obs_id, scientist_name, nationality, discovery_year, law_or_discovery, core_equation, nobel_status) VALUES ('DSC-02', 'CB-105', 'OBS-02', 'Galileo Galilei', 'Italy', 1610, 'Galilean Moons of Jupiter & Phases of Venus', 'θ_res = 1.22 λ / D', 'Renaissance');
INSERT INTO SCIENTISTS_DISCOVERIES (disc_id, target_body_id, obs_id, scientist_name, nationality, discovery_year, law_or_discovery, core_equation, nobel_status) VALUES ('DSC-03', 'CB-104', 'OBS-06', 'Johannes Kepler', 'Germany', 1619, 'Three Laws of Elliptical Planetary Motion', 'T² = (4π² / GM) a³', 'Scientific Rev.');
INSERT INTO SCIENTISTS_DISCOVERIES (disc_id, target_body_id, obs_id, scientist_name, nationality, discovery_year, law_or_discovery, core_equation, nobel_status) VALUES ('DSC-04', 'CB-103', 'OBS-02', 'Sir Isaac Newton', 'United Kingdom', 1687, 'Universal Gravitation & Orbital Escape Velocity', 'F = G(m₁m₂)/r²  |  v_e = √(2GM/r)', 'Principia 1687');
INSERT INTO SCIENTISTS_DISCOVERIES (disc_id, target_body_id, obs_id, scientist_name, nationality, discovery_year, law_or_discovery, core_equation, nobel_status) VALUES ('DSC-05', 'CB-108', 'OBS-05', 'Albert Einstein', 'Germany / USA', 1915, 'General Relativity & Gravitational Lensing', 'G_μν + Λg_μν = (8πG/c⁴) T_μν', 'Nobel Prize 1921');
INSERT INTO SCIENTISTS_DISCOVERIES (disc_id, target_body_id, obs_id, scientist_name, nationality, discovery_year, law_or_discovery, core_equation, nobel_status) VALUES ('DSC-06', 'CB-109', 'OBS-03', 'Subrahmanyan Chandrasekhar', 'India / USA', 1930, 'Chandrasekhar Relativistic White Dwarf Mass Limit', 'M_Ch ≈ 1.44 M☉', 'Nobel Prize 1983');
INSERT INTO SCIENTISTS_DISCOVERIES (disc_id, target_body_id, obs_id, scientist_name, nationality, discovery_year, law_or_discovery, core_equation, nobel_status) VALUES ('DSC-07', 'CB-110', 'OBS-02', 'Edwin Powell Hubble', 'United States', 1929, 'Extragalactic Cepheids & Metric Expansion of Space', 'v = H₀ · D', 'Hubble-Lemaître');
INSERT INTO SCIENTISTS_DISCOVERIES (disc_id, target_body_id, obs_id, scientist_name, nationality, discovery_year, law_or_discovery, core_equation, nobel_status) VALUES ('DSC-08', 'CB-108', 'OBS-05', 'Stephen William Hawking', 'United Kingdom', 1974, 'Black Hole Thermodynamics & Hawking Radiation', 'T_H = ℏc³ / (8πGMk_B)', 'Copley Medal');
INSERT INTO SCIENTISTS_DISCOVERIES (disc_id, target_body_id, obs_id, scientist_name, nationality, discovery_year, law_or_discovery, core_equation, nobel_status) VALUES ('DSC-09', 'CB-101', 'OBS-04', 'Vikram Ambalal Sarabhai', 'India', 1969, 'Cosmic Ray Anisotropy & Indian Space Program Architecture', 'Δv = I_sp g₀ ln(m₀/m_f)', 'Padma Vibhushan');

-- 01. 3-Table JOIN: Bodies, Stars & Atmospheres
SELECT b.body_id, b.name, b.body_type, s.star_name, a.primary_gas, a.pressure_bar, b.gravity_ms2, b.esi_index
FROM CELESTIAL_BODIES b
JOIN STAR_SYSTEMS s ON b.system_id = s.system_id
LEFT JOIN ATMOSPHERES a ON b.body_id = a.body_id
ORDER BY b.esi_index DESC;

-- 02. 3-Table JOIN: Missions, Agencies & Targets
SELECT m.mission_id, m.mission_name, ag.agency_code, b.name AS target_body, m.status, m.delta_v_kms, m.payload_kg
FROM SPACE_MISSIONS m
JOIN SPACE_AGENCIES ag ON m.agency_id = ag.agency_id
JOIN CELESTIAL_BODIES b ON m.target_body_id = b.body_id
ORDER BY m.launch_date DESC;

-- 03. GROUP BY: Agency Mission Count & Total Payload
SELECT ag.agency_code, ag.country, COUNT(m.mission_id) AS total_missions, SUM(m.payload_kg) AS total_payload_kg, ag.annual_budget_usd_b
FROM SPACE_AGENCIES ag
LEFT JOIN SPACE_MISSIONS m ON ag.agency_id = m.agency_id
GROUP BY ag.agency_code, ag.country, ag.annual_budget_usd_b
ORDER BY total_missions DESC;

-- 04. 3-Table JOIN: Pioneers, Bodies & Observatories
SELECT d.disc_id, d.scientist_name, d.discovery_year, d.core_equation, b.name AS related_body, o.name AS observatory
FROM SCIENTISTS_DISCOVERIES d
JOIN CELESTIAL_BODIES b ON d.target_body_id = b.body_id
JOIN OBSERVATORIES o ON d.obs_id = o.obs_id
ORDER BY d.discovery_year ASC;

-- 05. JOIN: Galaxies & Host Star Systems
SELECT g.galaxy_id, g.name AS galaxy_name, g.morphology, s.star_name, s.spectral_class, s.temp_kelvin, s.distance_ly
FROM GALAXIES g
JOIN STAR_SYSTEMS s ON g.galaxy_id = s.galaxy_id
ORDER BY s.temp_kelvin DESC;

-- 06. JOIN: Observatories & Operating Agencies
SELECT o.obs_id, o.name AS observatory, ag.agency_code, o.orbit_regime, o.wavelength_band, o.aperture_m, o.operational_temp_k
FROM OBSERVATORIES o
JOIN SPACE_AGENCIES ag ON o.agency_id = ag.agency_id
ORDER BY o.aperture_m DESC;

