-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Dev2017_v1

-- Unique ID of L1 Trigger Menu:
-- cfa163b7-9a3e-4241-b966-f246e6c0e0b8

-- Unique ID of firmware implementation:
-- 6b83496c-2214-4454-8496-79e9e453d9d0

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v2.0.0

-- External condition assignment
    single_ext_10104897634845317422 <= ext_cond_bx_0(35); -- single_ext_10104897634845317422
    single_ext_10371607390599051624 <= ext_cond_bx_0(32); -- single_ext_10371607390599051624
    single_ext_10668942820174528044 <= ext_cond_bx_0(14); -- single_ext_10668942820174528044
    single_ext_13411810255817494270 <= ext_cond_bx_0(38); -- single_ext_13411810255817494270
    single_ext_14106346774065907231 <= ext_cond_bx_0(36); -- single_ext_14106346774065907231
    single_ext_1543099582833751334 <= ext_cond_bx_0(39); -- single_ext_1543099582833751334
    single_ext_15455824636181887404 <= ext_cond_bx_p1(32); -- single_ext_15455824636181887404
    single_ext_15455824636181887405 <= ext_cond_bx_p2(32); -- single_ext_15455824636181887405
    single_ext_15455824636181887660 <= ext_cond_bx_m1(32); -- single_ext_15455824636181887660
    single_ext_15455824636181887661 <= ext_cond_bx_m2(32); -- single_ext_15455824636181887661
    single_ext_17118203077108929635 <= ext_cond_bx_0(2); -- single_ext_17118203077108929635
    single_ext_17561531836164454591 <= ext_cond_bx_p1(35); -- single_ext_17561531836164454591
    single_ext_17561531836164454592 <= ext_cond_bx_p2(35); -- single_ext_17561531836164454592
    single_ext_17561531836164454847 <= ext_cond_bx_m1(35); -- single_ext_17561531836164454847
    single_ext_17561531836164454848 <= ext_cond_bx_m2(35); -- single_ext_17561531836164454848
    single_ext_17833638493488257651 <= ext_cond_bx_0(20); -- single_ext_17833638493488257651
    single_ext_17833638494023122291 <= ext_cond_bx_0(12); -- single_ext_17833638494023122291
    single_ext_17833638494293564019 <= ext_cond_bx_0(16); -- single_ext_17833638494293564019
    single_ext_17833638494294369813 <= ext_cond_bx_0(18); -- single_ext_17833638494294369813
    single_ext_6395038971485762908 <= ext_cond_bx_0(6); -- single_ext_6395038971485762908
    single_ext_6908249106957368432 <= ext_cond_bx_0(4); -- single_ext_6908249106957368432
    single_ext_6908249107225803888 <= ext_cond_bx_0(8); -- single_ext_6908249107225803888
    single_ext_6912739140295604792 <= ext_cond_bx_0(22); -- single_ext_6912739140295604792
    single_ext_7098142399846355376 <= ext_cond_bx_0(10); -- single_ext_7098142399846355376
    single_ext_7332905005558692115 <= ext_cond_bx_0(1); -- single_ext_7332905005558692115
    single_ext_8082506271259815918 <= ext_cond_bx_0(37); -- single_ext_8082506271259815918
-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.
    muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
	port map(mu_bx_0, mu_bx_0,
	    ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
	    ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
	    ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);

