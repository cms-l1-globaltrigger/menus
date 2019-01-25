-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev_r5

-- Unique ID of L1 Trigger Menu:
-- a9c22674-c07e-4484-be32-d1f0726031c7

-- Unique ID of firmware implementation:
-- 38c2787b-f3a1-48e6-b3f8-b7625293f15a

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

-- External condition assignment
    single_ext_1189548080491112364 <= ext_cond_bx_0(4); -- single_ext_1189548080491112364
    single_ext_6102799243448260461 <= ext_cond_bx_0(7); -- single_ext_6102799243448260461
    single_ext_6909925150529645277 <= ext_cond_bx_p1(7); -- single_ext_6909925150529645277
    single_ext_6909925150529645278 <= ext_cond_bx_p2(7); -- single_ext_6909925150529645278
    single_ext_6909925150529645533 <= ext_cond_bx_m1(7); -- single_ext_6909925150529645533
    single_ext_6909925150529645534 <= ext_cond_bx_m2(7); -- single_ext_6909925150529645534
    single_ext_9794008929098471889 <= ext_cond_bx_p1(4); -- single_ext_9794008929098471889
    single_ext_9794008929098471890 <= ext_cond_bx_p2(4); -- single_ext_9794008929098471890
    single_ext_9794008929098472145 <= ext_cond_bx_m1(4); -- single_ext_9794008929098472145
    single_ext_9794008929098472146 <= ext_cond_bx_m2(4); -- single_ext_9794008929098472146
-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.
    muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
	port map(mu_bx_0, mu_bx_0,
	    ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
	    ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
	    ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);

-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI, DR and mass) - once for every calo ObjectType in certain Bx used in correlation conditions

-- Instantiations of pt, eta, phi, cos-phi and sin-phi for correlation conditions (used for DETA, DPHI, DR, mass, overlap_remover and b_tagging) - once for every ObjectType in certain Bx used in correlation conditions
    mu_data_bx_0_l: for i in 0 to NR_MU_OBJECTS-1 generate
	mu_pt_vector_bx_0(i)(MU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_PT_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.pt_high downto D_S_I_MU_V2.pt_low))), MU_PT_VECTOR_WIDTH);
	mu_eta_integer_bx_0(i) <= CONV_INTEGER(signed(mu_bx_0(i)(D_S_I_MU_V2.eta_high downto D_S_I_MU_V2.eta_low)));
	mu_phi_integer_bx_0(i) <= CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low));
	mu_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
	mu_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
    end generate mu_data_bx_0_l;
    jet_data_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
	jet_pt_vector_bx_0(i)(JET_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(JET_PT_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.et_high downto D_S_I_JET_V2.et_low))), JET_PT_VECTOR_WIDTH);
	jet_eta_integer_bx_0(i) <= CONV_INTEGER(signed(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
	jet_phi_integer_bx_0(i) <= CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low));
	jet_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
	jet_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
	conv_jet_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(jet_phi_conv_2_muon_phi_integer_bx_0(i));
	conv_jet_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(jet_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate jet_data_bx_0_l;
    tau_data_bx_0_l: for i in 0 to NR_TAU_OBJECTS-1 generate
	tau_pt_vector_bx_0(i)(TAU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(TAU_PT_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.et_high downto D_S_I_TAU_V2.et_low))), TAU_PT_VECTOR_WIDTH);
	tau_eta_integer_bx_0(i) <= CONV_INTEGER(signed(tau_bx_0(i)(D_S_I_TAU_V2.eta_high downto D_S_I_TAU_V2.eta_low)));
	tau_phi_integer_bx_0(i) <= CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low));
	tau_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low)));
	tau_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low)));
	conv_tau_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(tau_phi_conv_2_muon_phi_integer_bx_0(i));
	conv_tau_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(tau_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate tau_data_bx_0_l;
    eg_data_bx_0_l: for i in 0 to NR_EG_OBJECTS-1 generate
	eg_pt_vector_bx_0(i)(EG_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(EG_PT_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.et_high downto D_S_I_EG_V2.et_low))), EG_PT_VECTOR_WIDTH);
	eg_eta_integer_bx_0(i) <= CONV_INTEGER(signed(eg_bx_0(i)(D_S_I_EG_V2.eta_high downto D_S_I_EG_V2.eta_low)));
	eg_phi_integer_bx_0(i) <= CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low));
	eg_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
	eg_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
	conv_eg_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(eg_phi_conv_2_muon_phi_integer_bx_0(i));
	conv_eg_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(eg_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate eg_data_bx_0_l;

-- Instantiations of differences for correlation conditions (used for DETA, DPHI, DR, mass and b_tagging) - once for correlation conditions with two ObjectTypes in certain Bxs
    diff_jet_jet_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
	generic map(NR_JET_OBJECTS, NR_JET_OBJECTS)
	port map(jet_eta_integer_bx_0, jet_eta_integer_bx_0, diff_jet_jet_bx_0_bx_0_eta_integer);
    diff_jet_jet_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
	generic map(NR_JET_OBJECTS, NR_JET_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
	port map(jet_phi_integer_bx_0, jet_phi_integer_bx_0, diff_jet_jet_bx_0_bx_0_phi_integer);
    jet_jet_bx_0_bx_0_l1: for i in 0 to NR_JET_OBJECTS-1 generate
	jet_jet_bx_0_bx_0_l2: for j in 0 to NR_JET_OBJECTS-1 generate
	    diff_jet_jet_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_DIFF_ETA_LUT(diff_jet_jet_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
	    diff_jet_jet_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_DIFF_PHI_LUT(diff_jet_jet_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
	end generate jet_jet_bx_0_bx_0_l2;
    end generate jet_jet_bx_0_bx_0_l1;
    diff_mu_mu_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
	generic map(NR_MU_OBJECTS, NR_MU_OBJECTS)
	port map(mu_eta_integer_bx_0, mu_eta_integer_bx_0, diff_mu_mu_bx_0_bx_0_eta_integer);
    diff_mu_mu_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
	generic map(NR_MU_OBJECTS, NR_MU_OBJECTS, MUON_PHI_HALF_RANGE_BINS)
	port map(mu_phi_integer_bx_0, mu_phi_integer_bx_0, diff_mu_mu_bx_0_bx_0_phi_integer);
    mu_mu_bx_0_bx_0_l1: for i in 0 to NR_MU_OBJECTS-1 generate
	mu_mu_bx_0_bx_0_l2: for j in 0 to NR_MU_OBJECTS-1 generate
	    diff_mu_mu_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_DIFF_ETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
	    diff_mu_mu_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_DIFF_PHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
	end generate mu_mu_bx_0_bx_0_l2;
    end generate mu_mu_bx_0_bx_0_l1;
    diff_eg_jet_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
	generic map(NR_EG_OBJECTS, NR_JET_OBJECTS)
	port map(eg_eta_integer_bx_0, jet_eta_integer_bx_0, diff_eg_jet_bx_0_bx_0_eta_integer);
    diff_eg_jet_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
	generic map(NR_EG_OBJECTS, NR_JET_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
	port map(eg_phi_integer_bx_0, jet_phi_integer_bx_0, diff_eg_jet_bx_0_bx_0_phi_integer);
    eg_jet_bx_0_bx_0_l1: for i in 0 to NR_EG_OBJECTS-1 generate
	eg_jet_bx_0_bx_0_l2: for j in 0 to NR_JET_OBJECTS-1 generate
	    diff_eg_jet_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_DIFF_ETA_LUT(diff_eg_jet_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
	    diff_eg_jet_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_DIFF_PHI_LUT(diff_eg_jet_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
	end generate eg_jet_bx_0_bx_0_l2;
    end generate eg_jet_bx_0_bx_0_l1;

-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for mass and overlap_remover) - once for correlation conditions with two ObjectTypes in certain Bxs
    jet_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
	jet_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
	    jet_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COSH_DETA_LUT(diff_jet_jet_bx_0_bx_0_eta_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
	    jet_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COS_DPHI_LUT(diff_jet_jet_bx_0_bx_0_phi_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
	end generate jet_jet_bx_0_bx_0_cosh_cos_l2;
    end generate jet_jet_bx_0_bx_0_cosh_cos_l1;
    mu_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
	mu_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
	    mu_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
	    mu_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
	end generate mu_mu_bx_0_bx_0_cosh_cos_l2;
    end generate mu_mu_bx_0_bx_0_cosh_cos_l1;
    eg_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
	eg_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
	    eg_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_COSH_DETA_LUT(diff_eg_jet_bx_0_bx_0_eta_integer(i,j)), EG_JET_COSH_COS_VECTOR_WIDTH);
	    eg_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_COS_DPHI_LUT(diff_eg_jet_bx_0_bx_0_phi_integer(i,j)), EG_JET_COSH_COS_VECTOR_WIDTH);
	end generate eg_jet_bx_0_bx_0_cosh_cos_l2;
    end generate eg_jet_bx_0_bx_0_cosh_cos_l1;

-- Instantiations of conditions
double_eg_13783532606430824098_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, EG_TYPE,
        (X"0030", X"0014", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	double_eg_13783532606430824098);


double_eg_14367260113818400607_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, EG_TYPE,
        (X"0014", X"0014", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	double_eg_14367260113818400607);


double_eg_14367290900143979231_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, EG_TYPE,
        (X"0022", X"0022", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	double_eg_14367290900143979231);


double_eg_14367295298190490335_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, EG_TYPE,
        (X"0024", X"0022", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	double_eg_14367295298190490335);


double_eg_14367831859864844127_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, EG_TYPE,
        (X"002C", X"0014", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	double_eg_14367831859864844127);


double_eg_14367840655957867231_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, EG_TYPE,
        (X"0030", X"0022", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	double_eg_14367840655957867231);


double_eg_8902241742241126126_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, EG_TYPE,
        (X"000C", X"000C", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	double_eg_8902241742241126126);


double_jet_10840719965249128790_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"003B", X"003B", X"0000", X"0000"), (X"00C4", X"00C4", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	double_jet_10840719965249128790);


double_jet_15903572090988376162_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"00E0", X"00E0", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	double_jet_15903572090988376162);


double_jet_16307690244847013269_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"00C8", X"003C", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	double_jet_16307690244847013269);


double_jet_16350512121229658012_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"0078", X"0078", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	double_jet_16350512121229658012);


double_jet_17504692923644168291_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"00BA", X"00BA", X"0000", X"0000"), (X"008D", X"008D", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	double_jet_17504692923644168291);


double_jet_3730266969229109735_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	double_jet_3730266969229109735);