-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI, DR and mass) - once for every calo ObjectType in certain Bx used in correlation conditions
    eg_conv_2_muon_bx_0_l: for i in 0 to NR_EG_OBJECTS-1 generate
	eg_eta_conv_2_muon_eta_integer_bx_0(i) <= EG_ETA_CONV_2_MUON_ETA_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.eta_high downto D_S_I_EG_V2.eta_low)));
	eg_phi_conv_2_muon_phi_integer_bx_0(i) <= EG_PHI_CONV_2_MUON_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
    end generate eg_conv_2_muon_bx_0_l;
    jet_conv_2_muon_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
	jet_eta_conv_2_muon_eta_integer_bx_0(i) <= JET_ETA_CONV_2_MUON_ETA_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
	jet_phi_conv_2_muon_phi_integer_bx_0(i) <= JET_PHI_CONV_2_MUON_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
    end generate jet_conv_2_muon_bx_0_l;

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
    diff_eg_mu_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
	generic map(NR_EG_OBJECTS, NR_MU_OBJECTS)
	port map(eg_eta_conv_2_muon_eta_integer_bx_0, mu_eta_integer_bx_0, diff_eg_mu_bx_0_bx_0_eta_integer);
    diff_eg_mu_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
	generic map(NR_EG_OBJECTS, NR_MU_OBJECTS, MUON_PHI_HALF_RANGE_BINS)
	port map(eg_phi_conv_2_muon_phi_integer_bx_0, mu_phi_integer_bx_0, diff_eg_mu_bx_0_bx_0_phi_integer);
    eg_mu_bx_0_bx_0_l1: for i in 0 to NR_EG_OBJECTS-1 generate
	eg_mu_bx_0_bx_0_l2: for j in 0 to NR_MU_OBJECTS-1 generate
	    diff_eg_mu_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_MU_DIFF_ETA_LUT(diff_eg_mu_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
	    diff_eg_mu_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_MU_DIFF_PHI_LUT(diff_eg_mu_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
	end generate eg_mu_bx_0_bx_0_l2;
    end generate eg_mu_bx_0_bx_0_l1;
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
    diff_eg_tau_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
	generic map(NR_EG_OBJECTS, NR_TAU_OBJECTS)
	port map(eg_eta_integer_bx_0, tau_eta_integer_bx_0, diff_eg_tau_bx_0_bx_0_eta_integer);
    diff_eg_tau_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
	generic map(NR_EG_OBJECTS, NR_TAU_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
	port map(eg_phi_integer_bx_0, tau_phi_integer_bx_0, diff_eg_tau_bx_0_bx_0_phi_integer);
    eg_tau_bx_0_bx_0_l1: for i in 0 to NR_EG_OBJECTS-1 generate
	eg_tau_bx_0_bx_0_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
	    diff_eg_tau_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_DIFF_ETA_LUT(diff_eg_tau_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
	    diff_eg_tau_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_DIFF_PHI_LUT(diff_eg_tau_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
	end generate eg_tau_bx_0_bx_0_l2;
    end generate eg_tau_bx_0_bx_0_l1;
    diff_jet_mu_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
	generic map(NR_JET_OBJECTS, NR_MU_OBJECTS)
	port map(jet_eta_conv_2_muon_eta_integer_bx_0, mu_eta_integer_bx_0, diff_jet_mu_bx_0_bx_0_eta_integer);
    diff_jet_mu_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
	generic map(NR_JET_OBJECTS, NR_MU_OBJECTS, MUON_PHI_HALF_RANGE_BINS)
	port map(jet_phi_conv_2_muon_phi_integer_bx_0, mu_phi_integer_bx_0, diff_jet_mu_bx_0_bx_0_phi_integer);
    jet_mu_bx_0_bx_0_l1: for i in 0 to NR_JET_OBJECTS-1 generate
	jet_mu_bx_0_bx_0_l2: for j in 0 to NR_MU_OBJECTS-1 generate
	    diff_jet_mu_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_DIFF_ETA_LUT(diff_jet_mu_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
	    diff_jet_mu_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_DIFF_PHI_LUT(diff_jet_mu_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
	end generate jet_mu_bx_0_bx_0_l2;
    end generate jet_mu_bx_0_bx_0_l1;
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

-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for mass and overlap_remover) - once for correlation conditions with two ObjectTypes in certain Bxs
    eg_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
	eg_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
	    eg_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_MU_COSH_DETA_LUT(diff_eg_mu_bx_0_bx_0_eta_integer(i,j)), EG_MU_COSH_COS_VECTOR_WIDTH);
	    eg_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_MU_COS_DPHI_LUT(diff_eg_mu_bx_0_bx_0_phi_integer(i,j)), EG_MU_COSH_COS_VECTOR_WIDTH);
	end generate eg_mu_bx_0_bx_0_cosh_cos_l2;
    end generate eg_mu_bx_0_bx_0_cosh_cos_l1;
    jet_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
	jet_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
	    jet_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COSH_DETA_LUT(diff_jet_jet_bx_0_bx_0_eta_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
	    jet_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COS_DPHI_LUT(diff_jet_jet_bx_0_bx_0_phi_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
	end generate jet_jet_bx_0_bx_0_cosh_cos_l2;
    end generate jet_jet_bx_0_bx_0_cosh_cos_l1;
    eg_tau_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
	eg_tau_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
	    eg_tau_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_COSH_DETA_LUT(diff_eg_tau_bx_0_bx_0_eta_integer(i,j)), EG_TAU_COSH_COS_VECTOR_WIDTH);
	    eg_tau_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_COS_DPHI_LUT(diff_eg_tau_bx_0_bx_0_phi_integer(i,j)), EG_TAU_COSH_COS_VECTOR_WIDTH);
	end generate eg_tau_bx_0_bx_0_cosh_cos_l2;
    end generate eg_tau_bx_0_bx_0_cosh_cos_l1;
    jet_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
	jet_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
	    jet_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_COSH_DETA_LUT(diff_jet_mu_bx_0_bx_0_eta_integer(i,j)), JET_MU_COSH_COS_VECTOR_WIDTH);
	    jet_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_COS_DPHI_LUT(diff_jet_mu_bx_0_bx_0_phi_integer(i,j)), JET_MU_COSH_COS_VECTOR_WIDTH);
	end generate jet_mu_bx_0_bx_0_cosh_cos_l2;
    end generate jet_mu_bx_0_bx_0_cosh_cos_l1;
    mu_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
	mu_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
	    mu_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
	    mu_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
	end generate mu_mu_bx_0_bx_0_cosh_cos_l2;
    end generate mu_mu_bx_0_bx_0_cosh_cos_l1;

-- Instantiations of conditions
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


double_jet_8659301379072772819_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"0088", X"0060", X"0000", X"0000"),
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
	double_jet_8659301379072772819);


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


double_jet_8659439917537872595_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"00A8", X"0060", X"0000", X"0000"),
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
	double_jet_8659439917537872595);


double_jet_8659444315584383699_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"00A8", X"0088", X"0000", X"0000"),
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
	double_jet_8659444315584383699);


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


quad_jet_2751081844007168180_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	4, true, JET_TYPE,
        (X"0050", X"0050", X"0050", X"0050"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0044"), (X"00BB", X"00BB", X"00BB", X"00BB"),
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
	quad_jet_2751081844007168180);


quad_jet_2899845767245260980_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	4, true, JET_TYPE,
        (X"0078", X"0078", X"0078", X"0078"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0044"), (X"00BB", X"00BB", X"00BB", X"00BB"),
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
	quad_jet_2899845767245260980);


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


single_jet_156330552_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"0010", X"0000", X"0000", X"0000"),
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
	single_jet_156330552);


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


single_jet_5967545344067287239_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
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
	single_jet_5967545344067287239);


single_jet_5974006375341702652_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"0060", X"0000", X"0000", X"0000"),
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
	single_jet_5974006375341702652);


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


single_jet_5974147112830057980_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"0088", X"0000", X"0000", X"0000"),
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
	single_jet_5974147112830057980);


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


single_jet_5974285651295157756_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"00A8", X"0000", X"0000", X"0000"),
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
	single_jet_5974285651295157756);


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


triple_jet_7930354149017105525_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	3, true, JET_TYPE,
        (X"00A8", X"0088", X"0060", X"0000"),
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
	triple_jet_7930354149017105525);


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


double_mu_16961154507842811908_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	2, true,
        (X"0017", X"0009", X"0000", X"0000"),
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
	double_mu_16961154507842811908,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_16961158905889323012_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	2, true,
        (X"001F", X"000B", X"0000", X"0000"),
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
	double_mu_16961158905889323012,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_16961163853691648004_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	2, true,
        (X"0019", X"0011", X"0000", X"0000"),
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
	double_mu_16961163853691648004,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_18206240164090448142_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	2, true,
        (X"0015", X"0008", X"0000", X"0000"),
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
	double_mu_18206240164090448142,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


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
	single_mu_14769293122775847365);


single_mu_14769293139955716549_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	1, true,
        (X"000F", X"0000", X"0000", X"0000"),
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
	single_mu_14769293139955716549);


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
	single_mu_14769293157135585733);


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
	single_mu_17545683025133343173);


single_mu_17545687423179854277_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	1, true,
        (X"003D", X"0000", X"0000", X"0000"),
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
	single_mu_17545687423179854277);


triple_mu_3324682852515662879_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	3, true,
        (X"0001", X"0001", X"0001", X"0000"),
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
	triple_mu_3324682852515662879,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


triple_mu_3324692885559266335_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	3, true,
        (X"000B", X"000B", X"0007", X"0000"),
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
	triple_mu_3324692885559266335,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


single_etm_18699475893_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0096",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475893);


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


single_htm_19504782000_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"0064",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, single_htm_19504782000);


single_htm_19504782256_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"008C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, single_htm_19504782256);


single_htm_19504782384_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"00A0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, single_htm_19504782384);


single_htm_2496612030512_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, single_htm_2496612030512);


single_htm_2496612030768_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, single_htm_2496612030768);


single_htm_2496612030896_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"0104",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, single_htm_2496612030896);


single_htm_2496612031024_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"0118",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, single_htm_2496612031024);


single_htm_2496612031152_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"012C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, single_htm_2496612031152);


single_ett_18699589941_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0032",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699589941);


single_ett_18699590192_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590192);


single_ett_18699590320_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0064",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590320);


single_ett_18699590325_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"006E",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590325);


single_ett_18699590448_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0078",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590448);


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


single_htt_2496626710832_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626710832);


single_htt_2496626711216_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"012C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626711216);


single_htt_2496626711344_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0140",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626711344);


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


calo_calo_correlation_14500771630165735872_i: entity work.calo_calo_correlation_condition_v2
    generic map(
        true,
        true, false, false, false, 0, false, 
        0, 11, true, EG_TYPE,
        X"0028",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"E",
        0, 11, true, TAU_TYPE,
        X"0032",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"E",
        10.0, 0.2,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, EG_TAU_DETA_DPHI_PRECISION,
        0.0, 0.0, EG_TAU_MASS_PRECISION,
        EG_PT_VECTOR_WIDTH, TAU_PT_VECTOR_WIDTH, EG_TAU_COSH_COS_PRECISION, EG_TAU_COSH_COS_VECTOR_WIDTH,
        0.0, CALO_SIN_COS_VECTOR_WIDTH, EG_TAU_PT_PRECISION, EG_TAU_SIN_COS_PRECISION
    )
    port map(lhc_clk, eg_bx_0, tau_bx_0,
        diff_eg_tau_bx_0_bx_0_eta_vector, diff_eg_tau_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, tau_pt_vector_bx_0,
        eg_tau_bx_0_bx_0_cosh_deta_vector, eg_tau_bx_0_bx_0_cos_dphi_vector,
        eg_cos_phi_bx_0, tau_cos_phi_bx_0, eg_sin_phi_bx_0, tau_sin_phi_bx_0,
        calo_calo_correlation_14500771630165735872);

calo_calo_correlation_2085349615869404806_i: entity work.calo_calo_correlation_condition_v2
    generic map(
        true,
        true, false, false, false, 0, false, 
        0, 11, true, EG_TYPE,
        X"002C",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"E",
        0, 11, true, TAU_TYPE,
        X"0028",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        10.0, 0.2,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, EG_TAU_DETA_DPHI_PRECISION,
        0.0, 0.0, EG_TAU_MASS_PRECISION,
        EG_PT_VECTOR_WIDTH, TAU_PT_VECTOR_WIDTH, EG_TAU_COSH_COS_PRECISION, EG_TAU_COSH_COS_VECTOR_WIDTH,
        0.0, CALO_SIN_COS_VECTOR_WIDTH, EG_TAU_PT_PRECISION, EG_TAU_SIN_COS_PRECISION
    )
    port map(lhc_clk, eg_bx_0, tau_bx_0,
        diff_eg_tau_bx_0_bx_0_eta_vector, diff_eg_tau_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, tau_pt_vector_bx_0,
        eg_tau_bx_0_bx_0_cosh_deta_vector, eg_tau_bx_0_bx_0_cos_dphi_vector,
        eg_cos_phi_bx_0, tau_cos_phi_bx_0, eg_sin_phi_bx_0, tau_sin_phi_bx_0,
        calo_calo_correlation_2085349615869404806);

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

calo_muon_correlation_10674670645420326056_i: entity work.calo_muon_correlation_condition_v2
    generic map(
        false, true, false, false, 0, false, 
        0, 11, true, EG_TYPE,
        X"0014",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 7, true,
        X"0001",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        0.0, 0.0,
        3.15, 1.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, EG_MU_DETA_DPHI_PRECISION,
        0.0, 0.0, EG_MU_MASS_PRECISION,
        EG_PT_VECTOR_WIDTH, MU_PT_VECTOR_WIDTH, EG_MU_COSH_COS_PRECISION, EG_MU_COSH_COS_VECTOR_WIDTH,
        0.0, MUON_SIN_COS_VECTOR_WIDTH, EG_MU_PT_PRECISION, EG_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, eg_bx_0, mu_bx_0,
        diff_eg_mu_bx_0_bx_0_eta_vector, diff_eg_mu_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, mu_pt_vector_bx_0, 
        eg_mu_bx_0_bx_0_cosh_deta_vector, eg_mu_bx_0_bx_0_cos_dphi_vector,
        conv_eg_cos_phi_bx_0, mu_cos_phi_bx_0, conv_eg_sin_phi_bx_0, mu_sin_phi_bx_0,
        calo_muon_correlation_10674670645420326056);

calo_muon_correlation_10791898730651162912_i: entity work.calo_muon_correlation_condition_v2
    generic map(
        false, true, false, false, 0, false, 
        0, 11, true, JET_TYPE,
        X"0040",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 7, true,
        X"0001",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        0.0, 0.0,
        0.4, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_MU_DETA_DPHI_PRECISION,
        0.0, 0.0, JET_MU_MASS_PRECISION,
        JET_PT_VECTOR_WIDTH, MU_PT_VECTOR_WIDTH, JET_MU_COSH_COS_PRECISION, JET_MU_COSH_COS_VECTOR_WIDTH,
        0.0, MUON_SIN_COS_VECTOR_WIDTH, JET_MU_PT_PRECISION, JET_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, mu_bx_0,
        diff_jet_mu_bx_0_bx_0_eta_vector, diff_jet_mu_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, mu_pt_vector_bx_0, 
        jet_mu_bx_0_bx_0_cosh_deta_vector, jet_mu_bx_0_bx_0_cos_dphi_vector,
        conv_jet_cos_phi_bx_0, mu_cos_phi_bx_0, conv_jet_sin_phi_bx_0, mu_sin_phi_bx_0,
        calo_muon_correlation_10791898730651162912);