double_jet_3805139313034161255_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"005A", X"005A", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	double_jet_3805139313034161255);


double_jet_3851467703317088356_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"0072", X"00BA", X"0000", X"0000"), (X"0045", X"008D", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	double_jet_3851467703317088356);


double_jet_3851467703875127396_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"0072", X"0072", X"0000", X"0000"), (X"0045", X"0045", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	double_jet_3851467703875127396);


double_jet_4162612533456677351_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"00B4", X"003C", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	double_jet_4162612533456677351);


double_jet_7821119012726214247_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"003B", X"00BA", X"0000", X"0000"), (X"00C4", X"008D", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	double_jet_7821119012726214247);


double_jet_7821119013284253287_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"003B", X"0072", X"0000", X"0000"), (X"00C4", X"0045", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	double_jet_7821119013284253287);


double_jet_8659301241633819347_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"0078", X"0078", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	double_jet_8659301241633819347);


double_jet_8659374977632357075_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"0098", X"0080", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	double_jet_8659374977632357075);


double_jet_8659513516097456851_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"00B8", X"0080", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	double_jet_8659513516097456851);


double_jet_8659515749480450771_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"00B8", X"0098", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	double_jet_8659515749480450771);


double_tau_15233202657361500387_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, TAU_TYPE,
        (X"0064", X"0064", X"0000", X"0000"),
        (false, false, true, true),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, tau_bx_0,
	double_tau_15233202657361500387);


double_tau_5584966257611717374_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, TAU_TYPE,
        (X"0044", X"0044", X"0000", X"0000"),
        (false, false, true, true),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"E", X"F", X"F"),
	false
    )
    port map(lhc_clk, tau_bx_0,
	double_tau_5584966257611717374);


quad_jet_17630949366336433287_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	4, true, JET_TYPE,
        (X"008C", X"006E", X"0050", X"0046"),
        (false, false, false, false),
        (X"0039", X"0039", X"0039", X"0039"), (X"00C6", X"00C6", X"00C6", X"00C6"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	quad_jet_17630949366336433287);


single_eg_1139634_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, EG_TYPE,
        (X"0004", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	single_eg_1139634);


single_eg_14262501742930627507_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, EG_TYPE,
        (X"0036", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	single_eg_14262501742930627507);


single_eg_9244738805910375678_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, EG_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	single_eg_9244738805910375678);


single_eg_9244741004933631230_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, EG_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	single_eg_9244741004933631230);


single_eg_9244743203956886782_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, EG_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	single_eg_9244743203956886782);


single_jet_20010309810_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"0018", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	single_jet_20010309810);


single_jet_20010310448_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"0078", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	single_jet_20010310448);


single_jet_20010310832_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"00B4", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	single_jet_20010310832);


single_jet_2561319656240_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"0140", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	single_jet_2561319656240);


single_jet_5967545309707548871_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	single_jet_5967545309707548871);


single_jet_5967545310244419783_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	single_jet_5967545310244419783);


single_jet_5967545344469940423_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"0056", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	single_jet_5967545344469940423);


single_jet_5967545344872593607_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"005C", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	single_jet_5967545344872593607);


single_jet_5974144913806802428_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"0080", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	single_jet_5974144913806802428);


single_jet_5974216382062607868_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"0098", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	single_jet_5974216382062607868);


single_jet_5974354920527707644_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"00B8", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	single_jet_5974354920527707644);


single_tau_12210388642533153582_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, TAU_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, tau_bx_0,
	single_tau_12210388642533153582);


single_tau_3484211327656040900_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, TAU_TYPE,
        (X"00C8", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, tau_bx_0,
	single_tau_3484211327656040900);


triple_jet_10368473969177751178_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	3, true, JET_TYPE,
        (X"0034", X"0034", X"0034", X"0000"),
        (true, false, false, true),
        (X"0000", X"0044", X"0044", X"0000"), (X"0000", X"00BB", X"00BB", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	triple_jet_10368473969177751178);


triple_jet_1776207310752122438_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	3, true, JET_TYPE,
        (X"003C", X"003C", X"003C", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	triple_jet_1776207310752122438);


triple_jet_7932644363018286197_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	3, true, JET_TYPE,
        (X"00B8", X"0098", X"0080", X"0000"),
        (false, false, false, true),
        (X"0044", X"0044", X"0044", X"0000"), (X"00BB", X"00BB", X"00BB", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	triple_jet_7932644363018286197);


double_mu_14585777620730815295_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	2, true,
        (X"0001", X"0001", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	double_mu_14585777620730815295);


double_mu_14585786515326686015_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	2, true,
        (X"0007", X"0007", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"F000", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	double_mu_14585786515326686015);


double_mu_16961157256621881348_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	2, true,
        (X"0019", X"000B", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	double_mu_16961157256621881348);


single_mu_1272496_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	1, true,
        (X"0001", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	single_mu_1272496);