calo_muon_correlation_16240387826857744385_i: entity work.calo_muon_correlation_condition_v2
    generic map(
        true, true, false, false, 0, false, 
        0, 11, true, JET_TYPE,
        X"0020",
        false, X"0044",X"00BB",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 7, true,
        X"0007",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        0.4, 0.0,
        0.4, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_MU_DETA_DPHI_PRECISION,
        0.0, 0.0, JET_MU_MASS_PRECISION,
        JET_PT_VECTOR_WIDTH, MU_PT_VECTOR_WIDTH, JET_MU_COSH_COS_PRECISION, JET_MU_COSH_COS_VECTOR_WIDTH,
        0.0, MUON_SIN_COS_VECTOR_WIDTH, JET_MU_PT_PRECISION, JET_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, mu_bx_0,
        diff_jet_mu_bx_0_bx_0_eta_vector, diff_jet_mu_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, mu_pt_vector_bx_0, 
        jet_mu_bx_0_bx_0_cosh_deta_vector, jet_mu_bx_0_bx_0_cos_dphi_vector,
        conv_jet_cos_phi_bx_0, mu_cos_phi_bx_0, conv_jet_sin_phi_bx_0, mu_sin_phi_bx_0,
        calo_muon_correlation_16240387826857744385);

muon_muon_correlation_6226381454046753505_i: entity work.muon_muon_correlation_condition_v2
    generic map(
        true,
        false, true, false, false, 0, false, 
        0, 7, true,
        X"0001",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        true,
        X"0015",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        "ig",
        0.0, 0.0,
        3.15, 1.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MU_MU_DETA_DPHI_PRECISION,
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
        muon_muon_correlation_6226381454046753505);

muon_muon_correlation_7972376774213455602_i: entity work.muon_muon_correlation_condition_v2
    generic map(
        true,
        true, false, false, false, 0, false, 
        0, 7, true,
        X"0001",
        false, X"0081", X"017F",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        true,
        X"0001",
        false, X"0081",X"017F",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        "os",
        1.8, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MU_MU_DETA_DPHI_PRECISION,
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
        muon_muon_correlation_7972376774213455602);

muon_muon_correlation_8008405571232419574_i: entity work.muon_muon_correlation_condition_v2
    generic map(
        true,
        true, false, false, false, 0, false, 
        0, 7, true,
        X"0001",
        false, X"0093", X"016D",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        true,
        X"0001",
        false, X"0093",X"016D",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        "os",
        1.8, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MU_MU_DETA_DPHI_PRECISION,
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
        muon_muon_correlation_8008405571232419574);

single_mbt0_hfm_43640316738250417_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"1")
    port map(lhc_clk, mbt0hfm_bx_0, single_mbt0_hfm_43640316738250417);


single_mbt1_hfm_43640317006685873_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFM_TYPE, X"1")
    port map(lhc_clk, mbt1hfm_bx_0, single_mbt1_hfm_43640317006685873);


single_mbt0_hfp_43640316738250801_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"1")
    port map(lhc_clk, mbt0hfp_bx_0, single_mbt0_hfp_43640316738250801);


single_mbt1_hfp_43640317006686257_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFP_TYPE, X"1")
    port map(lhc_clk, mbt1hfp_bx_0, single_mbt1_hfp_43640317006686257);



-- Instantiations of algorithms

-- 0 L1_ZeroBias : EXT_BPTX_plus_AND_minus.v0
l1_zero_bias <= single_ext_10371607390599051624;
algo(17) <= l1_zero_bias;

-- 2 L1_SingleMuOpen : MU0[MU-QLTY_OPEN]
l1_single_mu_open <= single_mu_14769293018627052229;
algo(22) <= l1_single_mu_open;

-- 5 L1_SingleMu7 : MU7[MU-QLTY_SNGL]
l1_single_mu7 <= single_mu_14769293139955716549;
algo(77) <= l1_single_mu7;

-- 13 L1_SingleMu30 : MU30[MU-QLTY_SNGL]
l1_single_mu30 <= single_mu_17545687423179854277;
algo(76) <= l1_single_mu30;

-- 26 L1_DoubleMu_10_3p5 : comb{MU10[MU-QLTY_DBLE],MU3p5[MU-QLTY_DBLE]}
l1_double_mu_10_3p5 <= double_mu_18206240164090448142;
algo(79) <= l1_double_mu_10_3p5;

-- 27 L1_DoubleMu_11_4 : comb{MU11[MU-QLTY_DBLE],MU4[MU-QLTY_DBLE]}
l1_double_mu_11_4 <= double_mu_16961154507842811908;
algo(80) <= l1_double_mu_11_4;

-- 30 L1_DoubleMu_15_5 : comb{MU15[MU-QLTY_DBLE],MU5[MU-QLTY_DBLE]}
l1_double_mu_15_5 <= double_mu_16961158905889323012;
algo(82) <= l1_double_mu_15_5;

-- 31 L1_DoubleMu_12_8 : comb{MU12[MU-QLTY_DBLE],MU8[MU-QLTY_DBLE]}
l1_double_mu_12_8 <= double_mu_16961163853691648004;
algo(81) <= l1_double_mu_12_8;

-- 33 L1_DoubleMu0er1p6_dEta_Max1p8_OS : dist{MU0[MU-QLTY_DBLE,MU-ETA_1p6],MU0[MU-QLTY_DBLE,MU-ETA_1p6]}[DETA_MAX_1p8,CHGCOR_OS]
l1_double_mu0er1p6_d_eta_max1p8_os <= muon_muon_correlation_8008405571232419574;
algo(88) <= l1_double_mu0er1p6_d_eta_max1p8_os;

-- 36 L1_TripleMu0 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_triple_mu0 <= triple_mu_3324682852515662879;
algo(83) <= l1_triple_mu0;

-- 37 L1_TripleMu_5_5_3 : comb{MU5[MU-QLTY_DBLE],MU5[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE]}
l1_triple_mu_5_5_3 <= triple_mu_3324692885559266335;
algo(84) <= l1_triple_mu_5_5_3;

-- 99 L1_TripleJet_84_68_48_VBF : comb{JET84[JET-ETA_CEN],JET68[JET-ETA_CEN],JET48[JET-ETA_CEN]} OR (comb{JET84[JET-ETA_CEN],JET68[JET-ETA_CEN]} AND JET48[JET-ETA_FWD_NEG,JET-ETA_FWD_POS]) OR (comb{JET84[JET-ETA_CEN],JET48[JET-ETA_CEN]} AND JET68[JET-ETA_FWD_NEG,JET-ETA_FWD_POS]) OR (comb{JET68[JET-ETA_CEN],JET48[JET-ETA_CEN]} AND JET84[JET-ETA_FWD_NEG,JET-ETA_FWD_POS])
l1_triple_jet_84_68_48_vbf <= triple_jet_7930354149017105525 or ( double_jet_8659444315584383699 and single_jet_5974006375341702652 ) or ( double_jet_8659439917537872595 and single_jet_5974147112830057980 ) or ( double_jet_8659301379072772819 and single_jet_5974285651295157756 );
algo(85) <= l1_triple_jet_84_68_48_vbf;

-- 101 L1_TripleJet_92_76_64_VBF : comb{JET92[JET-ETA_CEN],JET76[JET-ETA_CEN],JET64[JET-ETA_CEN]} OR (comb{JET92[JET-ETA_CEN],JET76[JET-ETA_CEN]} AND JET64[JET-ETA_FWD_NEG,JET-ETA_FWD_POS]) OR (comb{JET92[JET-ETA_CEN],JET64[JET-ETA_CEN]} AND JET76[JET-ETA_FWD_NEG,JET-ETA_FWD_POS]) OR (comb{JET76[JET-ETA_CEN],JET64[JET-ETA_CEN]} AND JET92[JET-ETA_FWD_NEG,JET-ETA_FWD_POS])
l1_triple_jet_92_76_64_vbf <= triple_jet_7932644363018286197 or ( double_jet_8659515749480450771 and single_jet_5974144913806802428 ) or ( double_jet_8659513516097456851 and single_jet_5974216382062607868 ) or ( double_jet_8659374977632357075 and single_jet_5974354920527707644 );
algo(86) <= l1_triple_jet_92_76_64_vbf;

-- 102 L1_QuadJetC40 : comb{JET40[JET-ETA_CEN],JET40[JET-ETA_CEN],JET40[JET-ETA_CEN],JET40[JET-ETA_CEN]}
l1_quad_jet_c40 <= quad_jet_2751081844007168180;
algo(89) <= l1_quad_jet_c40;

-- 104 L1_QuadJetC60 : comb{JET60[JET-ETA_CEN],JET60[JET-ETA_CEN],JET60[JET-ETA_CEN],JET60[JET-ETA_CEN]}
l1_quad_jet_c60 <= quad_jet_2899845767245260980;
algo(90) <= l1_quad_jet_c60;

-- 115 L1_HTT120 : HTT120
l1_htt120 <= single_htt_2496626710832;
algo(67) <= l1_htt120;

-- 116 L1_HTT160 : HTT160
l1_htt160 <= single_htt_2496626711344;
algo(68) <= l1_htt160;

-- 117 L1_HTT200 : HTT200
l1_htt200 <= single_htt_2496626726960;
algo(69) <= l1_htt200;

-- 118 L1_HTT220 : HTT220
l1_htt220 <= single_htt_2496626727216;
algo(65) <= l1_htt220;

-- 125 L1_ETM80 : ETM80
l1_etm80 <= single_etm_18699476016;
algo(52) <= l1_etm80;

-- 126 L1_ETM90 : ETM90
l1_etm90 <= single_etm_18699476144;
algo(54) <= l1_etm90;

-- 127 L1_HTM50 : HTM50
l1_htm50 <= single_htm_19504782000;
algo(62) <= l1_htm50;

-- 128 L1_HTM70 : HTM70
l1_htm70 <= single_htm_19504782256;
algo(63) <= l1_htm70;

-- 129 L1_HTM80 : HTM80
l1_htm80 <= single_htm_19504782384;
algo(64) <= l1_htm80;

-- 130 L1_HTM100 : HTM100
l1_htm100 <= single_htm_2496612030512;
algo(57) <= l1_htm100;

-- 131 L1_HTM120 : HTM120
l1_htm120 <= single_htm_2496612030768;
algo(58) <= l1_htm120;

-- 132 L1_HTM130 : HTM130
l1_htm130 <= single_htm_2496612030896;
algo(59) <= l1_htm130;

-- 133 L1_HTM140 : HTM140
l1_htm140 <= single_htm_2496612031024;
algo(60) <= l1_htm140;

-- 134 L1_HTM150 : HTM150
l1_htm150 <= single_htm_2496612031152;
algo(61) <= l1_htm150;

-- 135 L1_ETT25 : ETT25
l1_ett25 <= single_ett_18699589941;
algo(56) <= l1_ett25;

-- 136 L1_ETT40_BptxAND : ETT40 AND EXT_BPTX_plus_AND_minus.v0
l1_ett40_bptx_and <= single_ett_18699590192 and single_ext_10371607390599051624;
algo(24) <= l1_ett40_bptx_and;

-- 168 L1_Mu6_DoubleEG17 : MU6[MU-QLTY_SNGL] AND comb{EG17,EG17}
l1_mu6_double_eg17 <= single_mu_14769293122775847365 and double_eg_14367290900143979231;
algo(74) <= l1_mu6_double_eg17;

-- 169 L1_Mu6_DoubleEG10 : MU6[MU-QLTY_SNGL] AND comb{EG10,EG10}
l1_mu6_double_eg10 <= single_mu_14769293122775847365 and double_eg_14367260113818400607;
algo(71) <= l1_mu6_double_eg10;

-- 170 L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4 : dist{MU3[MU-QLTY_SNGL],JET16[JET-ETA_CEN]}[DETA_MAX_0p4,DPHI_MAX_0p4]
l1_mu3_jet_c16_d_eta_max0p4_d_phi_max0p4 <= calo_muon_correlation_16240387826857744385;
algo(95) <= l1_mu3_jet_c16_d_eta_max0p4_d_phi_max0p4;

-- 172 L1_Mu6_HTT200 : MU6[MU-QLTY_SNGL] AND HTT200
l1_mu6_htt200 <= single_mu_14769293122775847365 and single_htt_2496626726960;
algo(72) <= l1_mu6_htt200;

-- 173 L1_Mu8_HTT150 : MU8[MU-QLTY_SNGL] AND HTT150
l1_mu8_htt150 <= single_mu_14769293157135585733 and single_htt_2496626711216;
algo(78) <= l1_mu8_htt150;

-- 174 L1_EG27er_HTT200 : EG27[EG-ETA_2p13] AND HTT200
l1_eg27er_htt200 <= single_eg_14262501742930627507 and single_htt_2496626726960;
algo(70) <= l1_eg27er_htt200;

-- 179 L1_Jet32_DoubleMu_10_0_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0 : dist{JET32,MU0[MU-QLTY_DBLE]}[DPHI_MAX_0p4] AND dist{MU0[MU-QLTY_DBLE],MU10[MU-QLTY_DBLE]}[DPHI_MIN_1p0]
l1_jet32_double_mu_10_0_d_phi_jet_mu0_max0p4_d_phi_mu_mu_min1p0 <= calo_muon_correlation_10791898730651162912 and muon_muon_correlation_6226381454046753505;
algo(96) <= l1_jet32_double_mu_10_0_d_phi_jet_mu0_max0p4_d_phi_mu_mu_min1p0;