single_mu_14769293018627052229_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	1, true,
        (X"0001", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FFF0", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	single_mu_14769293018627052229);


single_mu_14769293122775847365_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	1, true,
        (X"000D", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	single_mu_14769293122775847365);


single_mu_14769293157135585733_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	1, true,
        (X"0011", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	single_mu_14769293157135585733);


single_mu_17494117756195063635_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	1, true,
        (X"002D", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	single_mu_17494117756195063635);


single_mu_17545683025133343173_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	1, true,
        (X"0015", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	single_mu_17545683025133343173);


single_mu_17545683111032689093_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	1, true,
        (X"001F", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	single_mu_17545683111032689093);


single_mu_17545683128212558277_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	1, true,
        (X"0021", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	single_mu_17545683128212558277);


single_mu_17545683162572296645_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	1, true,
        (X"0025", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	single_mu_17545683162572296645);


triple_mu_3324685188977871903_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	3, true,
        (X"000B", X"0007", X"0001", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FF00", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	triple_mu_3324685188977871903);


triple_mu_3324694397387754527_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	3, true,
        (X"0009", X"0009", X"0009", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FF00", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	triple_mu_3324694397387754527);


single_etm_18699475504_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475504);


single_etm_18699475637_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"006E",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475637);


single_etm_18699475760_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0078",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475760);


single_etm_18699475765_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0082",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475765);


single_etm_18699475888_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"008C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475888);


single_etm_18699476016_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00A0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699476016);


single_etm_18699476021_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00AA",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699476021);


single_etm_18699476144_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00B4",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699476144);


single_etm_18699476149_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00BE",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699476149);


single_etm_2393532815408_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_2393532815408);


single_etmhf_306372248967728_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248967728);


single_etmhf_306372248967856_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"0064",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248967856);


single_etmhf_306372248967984_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"0078",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248967984);


single_etmhf_306372248968112_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"008C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248968112);


single_etmhf_306372248968117_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"0096",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248968117);


single_etmhf_306372248968240_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00A0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248968240);


single_etmhf_306372248968245_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00AA",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248968245);


single_etmhf_306372248968368_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00B4",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248968368);


single_etmhf_306372248968373_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00BE",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248968373);


single_etmhf_39215647867820080_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_39215647867820080);


single_etmhf_39215647867820085_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00D2",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_39215647867820085);


single_etmhf_39215647867820208_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00DC",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_39215647867820208);


single_etmhf_39215647867820213_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00E6",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_39215647867820213);


single_etmhf_39215647867820336_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_39215647867820336);


single_ett_18699590325_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"006E",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590325);


single_ett_18699590576_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"008C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590576);


single_ett_18699590581_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0096",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590581);


single_htt_2496626710576_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626710576);


single_htt_2496626711216_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"012C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626711216);


single_htt_2496626726960_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0190",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626726960);


single_htt_2496626727216_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01B8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727216);


single_htt_2496626727472_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01E0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727472);


single_htt_2496626727600_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01F4",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727600);


single_htt_2496626727605_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01FE",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727605);


single_htt_2496626727856_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"021C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727856);


single_htt_2496626727984_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0230",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727984);


single_htt_2496626743344_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0258",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626743344);


single_htt_2496626743856_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"02A8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626743856);


calo_calo_correlation_12099677872530783800_i: entity work.calo_calo_correlation_condition_v2
    generic map(
        true,
        false, false, true, false, 0, false, 
        0, 11, true, EG_TYPE,
        X"0034",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"E",
        0, 11, true, JET_TYPE,
        X"0044",
        false, X"0044", X"00BB",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0.0, 0.0,
        0.0, 0.0,
        139.24, 0.09, DETA_DPHI_VECTOR_WIDTH_ALL, EG_JET_DETA_DPHI_PRECISION,
        0.0, 0.0, EG_JET_MASS_PRECISION,
        EG_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, EG_JET_COSH_COS_PRECISION, EG_JET_COSH_COS_VECTOR_WIDTH,
        0.0, CALO_SIN_COS_VECTOR_WIDTH, EG_JET_PT_PRECISION, EG_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, eg_bx_0, jet_bx_0,
        diff_eg_jet_bx_0_bx_0_eta_vector, diff_eg_jet_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, jet_pt_vector_bx_0,
        eg_jet_bx_0_bx_0_cosh_deta_vector, eg_jet_bx_0_bx_0_cos_dphi_vector,
        eg_cos_phi_bx_0, jet_cos_phi_bx_0, eg_sin_phi_bx_0, jet_sin_phi_bx_0,
        calo_calo_correlation_12099677872530783800);

invariant_mass_14462129420734703062_i: entity work.calo_calo_correlation_condition_v2
    generic map(
        true,
        false, false, false, true, 0, false, 
        0, 11, true, JET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0.0, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_JET_DETA_DPHI_PRECISION,
        98000000.0, 80000.0, JET_JET_MASS_PRECISION,
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH,
        0.0, CALO_SIN_COS_VECTOR_WIDTH, JET_JET_PT_PRECISION, JET_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, jet_bx_0,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, jet_cos_phi_bx_0, jet_sin_phi_bx_0, jet_sin_phi_bx_0,
        invariant_mass_14462129420734703062);

invariant_mass_14462129420738930134_i: entity work.calo_calo_correlation_condition_v2
    generic map(
        true,
        false, false, false, true, 0, false, 
        0, 11, true, JET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0.0, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_JET_DETA_DPHI_PRECISION,
        98000000.0, 192200.0, JET_JET_MASS_PRECISION,
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH,
        0.0, CALO_SIN_COS_VECTOR_WIDTH, JET_JET_PT_PRECISION, JET_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, jet_bx_0,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, jet_cos_phi_bx_0, jet_sin_phi_bx_0, jet_sin_phi_bx_0,
        invariant_mass_14462129420738930134);

invariant_mass_14024937077327807660_i: entity work.muon_muon_correlation_condition_v2
    generic map(
        true,
        false, false, false, true, 0, false, 
        0, 7, true,
        X"000B",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        true,
        X"0007",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        "os",
        0.0, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MU_MU_DETA_DPHI_PRECISION,
        144.5, 0.0, MU_MU_MASS_PRECISION,
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        0.0, MUON_SIN_COS_VECTOR_WIDTH, MU_MU_PT_PRECISION, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        invariant_mass_14024937077327807660);

muon_muon_correlation_12923126501326425857_i: entity work.muon_muon_correlation_condition_v2
    generic map(
        true,
        false, false, true, false, 0, false, 
        0, 7, true,
        X"000A",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        true,
        X"000A",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        "os",
        0.0, 0.0,
        0.0, 0.0,
        1.441, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MU_MU_DETA_DPHI_PRECISION,
        0.0, 0.0, MU_MU_MASS_PRECISION,
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        0.0, MUON_SIN_COS_VECTOR_WIDTH, MU_MU_PT_PRECISION, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        muon_muon_correlation_12923126501326425857);

single_mbt0_hfm_43640316738250417_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"1")
    port map(lhc_clk, mbt0hfm_bx_0, single_mbt0_hfm_43640316738250417);


single_mbt0_hfp_43640316738250801_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"1")
    port map(lhc_clk, mbt0hfp_bx_0, single_mbt0_hfp_43640316738250801);



-- Instantiations of algorithms

-- 0 L1_SingleMuCosmics : MU0
l1_single_mu_cosmics <= single_mu_1272496;
algo(144) <= l1_single_mu_cosmics;

-- 1 L1_SingleMuOpen : MU0[MU-QLTY_OPEN]
l1_single_mu_open <= single_mu_14769293018627052229;
algo(135) <= l1_single_mu_open;