-- 180 L1_Jet32_Mu0_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0 : dist{JET32,MU0[MU-QLTY_DBLE]}[DPHI_MAX_0p4] AND dist{EG10,MU0[MU-QLTY_DBLE]}[DPHI_MIN_1p0]
l1_jet32_mu0_eg10_d_phi_jet_mu_max0p4_d_phi_mu_eg_min1p0 <= calo_muon_correlation_10791898730651162912 and calo_muon_correlation_10674670645420326056;
algo(97) <= l1_jet32_mu0_eg10_d_phi_jet_mu_max0p4_d_phi_mu_eg_min1p0;

-- 187 L1_HTM80_HTT220 : HTM80 AND HTT220
l1_htm80_htt220 <= single_htm_19504782384 and single_htt_2496626727216;
algo(66) <= l1_htm80_htt220;

-- 189 L1_SingleMuOpen_NotBptxOR : MU0[MU-QLTY_OPEN] AND ( NOT EXT_BPTX_plus_OR_minus.v0)
l1_single_mu_open_not_bptx_or <= single_mu_14769293018627052229 and ( not single_ext_10104897634845317422 );
algo(29) <= l1_single_mu_open_not_bptx_or;

-- 191 L1_SingleJetC20_NotBptxOR : JET20[JET-ETA_CEN] AND ( NOT EXT_BPTX_plus_OR_minus.v0)
l1_single_jet_c20_not_bptx_or <= single_jet_5967545309707548871 and ( not single_ext_10104897634845317422 );
algo(40) <= l1_single_jet_c20_not_bptx_or;

-- 192 L1_SingleEG2_BptxAND : EG2 AND EXT_BPTX_plus_AND_minus.v0
l1_single_eg2_bptx_and <= single_eg_1139634 and single_ext_10371607390599051624;
algo(25) <= l1_single_eg2_bptx_and;

-- 193 L1_ETT70_BptxAND : ETT70 AND EXT_BPTX_plus_AND_minus.v0
l1_ett70_bptx_and <= single_ett_18699590576 and single_ext_10371607390599051624;
algo(36) <= l1_ett70_bptx_and;

-- 194 L1_SingleJet8_BptxAND : JET8 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet8_bptx_and <= single_jet_156330552 and single_ext_10371607390599051624;
algo(35) <= l1_single_jet8_bptx_and;

-- 195 L1_SingleJet12_BptxAND : JET12 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet12_bptx_and <= single_jet_20010309810 and single_ext_10371607390599051624;
algo(26) <= l1_single_jet12_bptx_and;

-- 199 L1_IsoEG22er_Tau20er_dEta_Min0p2 : dist{EG22[EG-ISO_0xE,EG-ETA_2p13],TAU20[TAU-ETA_2p13]}[DETA_MIN_0p2]
l1_iso_eg22er_tau20er_d_eta_min0p2 <= calo_calo_correlation_2085349615869404806;
algo(94) <= l1_iso_eg22er_tau20er_d_eta_min0p2;

-- 200 L1_SingleMuOpen_NotBptxOR_3BX : MU0[MU-QLTY_OPEN] AND ( NOT EXT_BPTX_plus_OR_minus.v0-1) AND ( NOT EXT_BPTX_plus_OR_minus.v0) AND ( NOT EXT_BPTX_plus_OR_minus.v0+1)
l1_single_mu_open_not_bptx_or_3_bx <= single_mu_14769293018627052229 and ( not single_ext_17561531836164454847 ) and ( not single_ext_10104897634845317422 ) and ( not single_ext_17561531836164454591 );
algo(14) <= l1_single_mu_open_not_bptx_or_3_bx;

-- 201 L1_SingleJetC20_NotBptxOR_3BX : JET20[JET-ETA_CEN] AND ( NOT EXT_BPTX_plus_OR_minus.v0-1) AND ( NOT EXT_BPTX_plus_OR_minus.v0) AND ( NOT EXT_BPTX_plus_OR_minus.v0+1)
l1_single_jet_c20_not_bptx_or_3_bx <= single_jet_5967545309707548871 and ( not single_ext_17561531836164454847 ) and ( not single_ext_10104897634845317422 ) and ( not single_ext_17561531836164454591 );
algo(16) <= l1_single_jet_c20_not_bptx_or_3_bx;

-- 202 L1_SingleJetC40_NotBptxOR_5BX : JET40[JET-ETA_CEN] AND ( NOT EXT_BPTX_plus_OR_minus.v0-2) AND ( NOT EXT_BPTX_plus_OR_minus.v0-1) AND ( NOT EXT_BPTX_plus_OR_minus.v0) AND ( NOT EXT_BPTX_plus_OR_minus.v0+1) AND ( NOT EXT_BPTX_plus_OR_minus.v0+2)
l1_single_jet_c40_not_bptx_or_5_bx <= single_jet_5967545344067287239 and ( not single_ext_17561531836164454848 ) and ( not single_ext_17561531836164454847 ) and ( not single_ext_10104897634845317422 ) and ( not single_ext_17561531836164454591 ) and ( not single_ext_17561531836164454592 );
algo(13) <= l1_single_jet_c40_not_bptx_or_5_bx;

-- 203 L1_SingleJetC40_NotBptxOR_3BX : JET40[JET-ETA_CEN] AND ( NOT EXT_BPTX_plus_OR_minus.v0-1) AND ( NOT EXT_BPTX_plus_OR_minus.v0) AND ( NOT EXT_BPTX_plus_OR_minus.v0+1)
l1_single_jet_c40_not_bptx_or_3_bx <= single_jet_5967545344067287239 and ( not single_ext_17561531836164454847 ) and ( not single_ext_10104897634845317422 ) and ( not single_ext_17561531836164454591 );
algo(34) <= l1_single_jet_c40_not_bptx_or_3_bx;

-- 206 L1_AlwaysTrue : EXT_BPTX_plus_AND_minus.v0 OR ( NOT EXT_BPTX_plus_AND_minus.v0)
l1_always_true <= single_ext_10371607390599051624 or ( not single_ext_10371607390599051624 );
algo(37) <= l1_always_true;

-- 209 L1_BptxOR : EXT_BPTX_plus_OR_minus.v0
l1_bptx_or <= single_ext_10104897634845317422;
algo(12) <= l1_bptx_or;

-- 219 L1_IsolatedBunch : ( NOT EXT_BPTX_plus_OR_minus.v0-2) AND ( NOT EXT_BPTX_plus_OR_minus.v0-1) AND EXT_BPTX_plus_AND_minus.v0 AND ( NOT EXT_BPTX_plus_OR_minus.v0+1) AND ( NOT EXT_BPTX_plus_OR_minus.v0+2)
l1_isolated_bunch <= ( not single_ext_17561531836164454848 ) and ( not single_ext_17561531836164454847 ) and single_ext_10371607390599051624 and ( not single_ext_17561531836164454591 ) and ( not single_ext_17561531836164454592 );
algo(49) <= l1_isolated_bunch;

-- 221 L1_BeamGasPlus : EXT_BeamGas_plus
l1_beam_gas_plus <= single_ext_17118203077108929635;
algo(11) <= l1_beam_gas_plus;

-- 224 L1_BeamGasB2 : EXT_BeamGas_B2
l1_beam_gas_b2 <= single_ext_7332905005558692115;
algo(10) <= l1_beam_gas_b2;

-- 225 L1_BPTX_LUT1_AND : EXT_BPTX_LUT1_AND
l1_bptx_lut1_and <= single_ext_6908249106957368432;
algo(0) <= l1_bptx_lut1_and;

-- 227 L1_BPTX_LUT1_B2 : EXT_BPTX_LUT1_B2
l1_bptx_lut1_b2 <= single_ext_6395038971485762908;
algo(1) <= l1_bptx_lut1_b2;

-- 229 L1_BPTX_LUT2_AND : EXT_BPTX_LUT2_AND
l1_bptx_lut2_and <= single_ext_6908249107225803888;
algo(2) <= l1_bptx_lut2_and;

-- 231 L1_BPTX_LUT2_B2NotB1 : EXT_BPTX_LUT2_B2NotB1
l1_bptx_lut2_b2_not_b1 <= single_ext_7098142399846355376;
algo(3) <= l1_bptx_lut2_b2_not_b1;

-- 233 L1_BPTX_TRIG2_AND : EXT_BPTX_TRIG2_AND
l1_bptx_trig2_and <= single_ext_17833638494023122291;
algo(4) <= l1_bptx_trig2_and;

-- 235 L1_BPTX_TRIG2_B2NotB1 : EXT_BPTX_TRIG2_B2NotB1
l1_bptx_trig2_b2_not_b1 <= single_ext_10668942820174528044;
algo(5) <= l1_bptx_trig2_b2_not_b1;

-- 237 L1_BRIL_TRIG3_AND : EXT_BRIL_TRIG3_AND
l1_bril_trig3_and <= single_ext_17833638494293564019;
algo(8) <= l1_bril_trig3_and;

-- 239 L1_BRIL_TRIG3_ref : EXT_BRIL_TRIG3_ref
l1_bril_trig3_ref <= single_ext_17833638494294369813;
algo(9) <= l1_bril_trig3_ref;

-- 240 L1_BRIL_TRIG0_AND : EXT_BRIL_TRIG0_AND
l1_bril_trig0_and <= single_ext_17833638493488257651;
algo(6) <= l1_bril_trig0_and;

-- 242 L1_BRIL_TRIG0_OR : EXT_BRIL_TRIG0_OR
l1_bril_trig0_or <= single_ext_6912739140295604792;
algo(7) <= l1_bril_trig0_or;

-- 244 L1_ETT50_BptxAND : ETT50 AND EXT_BPTX_plus_AND_minus.v0
l1_ett50_bptx_and <= single_ett_18699590320 and single_ext_10371607390599051624;
algo(46) <= l1_ett50_bptx_and;

-- 245 L1_ETT60_BptxAND : ETT60 AND EXT_BPTX_plus_AND_minus.v0
l1_ett60_bptx_and <= single_ett_18699590448 and single_ext_10371607390599051624;
algo(33) <= l1_ett60_bptx_and;

-- 246 L1_MinimumBiasHF0_OR_BptxAND : (MBT0HFP1 OR MBT0HFM1) AND EXT_BPTX_plus_AND_minus.v0
l1_minimum_bias_hf0_or_bptx_and <= ( single_mbt0_hfp_43640316738250801 or single_mbt0_hfm_43640316738250417 ) and single_ext_10371607390599051624;
algo(21) <= l1_minimum_bias_hf0_or_bptx_and;

-- 247 L1_MinimumBiasHF0_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_BPTX_plus_AND_minus.v0
l1_minimum_bias_hf0_and_bptx_and <= ( single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417 ) and single_ext_10371607390599051624;
algo(47) <= l1_minimum_bias_hf0_and_bptx_and;

-- 248 L1_MinimumBiasHF1_OR_BptxAND : (MBT1HFP1 OR MBT1HFM1) AND EXT_BPTX_plus_AND_minus.v0
l1_minimum_bias_hf1_or_bptx_and <= ( single_mbt1_hfp_43640317006686257 or single_mbt1_hfm_43640317006685873 ) and single_ext_10371607390599051624;
algo(48) <= l1_minimum_bias_hf1_or_bptx_and;

-- 249 L1_MinimumBiasHF1_AND_BptxAND : (MBT1HFP1 AND MBT1HFM1) AND EXT_BPTX_plus_AND_minus.v0
l1_minimum_bias_hf1_and_bptx_and <= ( single_mbt1_hfp_43640317006686257 and single_mbt1_hfm_43640317006685873 ) and single_ext_10371607390599051624;
algo(30) <= l1_minimum_bias_hf1_and_bptx_and;

-- 250 L1_MinimumBiasHF0_OR : MBT0HFP1 OR MBT0HFM1
l1_minimum_bias_hf0_or <= single_mbt0_hfp_43640316738250801 or single_mbt0_hfm_43640316738250417;
algo(28) <= l1_minimum_bias_hf0_or;

-- 251 L1_MinimumBiasHF0_AND : MBT0HFP1 AND MBT0HFM1
l1_minimum_bias_hf0_and <= single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417;
algo(19) <= l1_minimum_bias_hf0_and;

-- 252 L1_MinimumBiasHF1_OR : MBT1HFP1 OR MBT1HFM1
l1_minimum_bias_hf1_or <= single_mbt1_hfp_43640317006686257 or single_mbt1_hfm_43640317006685873;
algo(45) <= l1_minimum_bias_hf1_or;

-- 253 L1_MinimumBiasHF1_AND : MBT1HFP1 AND MBT1HFM1
l1_minimum_bias_hf1_and <= single_mbt1_hfp_43640317006686257 and single_mbt1_hfm_43640317006685873;
algo(50) <= l1_minimum_bias_hf1_and;

-- 254 L1_NotBptxOR :  NOT EXT_BPTX_plus_OR_minus.v0
l1_not_bptx_or <= not single_ext_10104897634845317422;
algo(32) <= l1_not_bptx_or;

-- 255 L1_ZeroBias_copy : EXT_BPTX_plus_AND_minus.v0
l1_zero_bias_copy <= single_ext_10371607390599051624;
algo(44) <= l1_zero_bias_copy;