-- 7 L1_SingleMu16 : MU16[MU-QLTY_SNGL]
l1_single_mu16 <= single_mu_17545683128212558277;
algo(143) <= l1_single_mu16;

-- 8 L1_SingleMu18 : MU18[MU-QLTY_SNGL]
l1_single_mu18 <= single_mu_17545683162572296645;
algo(22) <= l1_single_mu18;

-- 20 L1_DoubleMu0 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_double_mu0 <= double_mu_14585777620730815295;
algo(89) <= l1_double_mu0;

-- 22 L1_DoubleMu_12_5 : comb{MU12[MU-QLTY_DBLE],MU5[MU-QLTY_DBLE]}
l1_double_mu_12_5 <= double_mu_16961157256621881348;
algo(117) <= l1_double_mu_12_5;

-- 29 L1_TripleMu_4_4_4 : comb{MU4[MU-QLTY_DBLE],MU4[MU-QLTY_DBLE],MU4[MU-QLTY_DBLE]}
l1_triple_mu_4_4_4 <= triple_mu_3324694397387754527;
algo(116) <= l1_triple_mu_4_4_4;

-- 81 L1_DoubleEG_18_17 : comb{EG18,EG17}
l1_double_eg_18_17 <= double_eg_14367295298190490335;
algo(109) <= l1_double_eg_18_17;

-- 83 L1_DoubleEG_22_10 : comb{EG22,EG10}
l1_double_eg_22_10 <= double_eg_14367831859864844127;
algo(110) <= l1_double_eg_22_10;

-- 87 L1_DoubleEG_24_17 : comb{EG24,EG17}
l1_double_eg_24_17 <= double_eg_14367840655957867231;
algo(111) <= l1_double_eg_24_17;

-- 102 L1_SingleTau100er2p1 : TAU100[TAU-ETA_2p13]
l1_single_tau100er2p1 <= single_tau_3484211327656040900;
algo(142) <= l1_single_tau100er2p1;

-- 104 L1_DoubleTau50er2p1 : comb{TAU50[TAU-ETA_2p13],TAU50[TAU-ETA_2p13]}
l1_double_tau50er2p1 <= double_tau_15233202657361500387;
algo(115) <= l1_double_tau50er2p1;

-- 110 L1_DoubleIsoTau34er2p1 : comb{TAU34[TAU-ISO_0xE,TAU-ETA_2p13],TAU34[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_double_iso_tau34er2p1 <= double_tau_5584966257611717374;
algo(113) <= l1_double_iso_tau34er2p1;

-- 123 L1_SingleJet60 : JET60
l1_single_jet60 <= single_jet_20010310448;
algo(9) <= l1_single_jet60;

-- 124 L1_SingleJet90 : JET90
l1_single_jet90 <= single_jet_20010310832;
algo(11) <= l1_single_jet90;

-- 128 L1_SingleJet160 : JET160
l1_single_jet160 <= single_jet_2561319656240;
algo(141) <= l1_single_jet160;

-- 142 L1_DoubleJet60er3p0 : comb{JET60[JET-ETA_CEN],JET60[JET-ETA_CEN]}
l1_double_jet60er3p0 <= double_jet_8659301241633819347;
algo(87) <= l1_double_jet60er3p0;

-- 145 L1_DoubleJet112er3p0 : comb{JET112[JET-ETA_CEN],JET112[JET-ETA_CEN]}
l1_double_jet112er3p0 <= double_jet_15903572090988376162;
algo(114) <= l1_double_jet112er3p0;

-- 149 L1_TripleJet_92_76_64_VBF : comb{JET92[JET-ETA_CEN],JET76[JET-ETA_CEN],JET64[JET-ETA_CEN]} OR (comb{JET92[JET-ETA_CEN],JET76[JET-ETA_CEN]} AND JET64[JET-ETA_FWD_NEG,JET-ETA_FWD_POS]) OR (comb{JET92[JET-ETA_CEN],JET64[JET-ETA_CEN]} AND JET76[JET-ETA_FWD_NEG,JET-ETA_FWD_POS]) OR (comb{JET76[JET-ETA_CEN],JET64[JET-ETA_CEN]} AND JET92[JET-ETA_FWD_NEG,JET-ETA_FWD_POS])
l1_triple_jet_92_76_64_vbf <= triple_jet_7932644363018286197 or ( double_jet_8659515749480450771 and single_jet_5974144913806802428 ) or ( double_jet_8659513516097456851 and single_jet_5974216382062607868 ) or ( double_jet_8659374977632357075 and single_jet_5974354920527707644 );
algo(108) <= l1_triple_jet_92_76_64_vbf;

-- 162 L1_HTT200er : HTT200
l1_htt200er <= single_htt_2496626726960;
algo(38) <= l1_htt200er;

-- 163 L1_HTT220er : HTT220
l1_htt220er <= single_htt_2496626727216;
algo(40) <= l1_htt220er;

-- 164 L1_HTT240er : HTT240
l1_htt240er <= single_htt_2496626727472;
algo(43) <= l1_htt240er;

-- 165 L1_HTT255er : HTT255
l1_htt255er <= single_htt_2496626727605;
algo(49) <= l1_htt255er;

-- 166 L1_HTT270er : HTT270
l1_htt270er <= single_htt_2496626727856;
algo(96) <= l1_htt270er;

-- 167 L1_HTT280er : HTT280
l1_htt280er <= single_htt_2496626727984;
algo(41) <= l1_htt280er;

-- 168 L1_HTT300er : HTT300
l1_htt300er <= single_htt_2496626743344;
algo(5) <= l1_htt300er;

-- 170 L1_HTT340er : HTT340
l1_htt340er <= single_htt_2496626743856;
algo(145) <= l1_htt340er;

-- 181 L1_ETM40 : ETM40
l1_etm40 <= single_etm_18699475504;
algo(42) <= l1_etm40;

-- 183 L1_ETM60 : ETM60
l1_etm60 <= single_etm_18699475760;
algo(48) <= l1_etm60;

-- 184 L1_ETM70 : ETM70
l1_etm70 <= single_etm_18699475888;
algo(52) <= l1_etm70;

-- 186 L1_ETM80 : ETM80
l1_etm80 <= single_etm_18699476016;
algo(4) <= l1_etm80;

-- 187 L1_ETM85 : ETM85
l1_etm85 <= single_etm_18699476021;
algo(8) <= l1_etm85;

-- 188 L1_ETM90 : ETM90
l1_etm90 <= single_etm_18699476144;
algo(13) <= l1_etm90;

-- 189 L1_ETM95 : ETM95
l1_etm95 <= single_etm_18699476149;
algo(103) <= l1_etm95;

-- 190 L1_ETM100 : ETM100
l1_etm100 <= single_etm_2393532815408;
algo(21) <= l1_etm100;

-- 200 L1_ETMHF70 : ETMHF70
l1_etmhf70 <= single_etmhf_306372248968112;
algo(32) <= l1_etmhf70;

-- 201 L1_ETMHF80 : ETMHF80
l1_etmhf80 <= single_etmhf_306372248968240;
algo(15) <= l1_etmhf80;

-- 202 L1_ETMHF90 : ETMHF90
l1_etmhf90 <= single_etmhf_306372248968368;
algo(3) <= l1_etmhf90;

-- 203 L1_ETMHF100 : ETMHF100
l1_etmhf100 <= single_etmhf_39215647867820080;
algo(20) <= l1_etmhf100;

-- 204 L1_ETMHF110 : ETMHF110
l1_etmhf110 <= single_etmhf_39215647867820208;
algo(27) <= l1_etmhf110;

-- 205 L1_ETMHF120 : ETMHF120
l1_etmhf120 <= single_etmhf_39215647867820336;
algo(12) <= l1_etmhf120;

-- 240 L1_SingleMuOpen_NotBptxOR : MU0[MU-QLTY_OPEN] AND ( NOT EXT_BPTX_OR_VME)
l1_single_mu_open_not_bptx_or <= single_mu_14769293018627052229 and ( not single_ext_6102799243448260461 );
algo(137) <= l1_single_mu_open_not_bptx_or;

-- 241 L1_SingleMuOpen_NotBptxOR_3BX : MU0[MU-QLTY_OPEN] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_mu_open_not_bptx_or_3_bx <= single_mu_14769293018627052229 and ( not single_ext_6909925150529645533 ) and ( not single_ext_6102799243448260461 ) and ( not single_ext_6909925150529645277 );
algo(132) <= l1_single_mu_open_not_bptx_or_3_bx;

-- 242 L1_SingleJet20er3p0_NotBptxOR : JET20[JET-ETA_CEN] AND ( NOT EXT_BPTX_OR_VME)
l1_single_jet20er3p0_not_bptx_or <= single_jet_5967545309707548871 and ( not single_ext_6102799243448260461 );
algo(138) <= l1_single_jet20er3p0_not_bptx_or;

-- 243 L1_SingleJet20er3p0_NotBptxOR_3BX : JET20[JET-ETA_CEN] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_jet20er3p0_not_bptx_or_3_bx <= single_jet_5967545309707548871 and ( not single_ext_6909925150529645533 ) and ( not single_ext_6102799243448260461 ) and ( not single_ext_6909925150529645277 );
algo(125) <= l1_single_jet20er3p0_not_bptx_or_3_bx;

-- 244 L1_SingleJet43er3p0_NotBptxOR_3BX : JET43[JET-ETA_CEN] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_jet43er3p0_not_bptx_or_3_bx <= single_jet_5967545344469940423 and ( not single_ext_6909925150529645533 ) and ( not single_ext_6102799243448260461 ) and ( not single_ext_6909925150529645277 );
algo(140) <= l1_single_jet43er3p0_not_bptx_or_3_bx;

-- 245 L1_SingleJet46er3p0_NotBptxOR_3BX : JET46[JET-ETA_CEN] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_jet46er3p0_not_bptx_or_3_bx <= single_jet_5967545344872593607 and ( not single_ext_6909925150529645533 ) and ( not single_ext_6102799243448260461 ) and ( not single_ext_6909925150529645277 );
algo(127) <= l1_single_jet46er3p0_not_bptx_or_3_bx;

-- 251 L1_IsoEG26er2p1_Jet34er3p0_dR_Min0p3 : dist{EG26[EG-ETA_2p13,EG-ISO_0xE],JET34[JET-ETA_CEN]}[DR_MIN_0p3]
l1_iso_eg26er2p1_jet34er3p0_d_r_min0p3 <= calo_calo_correlation_12099677872530783800;
algo(104) <= l1_iso_eg26er2p1_jet34er3p0_d_r_min0p3;

-- 254 L1_IsoEG24er2p1_HTT100er : EG24[EG-ETA_2p13,EG-ISO_0xE] AND HTT100
l1_iso_eg24er2p1_htt100er <= single_eg_9244738805910375678 and single_htt_2496626710576;
algo(30) <= l1_iso_eg24er2p1_htt100er;

-- 255 L1_IsoEG26er2p1_HTT100er : EG26[EG-ETA_2p13,EG-ISO_0xE] AND HTT100
l1_iso_eg26er2p1_htt100er <= single_eg_9244741004933631230 and single_htt_2496626710576;
algo(35) <= l1_iso_eg26er2p1_htt100er;

-- 256 L1_IsoEG28er2p1_HTT100er : EG28[EG-ETA_2p13,EG-ISO_0xE] AND HTT100
l1_iso_eg28er2p1_htt100er <= single_eg_9244743203956886782 and single_htt_2496626710576;
algo(39) <= l1_iso_eg28er2p1_htt100er;

-- 257 L1_IsoEG24er2p1_TripleJet_26er3p0_26_26er3p0 : EG24[EG-ETA_2p13,EG-ISO_0xE] AND comb{JET26,JET26[JET-ETA_CEN],JET26[JET-ETA_CEN]}
l1_iso_eg24er2p1_triple_jet_26er3p0_26_26er3p0 <= single_eg_9244738805910375678 and triple_jet_10368473969177751178;
algo(93) <= l1_iso_eg24er2p1_triple_jet_26er3p0_26_26er3p0;

-- 258 L1_Mu18_HTT100er : MU18[MU-QLTY_SNGL] AND HTT100
l1_mu18_htt100er <= single_mu_17545683162572296645 and single_htt_2496626710576;
algo(84) <= l1_mu18_htt100er;

-- 259 L1_Mu18_Jet24er3p0 : MU18[MU-QLTY_SNGL] AND JET24[JET-ETA_CEN]
l1_mu18_jet24er3p0 <= single_mu_17545683162572296645 and single_jet_5967545310244419783;
algo(86) <= l1_mu18_jet24er3p0;

-- 268 L1_HTT250er_QuadJet_70_55_40_35_er2p5 : HTT250 AND comb{JET70[JET-ETA_RESTR],JET55[JET-ETA_RESTR],JET40[JET-ETA_RESTR],JET35[JET-ETA_RESTR]}
l1_htt250er_quad_jet_70_55_40_35_er2p5 <= single_htt_2496626727600 and quad_jet_17630949366336433287;
algo(1) <= l1_htt250er_quad_jet_70_55_40_35_er2p5;

-- 269 L1_HTT280er_QuadJet_70_55_40_35_er2p5 : HTT280 AND comb{JET70[JET-ETA_RESTR],JET55[JET-ETA_RESTR],JET40[JET-ETA_RESTR],JET35[JET-ETA_RESTR]}
l1_htt280er_quad_jet_70_55_40_35_er2p5 <= single_htt_2496626727984 and quad_jet_17630949366336433287;
algo(98) <= l1_htt280er_quad_jet_70_55_40_35_er2p5;

-- 270 L1_HTT300er_QuadJet_70_55_40_35_er2p5 : HTT300 AND comb{JET70[JET-ETA_RESTR],JET55[JET-ETA_RESTR],JET40[JET-ETA_RESTR],JET35[JET-ETA_RESTR]}
l1_htt300er_quad_jet_70_55_40_35_er2p5 <= single_htt_2496626743344 and quad_jet_17630949366336433287;
algo(6) <= l1_htt300er_quad_jet_70_55_40_35_er2p5;

-- 278 L1_IsoTau40er_ETM80 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM80
l1_iso_tau40er_etm80 <= single_tau_12210388642533153582 and single_etm_18699476016;
algo(44) <= l1_iso_tau40er_etm80;

-- 279 L1_IsoTau40er_ETM85 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM85
l1_iso_tau40er_etm85 <= single_tau_12210388642533153582 and single_etm_18699476021;
algo(7) <= l1_iso_tau40er_etm85;

-- 280 L1_IsoTau40er_ETM90 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM90
l1_iso_tau40er_etm90 <= single_tau_12210388642533153582 and single_etm_18699476144;
algo(83) <= l1_iso_tau40er_etm90;

-- 281 L1_IsoTau40er_ETM95 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM95
l1_iso_tau40er_etm95 <= single_tau_12210388642533153582 and single_etm_18699476149;
algo(50) <= l1_iso_tau40er_etm95;

-- 282 L1_IsoTau40er_ETM100 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM100
l1_iso_tau40er_etm100 <= single_tau_12210388642533153582 and single_etm_2393532815408;
algo(68) <= l1_iso_tau40er_etm100;

-- 283 L1_IsoTau40er_ETMHF80 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF80
l1_iso_tau40er_etmhf80 <= single_tau_12210388642533153582 and single_etmhf_306372248968240;
algo(53) <= l1_iso_tau40er_etmhf80;

-- 284 L1_IsoTau40er_ETMHF90 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF90
l1_iso_tau40er_etmhf90 <= single_tau_12210388642533153582 and single_etmhf_306372248968368;
algo(56) <= l1_iso_tau40er_etmhf90;

-- 285 L1_Mu22er2p1_IsoTau40er2p1 : MU22[MU-ETA_2p10,MU-QLTY_SNGL] AND TAU40[TAU-ETA_2p13,TAU-ISO_0xE]
l1_mu22er2p1_iso_tau40er2p1 <= single_mu_17494117756195063635 and single_tau_12210388642533153582;
algo(2) <= l1_mu22er2p1_iso_tau40er2p1;

-- 291 L1_DoubleJet60er3p0_ETM70 : comb{JET60[JET-ETA_3p00],JET60[JET-ETA_3p00]} AND ETM70
l1_double_jet60er3p0_etm70 <= double_jet_16350512121229658012 and single_etm_18699475888;
algo(78) <= l1_double_jet60er3p0_etm70;

-- 292 L1_DoubleJet60er3p0_ETM80 : comb{JET60[JET-ETA_3p00],JET60[JET-ETA_3p00]} AND ETM80
l1_double_jet60er3p0_etm80 <= double_jet_16350512121229658012 and single_etm_18699476016;
algo(80) <= l1_double_jet60er3p0_etm80;

-- 293 L1_DoubleJet60er3p0_ETM90 : comb{JET60[JET-ETA_3p00],JET60[JET-ETA_3p00]} AND ETM90
l1_double_jet60er3p0_etm90 <= double_jet_16350512121229658012 and single_etm_18699476144;
algo(82) <= l1_double_jet60er3p0_etm90;

-- 294 L1_DoubleJet60er3p0_ETM100 : comb{JET60[JET-ETA_3p00],JET60[JET-ETA_3p00]} AND ETM100
l1_double_jet60er3p0_etm100 <= double_jet_16350512121229658012 and single_etm_2393532815408;
algo(75) <= l1_double_jet60er3p0_etm100;

-- 296 L1_DoubleEG_Iso24_10 : comb{EG24[EG-ISO_0xE],EG10}
l1_double_eg_iso24_10 <= double_eg_13783532606430824098;
algo(112) <= l1_double_eg_iso24_10;

-- 298 L1_DoubleJet_90_30_DoubleJet30_Mass_Min620 : comb{JET90,JET30} AND mass{JET30,JET30}[MASS_MIN_620]
l1_double_jet_90_30_double_jet30_mass_min620 <= double_jet_4162612533456677351 and invariant_mass_14462129420738930134;
algo(106) <= l1_double_jet_90_30_double_jet30_mass_min620;

-- 299 L1_DoubleJet_100_30_DoubleJet30_Mass_Min620 : comb{JET100,JET30} AND mass{JET30,JET30}[MASS_MIN_620]
l1_double_jet_100_30_double_jet30_mass_min620 <= double_jet_16307690244847013269 and invariant_mass_14462129420738930134;
algo(105) <= l1_double_jet_100_30_double_jet30_mass_min620;

-- 301 L1_DoubleJet30_Mass_Min400_Mu6 : MU6[MU-QLTY_SNGL] AND mass{JET30,JET30}[MASS_MIN_400]
l1_double_jet30_mass_min400_mu6 <= single_mu_14769293122775847365 and invariant_mass_14462129420734703062;
algo(66) <= l1_double_jet30_mass_min400_mu6;

-- 302 L1_DoubleJet30_Mass_Min400_Mu10 : MU10[MU-QLTY_SNGL] AND mass{JET30,JET30}[MASS_MIN_400]
l1_double_jet30_mass_min400_mu10 <= single_mu_17545683025133343173 and invariant_mass_14462129420734703062;
algo(64) <= l1_double_jet30_mass_min400_mu10;

-- 315 L1_Mu6_HTT240er : MU6[MU-QLTY_SNGL] AND HTT240
l1_mu6_htt240er <= single_mu_14769293122775847365 and single_htt_2496626727472;
algo(31) <= l1_mu6_htt240er;

-- 316 L1_Mu6_HTT250er : MU6[MU-QLTY_SNGL] AND HTT250
l1_mu6_htt250er <= single_mu_14769293122775847365 and single_htt_2496626727600;
algo(33) <= l1_mu6_htt250er;

-- 317 L1_Mu15_HTT100er : MU15[MU-QLTY_SNGL] AND HTT100
l1_mu15_htt100er <= single_mu_17545683111032689093 and single_htt_2496626710576;
algo(81) <= l1_mu15_htt100er;

-- 318 L1_DoubleMu0_ETMHF40_Jet60_OR_DoubleJet30 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETMHF40 AND (comb{JET30,JET30} OR JET60)
l1_double_mu0_etmhf40_jet60_or_double_jet30 <= double_mu_14585777620730815295 and single_etmhf_306372248967728 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(102) <= l1_double_mu0_etmhf40_jet60_or_double_jet30;

-- 319 L1_DoubleMu0_ETMHF50_Jet60_OR_DoubleJet30 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETMHF50 AND (comb{JET30,JET30} OR JET60)
l1_double_mu0_etmhf50_jet60_or_double_jet30 <= double_mu_14585777620730815295 and single_etmhf_306372248967856 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(57) <= l1_double_mu0_etmhf50_jet60_or_double_jet30;

-- 320 L1_DoubleMu0_ETMHF60_Jet60_OR_DoubleJet30 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETMHF60 AND (comb{JET30,JET30} OR JET60)
l1_double_mu0_etmhf60_jet60_or_double_jet30 <= double_mu_14585777620730815295 and single_etmhf_306372248967984 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(59) <= l1_double_mu0_etmhf60_jet60_or_double_jet30;

-- 321 L1_DoubleMu0_ETMHF70_Jet60_OR_DoubleJet30 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETMHF70 AND (comb{JET30,JET30} OR JET60)
l1_double_mu0_etmhf70_jet60_or_double_jet30 <= double_mu_14585777620730815295 and single_etmhf_306372248968112 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(61) <= l1_double_mu0_etmhf70_jet60_or_double_jet30;

-- 322 L1_DoubleMu0_ETMHF80_Jet60_OR_DoubleJet30 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETMHF80 AND (comb{JET30,JET30} OR JET60)
l1_double_mu0_etmhf80_jet60_or_double_jet30 <= double_mu_14585777620730815295 and single_etmhf_306372248968240 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(63) <= l1_double_mu0_etmhf80_jet60_or_double_jet30;

-- 323 L1_DoubleMu3_SQ_ETMHF40_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF40 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf40_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248967728 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(65) <= l1_double_mu3_sq_etmhf40_jet60_or_double_jet30;

-- 324 L1_DoubleMu3_SQ_ETMHF50_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF50 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf50_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248967856 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(67) <= l1_double_mu3_sq_etmhf50_jet60_or_double_jet30;

-- 325 L1_DoubleMu3_SQ_ETMHF60_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF60 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf60_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248967984 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(69) <= l1_double_mu3_sq_etmhf60_jet60_or_double_jet30;

-- 326 L1_DoubleMu3_SQ_ETMHF70_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF70 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf70_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248968112 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(71) <= l1_double_mu3_sq_etmhf70_jet60_or_double_jet30;

-- 327 L1_DoubleMu3_SQ_ETMHF80_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF80 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf80_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248968240 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(72) <= l1_double_mu3_sq_etmhf80_jet60_or_double_jet30;

-- 328 L1_DoubleMu3_SQ_HTT100er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT100
l1_double_mu3_sq_htt100er <= double_mu_14585786515326686015 and single_htt_2496626710576;
algo(74) <= l1_double_mu3_sq_htt100er;

-- 329 L1_DoubleMu3_SQ_HTT200er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT200
l1_double_mu3_sq_htt200er <= double_mu_14585786515326686015 and single_htt_2496626726960;
algo(70) <= l1_double_mu3_sq_htt200er;

-- 330 L1_DoubleMu3_SQ_HTT220er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT220
l1_double_mu3_sq_htt220er <= double_mu_14585786515326686015 and single_htt_2496626727216;
algo(77) <= l1_double_mu3_sq_htt220er;

-- 331 L1_DoubleMu3_SQ_HTT240er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT240
l1_double_mu3_sq_htt240er <= double_mu_14585786515326686015 and single_htt_2496626727472;
algo(79) <= l1_double_mu3_sq_htt240er;

-- 335 L1_DoubleEG6_HTT240er : comb{EG6,EG6} AND HTT240
l1_double_eg6_htt240er <= double_eg_8902241742241126126 and single_htt_2496626727472;
algo(92) <= l1_double_eg6_htt240er;

-- 336 L1_DoubleEG6_HTT250er : comb{EG6,EG6} AND HTT250
l1_double_eg6_htt250er <= double_eg_8902241742241126126 and single_htt_2496626727600;
algo(90) <= l1_double_eg6_htt250er;

-- 337 L1_DoubleEG6_HTT270er : comb{EG6,EG6} AND HTT270
l1_double_eg6_htt270er <= double_eg_8902241742241126126 and single_htt_2496626727856;
algo(58) <= l1_double_eg6_htt270er;

-- 338 L1_DoubleEG6_HTT300er : comb{EG6,EG6} AND HTT300
l1_double_eg6_htt300er <= double_eg_8902241742241126126 and single_htt_2496626743344;
algo(62) <= l1_double_eg6_htt300er;

-- 339 L1_ETMHF70_Jet60_OR_DoubleJet30 : ETMHF70 AND (comb{JET30,JET30} OR JET60)
l1_etmhf70_jet60_or_double_jet30 <= single_etmhf_306372248968112 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(85) <= l1_etmhf70_jet60_or_double_jet30;

-- 340 L1_ETMHF75_Jet60_OR_DoubleJet30 : ETMHF75 AND (comb{JET30,JET30} OR JET60)
l1_etmhf75_jet60_or_double_jet30 <= single_etmhf_306372248968117 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(45) <= l1_etmhf75_jet60_or_double_jet30;

-- 341 L1_ETMHF80_Jet60_OR_DoubleJet30 : ETMHF80 AND (comb{JET30,JET30} OR JET60)
l1_etmhf80_jet60_or_double_jet30 <= single_etmhf_306372248968240 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(51) <= l1_etmhf80_jet60_or_double_jet30;

-- 342 L1_ETMHF85_Jet60_OR_DoubleJet30 : ETMHF85 AND (comb{JET30,JET30} OR JET60)
l1_etmhf85_jet60_or_double_jet30 <= single_etmhf_306372248968245 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(10) <= l1_etmhf85_jet60_or_double_jet30;

-- 343 L1_ETMHF90_Jet60_OR_DoubleJet30 : ETMHF90 AND (comb{JET30,JET30} OR JET60)
l1_etmhf90_jet60_or_double_jet30 <= single_etmhf_306372248968368 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(17) <= l1_etmhf90_jet60_or_double_jet30;

-- 344 L1_ETMHF95_Jet60_OR_DoubleJet30 : ETMHF95 AND (comb{JET30,JET30} OR JET60)
l1_etmhf95_jet60_or_double_jet30 <= single_etmhf_306372248968373 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(19) <= l1_etmhf95_jet60_or_double_jet30;

-- 345 L1_ETMHF100_Jet60_OR_DoubleJet30 : ETMHF100 AND (comb{JET30,JET30} OR JET60)
l1_etmhf100_jet60_or_double_jet30 <= single_etmhf_39215647867820080 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(55) <= l1_etmhf100_jet60_or_double_jet30;

-- 346 L1_ETMHF105_Jet60_OR_DoubleJet30 : ETMHF105 AND (comb{JET30,JET30} OR JET60)
l1_etmhf105_jet60_or_double_jet30 <= single_etmhf_39215647867820085 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(28) <= l1_etmhf105_jet60_or_double_jet30;

-- 347 L1_ETMHF110_Jet60_OR_DoubleJet30 : ETMHF110 AND (comb{JET30,JET30} OR JET60)
l1_etmhf110_jet60_or_double_jet30 <= single_etmhf_39215647867820208 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(100) <= l1_etmhf110_jet60_or_double_jet30;

-- 348 L1_ETMHF115_Jet60_OR_DoubleJet30 : ETMHF115 AND (comb{JET30,JET30} OR JET60)
l1_etmhf115_jet60_or_double_jet30 <= single_etmhf_39215647867820213 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(36) <= l1_etmhf115_jet60_or_double_jet30;

-- 349 L1_ETMHF120_Jet60_OR_DoubleJet30 : ETMHF120 AND (comb{JET30,JET30} OR JET60)
l1_etmhf120_jet60_or_double_jet30 <= single_etmhf_39215647867820336 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(46) <= l1_etmhf120_jet60_or_double_jet30;

-- 350 L1_ETMHF70_Jet60_OR_DiJet30woTT28 : ETMHF70 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf70_jet60_or_di_jet30wo_tt28 <= single_etmhf_306372248968112 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(37) <= l1_etmhf70_jet60_or_di_jet30wo_tt28;

-- 351 L1_ETMHF80_Jet60_OR_DiJet30woTT28 : ETMHF80 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf80_jet60_or_di_jet30wo_tt28 <= single_etmhf_306372248968240 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(47) <= l1_etmhf80_jet60_or_di_jet30wo_tt28;

-- 352 L1_ETMHF90_Jet60_OR_DiJet30woTT28 : ETMHF90 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf90_jet60_or_di_jet30wo_tt28 <= single_etmhf_306372248968368 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(14) <= l1_etmhf90_jet60_or_di_jet30wo_tt28;

-- 353 L1_ETMHF100_Jet60_OR_DiJet30woTT28 : ETMHF100 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf100_jet60_or_di_jet30wo_tt28 <= single_etmhf_39215647867820080 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(94) <= l1_etmhf100_jet60_or_di_jet30wo_tt28;

-- 354 L1_ETMHF110_Jet60_OR_DiJet30woTT28 : ETMHF110 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf110_jet60_or_di_jet30wo_tt28 <= single_etmhf_39215647867820208 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(26) <= l1_etmhf110_jet60_or_di_jet30wo_tt28;

-- 355 L1_ETMHF120_Jet60_OR_DiJet30woTT28 : ETMHF120 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf120_jet60_or_di_jet30wo_tt28 <= single_etmhf_39215647867820336 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(34) <= l1_etmhf120_jet60_or_di_jet30wo_tt28;

-- 356 L1_ETMHF70_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF70 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf70_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_306372248968112 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(54) <= l1_etmhf70_jet90_or_double_jet45_or_triple_jet30;

-- 357 L1_ETMHF80_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF80 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf80_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_306372248968240 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(60) <= l1_etmhf80_jet90_or_double_jet45_or_triple_jet30;

-- 358 L1_ETMHF90_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF90 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf90_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_306372248968368 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(18) <= l1_etmhf90_jet90_or_double_jet45_or_triple_jet30;

-- 359 L1_ETMHF100_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF100 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf100_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_39215647867820080 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(23) <= l1_etmhf100_jet90_or_double_jet45_or_triple_jet30;

-- 360 L1_ETMHF110_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF110 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf110_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_39215647867820208 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(76) <= l1_etmhf110_jet90_or_double_jet45_or_triple_jet30;

-- 378 L1_DoubleMu4p5_SQ_OS_dR_Max1p2 : dist{MU4p5[MU-QLTY_SNGL],MU4p5[MU-QLTY_SNGL]}[DR_1p2,CHGCOR_OS]
l1_double_mu4p5_sq_os_d_r_max1p2 <= muon_muon_correlation_12923126501326425857;
algo(107) <= l1_double_mu4p5_sq_os_d_r_max1p2;

-- 379 L1_TripleMu_5_3_0_DoubleMu_5_3_OS_Mass_Max17 : comb{MU5[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND mass{MU5[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE]}[MASS_MASS_0to17,CHGCOR_OS]
l1_triple_mu_5_3_0_double_mu_5_3_os_mass_max17 <= triple_mu_3324685188977871903 and invariant_mass_14024937077327807660;
algo(0) <= l1_triple_mu_5_3_0_double_mu_5_3_os_mass_max17;

-- 390 L1_Mu6_DoubleEG17 : MU6[MU-QLTY_SNGL] AND comb{EG17,EG17}
l1_mu6_double_eg17 <= single_mu_14769293122775847365 and double_eg_14367290900143979231;
algo(25) <= l1_mu6_double_eg17;

-- 400 L1_IsolatedBunch : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND EXT_ZeroBias_BPTX_AND_VME AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_isolated_bunch <= ( not single_ext_6909925150529645534 ) and ( not single_ext_6909925150529645533 ) and single_ext_1189548080491112364 and ( not single_ext_6909925150529645277 ) and ( not single_ext_6909925150529645278 );
algo(122) <= l1_isolated_bunch;

-- 401 L1_FirstBunchInTrain : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_first_bunch_in_train <= ( not single_ext_6909925150529645534 ) and ( not single_ext_6909925150529645533 ) and single_ext_1189548080491112364 and single_ext_9794008929098471889 and single_ext_9794008929098471890;
algo(139) <= l1_first_bunch_in_train;

-- 402 L1_FirstBunchAfterTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_first_bunch_after_train <= single_ext_9794008929098472146 and single_ext_9794008929098472145 and ( not single_ext_6102799243448260461 ) and ( not single_ext_6909925150529645277 ) and ( not single_ext_6909925150529645278 );
algo(124) <= l1_first_bunch_after_train;

-- 410 L1_Mu6_HTT200er : MU6[MU-QLTY_SNGL] AND HTT200
l1_mu6_htt200er <= single_mu_14769293122775847365 and single_htt_2496626726960;
algo(29) <= l1_mu6_htt200er;

-- 411 L1_Mu8_HTT150er : MU8[MU-QLTY_SNGL] AND HTT150
l1_mu8_htt150er <= single_mu_14769293157135585733 and single_htt_2496626711216;
algo(118) <= l1_mu8_htt150er;

-- 413 L1_EG27er2p1_HTT200er : EG27[EG-ETA_2p13] AND HTT200
l1_eg27er2p1_htt200er <= single_eg_14262501742930627507 and single_htt_2496626726960;
algo(16) <= l1_eg27er2p1_htt200er;

-- 414 L1_DoubleJet60er3p0_ETM60 : comb{JET60[JET-ETA_CEN],JET60[JET-ETA_CEN]} AND ETM60
l1_double_jet60er3p0_etm60 <= double_jet_8659301241633819347 and single_etm_18699475760;
algo(73) <= l1_double_jet60er3p0_etm60;

-- 417 L1_DoubleMu0_ETM40 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM40
l1_double_mu0_etm40 <= double_mu_14585777620730815295 and single_etm_18699475504;
algo(91) <= l1_double_mu0_etm40;

-- 418 L1_DoubleMu0_ETM55 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM55
l1_double_mu0_etm55 <= double_mu_14585777620730815295 and single_etm_18699475637;
algo(95) <= l1_double_mu0_etm55;

-- 419 L1_DoubleMu0_ETM60 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM60
l1_double_mu0_etm60 <= double_mu_14585777620730815295 and single_etm_18699475760;
algo(99) <= l1_double_mu0_etm60;

-- 420 L1_DoubleMu0_ETM65 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM65
l1_double_mu0_etm65 <= double_mu_14585777620730815295 and single_etm_18699475765;
algo(101) <= l1_double_mu0_etm65;

-- 421 L1_DoubleMu0_ETM70 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM70
l1_double_mu0_etm70 <= double_mu_14585777620730815295 and single_etm_18699475888;
algo(97) <= l1_double_mu0_etm70;

-- 424 L1_DoubleEG6_HTT255er : comb{EG6,EG6} AND HTT255
l1_double_eg6_htt255er <= double_eg_8902241742241126126 and single_htt_2496626727605;
algo(88) <= l1_double_eg6_htt255er;

-- 427 L1_Mu6_DoubleEG10 : MU6[MU-QLTY_SNGL] AND comb{EG10,EG10}
l1_mu6_double_eg10 <= single_mu_14769293122775847365 and double_eg_14367260113818400607;
algo(24) <= l1_mu6_double_eg10;

-- 431 L1_SingleEG2_BptxAND : EG2 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg2_bptx_and <= single_eg_1139634 and single_ext_1189548080491112364;
algo(119) <= l1_single_eg2_bptx_and;

-- 432 L1_SingleJet12_BptxAND : JET12 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet12_bptx_and <= single_jet_20010309810 and single_ext_1189548080491112364;
algo(120) <= l1_single_jet12_bptx_and;

-- 433 L1_ETT55_BptxAND : ETT55 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett55_bptx_and <= single_ett_18699590325 and single_ext_1189548080491112364;
algo(134) <= l1_ett55_bptx_and;

-- 434 L1_ETT70_BptxAND : ETT70 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett70_bptx_and <= single_ett_18699590576 and single_ext_1189548080491112364;
algo(128) <= l1_ett70_bptx_and;

-- 435 L1_ETT75_BptxAND : ETT75 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett75_bptx_and <= single_ett_18699590581 and single_ext_1189548080491112364;
algo(133) <= l1_ett75_bptx_and;

-- 436 L1_MinimumBiasHF0_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf0_and_bptx_and <= ( single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417 ) and single_ext_1189548080491112364;
algo(129) <= l1_minimum_bias_hf0_and_bptx_and;

-- 437 L1_MinimumBiasHF0_OR_BptxAND : (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf0_or_bptx_and <= ( single_mbt0_hfp_43640316738250801 or single_mbt0_hfm_43640316738250417 ) and single_ext_1189548080491112364;
algo(123) <= l1_minimum_bias_hf0_or_bptx_and;

-- 450 L1_AlwaysTrue : EXT_ZeroBias_BPTX_AND_VME OR ( NOT EXT_ZeroBias_BPTX_AND_VME)
l1_always_true <= single_ext_1189548080491112364 or ( not single_ext_1189548080491112364 );
algo(131) <= l1_always_true;

-- 451 L1_NotBptxOR :  NOT EXT_BPTX_OR_VME
l1_not_bptx_or <= not single_ext_6102799243448260461;
algo(121) <= l1_not_bptx_or;

-- 453 L1_ZeroBias_copy : EXT_ZeroBias_BPTX_AND_VME
l1_zero_bias_copy <= single_ext_1189548080491112364;
algo(130) <= l1_zero_bias_copy;

-- 458 L1_ZeroBias : EXT_ZeroBias_BPTX_AND_VME
l1_zero_bias <= single_ext_1189548080491112364;
algo(136) <= l1_zero_bias;

-- 461 L1_BptxOR : EXT_BPTX_OR_VME
l1_bptx_or <= single_ext_6102799243448260461;
algo(126) <= l1_bptx_or;


-- ========================================================