-- 267 L1_DoubleMu0er1p4_dEta_Max1p8_OS : dist{MU0[MU-QLTY_DBLE,MU-ETA_1p4],MU0[MU-QLTY_DBLE,MU-ETA_1p4]}[DETA_MAX_1p8,CHGCOR_OS]
l1_double_mu0er1p4_d_eta_max1p8_os <= muon_muon_correlation_7972376774213455602;
algo(87) <= l1_double_mu0er1p4_d_eta_max1p8_os;

-- 270 L1_IsoEG20er_IsoTau25er_dEta_Min0p2 : dist{EG20[EG-ISO_0xE,EG-ETA_2p13],TAU25[TAU-ISO_0xE,TAU-ETA_2p13]}[DETA_MIN_0p2]
l1_iso_eg20er_iso_tau25er_d_eta_min0p2 <= calo_calo_correlation_14500771630165735872;
algo(93) <= l1_iso_eg20er_iso_tau25er_d_eta_min0p2;

-- 272 L1_ETM75 : ETM75
l1_etm75 <= single_etm_18699475893;
algo(51) <= l1_etm75;

-- 273 L1_ETM85 : ETM85
l1_etm85 <= single_etm_18699476021;
algo(53) <= l1_etm85;

-- 274 L1_ETM95 : ETM95
l1_etm95 <= single_etm_18699476149;
algo(55) <= l1_etm95;

-- 281 L1_FirstBunchInTrain : ( NOT EXT_BPTX_plus_OR_minus.v0-2) AND ( NOT EXT_BPTX_plus_OR_minus.v0-1) AND EXT_BPTX_plus_AND_minus.v0 AND EXT_BPTX_plus_AND_minus.v0+1 AND EXT_BPTX_plus_AND_minus.v0+2
l1_first_bunch_in_train <= ( not single_ext_17561531836164454848 ) and ( not single_ext_17561531836164454847 ) and single_ext_10371607390599051624 and single_ext_15455824636181887404 and single_ext_15455824636181887405;
algo(41) <= l1_first_bunch_in_train;

-- 282 L1_FirstBunchAfterTrain : EXT_BPTX_plus_AND_minus.v0-2 AND EXT_BPTX_plus_AND_minus.v0-1 AND ( NOT EXT_BPTX_plus_OR_minus.v0) AND ( NOT EXT_BPTX_plus_OR_minus.v0+1) AND ( NOT EXT_BPTX_plus_OR_minus.v0+2)
l1_first_bunch_after_train <= single_ext_15455824636181887661 and single_ext_15455824636181887660 and ( not single_ext_10104897634845317422 ) and ( not single_ext_17561531836164454591 ) and ( not single_ext_17561531836164454592 );
algo(18) <= l1_first_bunch_after_train;

-- 290 L1_DoubleJet_90_30_Mj30j30_620 : comb{JET90,JET30} AND mass{JET30,JET30}[MASS_MIN_620]
l1_double_jet_90_30_mj30j30_620 <= double_jet_4162612533456677351 and invariant_mass_14462129420738930134;
algo(92) <= l1_double_jet_90_30_mj30j30_620;

-- 291 L1_DoubleJet_100_30_Mj30j30_620 : comb{JET100,JET30} AND mass{JET30,JET30}[MASS_MIN_620]
l1_double_jet_100_30_mj30j30_620 <= double_jet_16307690244847013269 and invariant_mass_14462129420738930134;
algo(91) <= l1_double_jet_100_30_mj30j30_620;

-- 292 L1_DoubleJet30_Mj30j30_400_Mu6 : MU6[MU-QLTY_SNGL] AND mass{JET30,JET30}[MASS_MIN_400]
l1_double_jet30_mj30j30_400_mu6 <= single_mu_14769293122775847365 and invariant_mass_14462129420734703062;
algo(75) <= l1_double_jet30_mj30j30_400_mu6;

-- 293 L1_DoubleJet30_Mj30j30_400_Mu10 : MU10[MU-QLTY_SNGL] AND mass{JET30,JET30}[MASS_MIN_400]
l1_double_jet30_mj30j30_400_mu10 <= single_mu_17545683025133343173 and invariant_mass_14462129420734703062;
algo(73) <= l1_double_jet30_mj30j30_400_mu10;

-- 294 L1_ETT55_BptxAND : ETT55 AND EXT_BPTX_plus_AND_minus.v0
l1_ett55_bptx_and <= single_ett_18699590325 and single_ext_10371607390599051624;
algo(31) <= l1_ett55_bptx_and;

-- 295 L1_ETT75_BptxAND : ETT75 AND EXT_BPTX_plus_AND_minus.v0
l1_ett75_bptx_and <= single_ett_18699590581 and single_ext_10371607390599051624;
algo(23) <= l1_ett75_bptx_and;

-- 296 L1_CastorGap_BptxAND : EXT_CastorGap AND EXT_BPTX_plus_AND_minus.v0
l1_castor_gap_bptx_and <= single_ext_14106346774065907231 and single_ext_10371607390599051624;
algo(42) <= l1_castor_gap_bptx_and;

-- 297 L1_CastorHighJet_BptxAND : EXT_CastorHighJet AND EXT_BPTX_plus_AND_minus.v0
l1_castor_high_jet_bptx_and <= single_ext_8082506271259815918 and single_ext_10371607390599051624;
algo(38) <= l1_castor_high_jet_bptx_and;

-- 298 L1_CastorMediumJet_BptxAND : EXT_CastorMediumJet AND EXT_BPTX_plus_AND_minus.v0
l1_castor_medium_jet_bptx_and <= single_ext_13411810255817494270 and single_ext_10371607390599051624;
algo(15) <= l1_castor_medium_jet_bptx_and;

-- 299 L1_CastorHaloMuon_BptxAND : EXT_CastorHaloMuon AND EXT_BPTX_plus_AND_minus.v0
l1_castor_halo_muon_bptx_and <= single_ext_1543099582833751334 and single_ext_10371607390599051624;
algo(43) <= l1_castor_halo_muon_bptx_and;

-- 300 L1_CastorHaloMuon : EXT_CastorHaloMuon
l1_castor_halo_muon <= single_ext_1543099582833751334;
algo(39) <= l1_castor_halo_muon;

-- 303 L1_SingleJet8 : JET8
l1_single_jet8 <= single_jet_156330552;
algo(27) <= l1_single_jet8;

-- 304 L1_SingleJet12 : JET12
l1_single_jet12 <= single_jet_20010309810;
algo(20) <= l1_single_jet12;


-- ========================================================