-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Vienna2018_v1

-- Unique ID of L1 Trigger Menu:
-- e8963a1b-c6a7-4540-8841-b2c9b4d3d8ff

-- Unique ID of firmware implementation:
-- 2f5fb397-e993-4681-aa57-c97d66129129

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.2.1

-- Signal definition of pt, eta and phi for correlation conditions.
-- Insert "signal_correlation_conditions_pt_eta_phi_cos_sin_phi.vhd.j2" as often as an ObjectType at a certain Bx is used in a correlation condition.
    signal mu_pt_vector_bx_0: diff_inputs_array(0 to NR_MU_OBJECTS-1) := (others => (others => '0'));
    signal mu_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal eg_pt_vector_bx_0: diff_inputs_array(0 to NR_EG_OBJECTS-1) := (others => (others => '0'));
    signal eg_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal conv_eg_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal conv_eg_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal tau_pt_vector_bx_0: diff_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => (others => '0'));
    signal tau_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal conv_tau_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal conv_tau_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal etm_pt_vector_bx_0: diff_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => (others => '0'));
    signal etm_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal conv_etm_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal conv_etm_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal jet_pt_vector_bx_0: diff_inputs_array(0 to NR_JET_OBJECTS-1) := (others => (others => '0'));
    signal jet_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal conv_jet_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal conv_jet_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);

-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.
    signal diff_jet_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_etm_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_etm_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_etm_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cosh_deta_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cos_dphi_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));

-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_ext_10333571493211026812 : std_logic;
    signal single_ext_17417807877912935668 : std_logic;
    signal single_ext_17960169865075597331 : std_logic;
    signal single_ext_4108951444235007726 : std_logic;
    signal single_ext_6953200472440552930 : std_logic;
    signal single_ext_866206785869629780 : std_logic;
    signal single_ext_9945386645006164836 : std_logic;
    signal single_ext_9960888781174681113 : std_logic;
    signal single_etm_18699475376 : std_logic;
    signal single_etm_18699475504 : std_logic;
    signal single_etm_18699475637 : std_logic;
    signal single_etm_18699475760 : std_logic;
    signal single_etm_18699475765 : std_logic;
    signal single_etm_18699475888 : std_logic;
    signal single_etm_18699476016 : std_logic;
    signal single_etm_18699476021 : std_logic;
    signal single_etm_18699476144 : std_logic;
    signal single_etm_18699476149 : std_logic;
    signal single_etm_2393532815408 : std_logic;
    signal single_etm_2393532815413 : std_logic;
    signal single_etm_2393532815536 : std_logic;
    signal single_etm_2393532815541 : std_logic;
    signal single_etm_2393532815664 : std_logic;
    signal single_etmhf_306372248967728 : std_logic;
    signal single_etmhf_306372248967856 : std_logic;
    signal single_etmhf_306372248967984 : std_logic;
    signal single_etmhf_306372248968112 : std_logic;
    signal single_etmhf_306372248968240 : std_logic;
    signal single_etmhf_306372248968368 : std_logic;
    signal single_etmhf_39215647867820080 : std_logic;
    signal single_etmhf_39215647867820208 : std_logic;
    signal single_etmhf_39215647867820336 : std_logic;
    signal single_htt_19504896816 : std_logic;
    signal single_htt_2496626710576 : std_logic;
    signal single_htt_2496626710837 : std_logic;
    signal single_htt_2496626711216 : std_logic;
    signal single_htt_2496626726960 : std_logic;
    signal single_htt_2496626727216 : std_logic;
    signal single_htt_2496626727472 : std_logic;
    signal single_htt_2496626727600 : std_logic;
    signal single_htt_2496626727605 : std_logic;
    signal single_htt_2496626727856 : std_logic;
    signal single_htt_2496626727984 : std_logic;
    signal single_htt_2496626743344 : std_logic;
    signal single_htt_2496626759728 : std_logic;
    signal single_htt_2496626776112 : std_logic;
    signal calo_calo_correlation_7041035331702023693 : std_logic;
    signal calo_esum_correlation_16768129600298173713 : std_logic;
    signal muon_muon_correlation_15199048927445899759 : std_logic;
    signal muon_muon_correlation_16784489743460462578 : std_logic;
    signal muon_muon_correlation_7972376774213455602 : std_logic;
    signal muon_muon_correlation_8772456668275224612 : std_logic;
    signal muon_muon_correlation_9513481109949270451 : std_logic;
    signal double_eg_13299746526186732683 : std_logic;
    signal double_eg_13782406706523981474 : std_logic;
    signal double_eg_14367260113818400607 : std_logic;
    signal double_eg_14367290900143979231 : std_logic;
    signal double_eg_14367823063771822943 : std_logic;
    signal double_eg_14367831859864844383 : std_logic;
    signal double_eg_14367836257911355231 : std_logic;
    signal double_eg_14367845054004377695 : std_logic;
    signal double_eg_14367845054004377951 : std_logic;
    signal double_eg_2355036583129339571 : std_logic;
    signal double_eg_8902241742241126126 : std_logic;
    signal double_jet_10840719965249128790 : std_logic;
    signal double_jet_15903553762640785506 : std_logic;
    signal double_jet_15939450583904677986 : std_logic;
    signal double_jet_17504692923644168291 : std_logic;
    signal double_jet_3730266969229109735 : std_logic;
    signal double_jet_3805139313034161255 : std_logic;
    signal double_jet_3851467703317088356 : std_logic;
    signal double_jet_3851467703875127396 : std_logic;
    signal double_jet_7821119012726214247 : std_logic;
    signal double_jet_7821119013284253287 : std_logic;
    signal double_jet_8659228526237518547 : std_logic;
    signal double_jet_8659301094004951763 : std_logic;
    signal double_mu_13627348644483379947 : std_logic;
    signal double_mu_14585777620730815295 : std_logic;
    signal double_mu_14585778268989477695 : std_logic;
    signal double_mu_14585786515326686015 : std_logic;
    signal double_mu_14617142003772573591 : std_logic;
    signal double_mu_16961154507842811908 : std_logic;
    signal double_mu_16961158905889323012 : std_logic;
    signal double_mu_16961163303935834116 : std_logic;
    signal double_mu_16961163853691648004 : std_logic;
    signal double_mu_17582786187978172426 : std_logic;
    signal double_mu_2488845469206592112 : std_logic;
    signal double_mu_3224017188937267724 : std_logic;
    signal double_mu_3246535187074120204 : std_logic;
    signal double_mu_3274363720173353484 : std_logic;
    signal double_tau_14808338292319009533 : std_logic;
    signal double_tau_14808338296613976830 : std_logic;
    signal double_tau_15233202657361500387 : std_logic;
    signal double_tau_3279123247861152510 : std_logic;
    signal double_tau_7890809267362282238 : std_logic;
    signal quad_jet_17630949366336433287 : std_logic;
    signal quad_jet_2750930524417894580 : std_logic;
    signal quad_jet_2825312486036940980 : std_logic;
    signal quad_jet_2899694447655987380 : std_logic;
    signal single_eg_12507428088042853184 : std_logic;
    signal single_eg_12507579852048143168 : std_logic;
    signal single_eg_12507579852056531776 : std_logic;
    signal single_eg_12507579852182360896 : std_logic;
    signal single_eg_12507579852185506624 : std_logic;
    signal single_eg_12507579852320772672 : std_logic;
    signal single_eg_12507579852321821248 : std_logic;
    signal single_eg_12507579852322869824 : std_logic;
    signal single_eg_12507579852323918400 : std_logic;
    signal single_eg_14262501742662192051 : std_logic;
    signal single_eg_14262501742930627507 : std_logic;
    signal single_eg_145873072 : std_logic;
    signal single_eg_145873074 : std_logic;
    signal single_eg_145873077 : std_logic;
    signal single_eg_145873079 : std_logic;
    signal single_eg_145873080 : std_logic;
    signal single_eg_145873200 : std_logic;
    signal single_eg_145873203 : std_logic;
    signal single_eg_145873206 : std_logic;
    signal single_eg_145873328 : std_logic;
    signal single_eg_145873332 : std_logic;
    signal single_eg_145873334 : std_logic;
    signal single_eg_145873336 : std_logic;
    signal single_eg_145873456 : std_logic;
    signal single_eg_145873461 : std_logic;
    signal single_eg_145873584 : std_logic;
    signal single_eg_6872811427209405681 : std_logic;
    signal single_eg_6872943368604738801 : std_logic;
    signal single_eg_6872945567627994353 : std_logic;
    signal single_eg_6872947766651249905 : std_logic;
    signal single_eg_6872949965674505457 : std_logic;
    signal single_eg_6872952164697761009 : std_logic;
    signal single_eg_6873084106093094129 : std_logic;
    signal single_eg_6873086305116349681 : std_logic;
    signal single_eg_9244738805910375422 : std_logic;
    signal single_eg_9244741004933630974 : std_logic;
    signal single_eg_9244743203956886526 : std_logic;
    signal single_eg_9244883941445241598 : std_logic;
    signal single_eg_9245015882840574718 : std_logic;
    signal single_jet_13432253330327927178 : std_logic;
    signal single_jet_15873314026556030401 : std_logic;
    signal single_jet_15873314026560390081 : std_logic;
    signal single_jet_1950256523785076171 : std_logic;
    signal single_jet_1950256523789435851 : std_logic;
    signal single_jet_20010309814 : std_logic;
    signal single_jet_20010309936 : std_logic;
    signal single_jet_20010310069 : std_logic;
    signal single_jet_20010310448 : std_logic;
    signal single_jet_20010310832 : std_logic;
    signal single_jet_2561319655984 : std_logic;
    signal single_jet_2561319656368 : std_logic;
    signal single_jet_5967545310209469767 : std_logic;
    signal single_jet_7529294815024254598 : std_logic;
    signal single_jet_8640423326805719435 : std_logic;
    signal single_mu_1272496 : std_logic;
    signal single_mu_14769293071236239813 : std_logic;
    signal single_mu_14769293105595978181 : std_logic;
    signal single_mu_14769293122775847365 : std_logic;
    signal single_mu_14769293139955716549 : std_logic;
    signal single_mu_14769293157135585733 : std_logic;
    signal single_mu_17494117756195063635 : std_logic;
    signal single_mu_17545683021081726533 : std_logic;
    signal single_mu_17545683059493081541 : std_logic;
    signal single_mu_17545683111032689093 : std_logic;
    signal single_mu_17545683162572296645 : std_logic;
    signal single_mu_17545685224156598725 : std_logic;
    signal single_mu_17545685275696206277 : std_logic;
    signal single_mu_17545687423179854277 : std_logic;
    signal single_mu_5290897791608380091 : std_logic;
    signal single_mu_6225176159725710459 : std_logic;
    signal single_mu_6945763095867696771 : std_logic;
    signal single_mu_7037562455545169312 : std_logic;
    signal single_mu_7069342828816371872 : std_logic;
    signal single_mu_7109620049583097248 : std_logic;
    signal single_mu_7145648846602061216 : std_logic;
    signal single_mu_7990946204847842434 : std_logic;
    signal single_mu_9379434265999970464 : std_logic;
    signal single_tau_12210388642533153582 : std_logic;
    signal single_tau_16608844133906550600 : std_logic;
    signal single_tau_3484215725702552004 : std_logic;
    signal single_tau_3484220123749063108 : std_logic;
    signal triple_eg_4430569450691365292 : std_logic;
    signal triple_eg_667988932384139803 : std_logic;
    signal triple_jet_10368473821548883594 : std_logic;
    signal triple_jet_1514927488963884831 : std_logic;
    signal triple_jet_1776207310752122438 : std_logic;
    signal triple_jet_4911751765552035770 : std_logic;
    signal triple_jet_4911751765569599162 : std_logic;
    signal triple_jet_4911751765585033658 : std_logic;
    signal triple_jet_4911751765586049466 : std_logic;
    signal triple_jet_4911751765602597050 : std_logic;
    signal triple_jet_4911751765603112890 : std_logic;
    signal triple_jet_655678244564243471 : std_logic;
    signal triple_jet_655678244564763279 : std_logic;
    signal triple_mu_3324682852515662879 : std_logic;
    signal triple_mu_3324683539710430239 : std_logic;
    signal triple_mu_3324691511169731615 : std_logic;
    signal triple_mu_3324694397387754527 : std_logic;
    signal triple_mu_9287399899537551596 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics : std_logic;
    signal l1_single_mu_cosmics_emtf : std_logic;
    signal l1_single_mu0_emtf : std_logic;
    signal l1_single_mu3 : std_logic;
    signal l1_single_mu5 : std_logic;
    signal l1_single_mu7 : std_logic;
    signal l1_single_mu10_low_q : std_logic;
    signal l1_single_mu12_low_q_bmtf : std_logic;
    signal l1_single_mu12_low_q_omtf : std_logic;
    signal l1_single_mu18 : std_logic;
    signal l1_single_mu20 : std_logic;
    signal l1_single_mu22_bmtf : std_logic;
    signal l1_single_mu22_omtf : std_logic;
    signal l1_single_mu30 : std_logic;
    signal l1_single_mu14er2p1 : std_logic;
    signal l1_single_mu16er2p1 : std_logic;
    signal l1_double_mu0 : std_logic;
    signal l1_double_mu_11_4 : std_logic;
    signal l1_double_mu_12_8 : std_logic;
    signal l1_double_mu_15_5 : std_logic;
    signal l1_double_mu_15_7 : std_logic;
    signal l1_double_mu22er2p1 : std_logic;
    signal l1_triple_mu0 : std_logic;
    signal l1_triple_mu3 : std_logic;
    signal l1_triple_mu_4_4_4 : std_logic;
    signal l1_triple_mu_5_0_0 : std_logic;
    signal l1_single_eg10 : std_logic;
    signal l1_single_eg15 : std_logic;
    signal l1_single_eg18 : std_logic;
    signal l1_single_eg26 : std_logic;
    signal l1_single_eg30 : std_logic;
    signal l1_single_eg34 : std_logic;
    signal l1_single_eg36 : std_logic;
    signal l1_single_eg38 : std_logic;
    signal l1_single_eg40 : std_logic;
    signal l1_single_eg45 : std_logic;
    signal l1_single_eg50 : std_logic;
    signal l1_single_iso_eg34 : std_logic;
    signal l1_single_iso_eg35 : std_logic;
    signal l1_single_iso_eg36 : std_logic;
    signal l1_single_iso_eg37 : std_logic;
    signal l1_single_iso_eg18er2p1 : std_logic;
    signal l1_single_iso_eg20er2p1 : std_logic;
    signal l1_single_iso_eg22er2p1 : std_logic;
    signal l1_single_iso_eg24er2p1 : std_logic;
    signal l1_single_iso_eg26er2p1 : std_logic;
    signal l1_single_iso_eg28er2p1 : std_logic;
    signal l1_single_iso_eg30er2p1 : std_logic;
    signal l1_single_iso_eg32er2p1 : std_logic;
    signal l1_single_iso_eg38er2p1 : std_logic;
    signal l1_single_iso_eg40er2p1 : std_logic;
    signal l1_double_eg_20_18 : std_logic;
    signal l1_double_eg_22_12 : std_logic;
    signal l1_double_eg_23_10 : std_logic;
    signal l1_double_eg_25_12 : std_logic;
    signal l1_double_eg_25_14 : std_logic;
    signal l1_double_loose_iso_eg22er2p1 : std_logic;
    signal l1_triple_eg_14_10_8 : std_logic;
    signal l1_single_tau80er2p1 : std_logic;
    signal l1_single_tau120er2p1 : std_logic;
    signal l1_single_tau140er2p1 : std_logic;
    signal l1_double_tau50er2p1 : std_logic;
    signal l1_double_iso_tau30er2p1 : std_logic;
    signal l1_double_iso_tau33er2p1 : std_logic;
    signal l1_double_iso_tau35er2p1 : std_logic;
    signal l1_double_iso_tau38er2p1 : std_logic;
    signal l1_single_jet16 : std_logic;
    signal l1_single_jet20 : std_logic;
    signal l1_single_jet35 : std_logic;
    signal l1_single_jet60 : std_logic;
    signal l1_single_jet90 : std_logic;
    signal l1_single_jet140 : std_logic;
    signal l1_single_jet170 : std_logic;
    signal l1_single_jet60_fwd : std_logic;
    signal l1_single_jet120_fwd : std_logic;
    signal l1_single_jet35_h_fp : std_logic;
    signal l1_single_jet60_h_fp : std_logic;
    signal l1_double_jet50er2p7 : std_logic;
    signal l1_double_jet60er2p7 : std_logic;
    signal l1_double_jet112er2p7 : std_logic;
    signal l1_double_jet150er2p7 : std_logic;
    signal l1_triple_jet_84_68_48_vbf : std_logic;
    signal l1_triple_jet_92_76_64_vbf : std_logic;
    signal l1_triple_jet_100_85_72_vbf : std_logic;
    signal l1_quad_jet40er2p7 : std_logic;
    signal l1_quad_jet50er2p7 : std_logic;
    signal l1_quad_jet60er2p7 : std_logic;
    signal l1_htt200er : std_logic;
    signal l1_htt220er : std_logic;
    signal l1_htt240er : std_logic;
    signal l1_htt255er : std_logic;
    signal l1_htt270er : std_logic;
    signal l1_htt280er : std_logic;
    signal l1_htt300er : std_logic;
    signal l1_htt400er : std_logic;
    signal l1_htt500er : std_logic;
    signal l1_etm30 : std_logic;
    signal l1_etm40 : std_logic;
    signal l1_etm60 : std_logic;
    signal l1_etm70 : std_logic;
    signal l1_etm80 : std_logic;
    signal l1_etm85 : std_logic;
    signal l1_etm90 : std_logic;
    signal l1_etm95 : std_logic;
    signal l1_etm100 : std_logic;
    signal l1_etm105 : std_logic;
    signal l1_etm110 : std_logic;
    signal l1_etm115 : std_logic;
    signal l1_etm120 : std_logic;
    signal l1_etmhf70 : std_logic;
    signal l1_etmhf80 : std_logic;
    signal l1_etmhf90 : std_logic;
    signal l1_etmhf100 : std_logic;
    signal l1_etmhf110 : std_logic;
    signal l1_etmhf120 : std_logic;
    signal l1_always_true11 : std_logic;
    signal l1_always_true12 : std_logic;
    signal l1_always_true13 : std_logic;
    signal l1_always_true14 : std_logic;
    signal l1_always_true15 : std_logic;
    signal l1_always_true16 : std_logic;
    signal l1_double_mu0er1p5_sq_d_r_max1p4 : std_logic;
    signal l1_loose_iso_eg24er2p1_htt100er : std_logic;
    signal l1_loose_iso_eg26er2p1_htt100er : std_logic;
    signal l1_loose_iso_eg28er2p1_htt100er : std_logic;
    signal l1_loose_iso_eg24er2p1_triple_jet_26er2p7_26_26er2p7 : std_logic;
    signal l1_mu18_htt100er : std_logic;
    signal l1_mu18_jet24er2p7 : std_logic;
    signal l1_mu20_eg17 : std_logic;
    signal l1_mu23_eg10 : std_logic;
    signal l1_mu23_loose_iso_eg10 : std_logic;
    signal l1_mu5_eg23 : std_logic;
    signal l1_mu5_loose_iso_eg20 : std_logic;
    signal l1_mu7_eg23 : std_logic;
    signal l1_mu7_loose_iso_eg20 : std_logic;
    signal l1_mu7_loose_iso_eg23 : std_logic;
    signal l1_htt250er_quad_jet_70_55_40_35_er2p5 : std_logic;
    signal l1_htt280er_quad_jet_70_55_40_35_er2p5 : std_logic;
    signal l1_htt300er_quad_jet_70_55_40_35_er2p5 : std_logic;
    signal l1_double_jet100er2p3_d_eta_max1p6 : std_logic;
    signal l1_iso_tau40er_etm80 : std_logic;
    signal l1_iso_tau40er_etm85 : std_logic;
    signal l1_iso_tau40er_etm90 : std_logic;
    signal l1_iso_tau40er_etm95 : std_logic;
    signal l1_iso_tau40er_etm100 : std_logic;
    signal l1_iso_tau40er_etm105 : std_logic;
    signal l1_iso_tau40er_etm110 : std_logic;
    signal l1_iso_tau40er_etm115 : std_logic;
    signal l1_iso_tau40er_etm120 : std_logic;
    signal l1_iso_tau40er_etmhf80 : std_logic;
    signal l1_iso_tau40er_etmhf90 : std_logic;
    signal l1_iso_tau40er_etmhf100 : std_logic;
    signal l1_iso_tau40er_etmhf110 : std_logic;
    signal l1_iso_tau40er_etmhf120 : std_logic;
    signal l1_mu22er2p1_iso_tau40er2p1 : std_logic;
    signal l1_etm80_jet60_d_phi_min0p4 : std_logic;
    signal l1_double_jet60er2p7_etm70 : std_logic;
    signal l1_double_jet60er2p7_etm80 : std_logic;
    signal l1_double_jet60er2p7_etm90 : std_logic;
    signal l1_double_jet60er2p7_etm100 : std_logic;
    signal l1_double_eg_loose_iso24_10 : std_logic;
    signal l1_triple_eg_loose_iso20_10_5 : std_logic;
    signal l1_mu6_htt240er : std_logic;
    signal l1_mu6_htt250er : std_logic;
    signal l1_mu15_htt100er : std_logic;
    signal l1_double_mu3_sq_etmhf40_jet60_or_double_jet30 : std_logic;
    signal l1_double_mu3_sq_etmhf50_jet60_or_double_jet30 : std_logic;
    signal l1_double_mu3_sq_etmhf60_jet60_or_double_jet30 : std_logic;
    signal l1_double_mu3_sq_etmhf70_jet60_or_double_jet30 : std_logic;
    signal l1_double_mu3_sq_etmhf80_jet60_or_double_jet30 : std_logic;
    signal l1_double_mu3_sq_htt100er : std_logic;
    signal l1_double_mu3_sq_htt200er : std_logic;
    signal l1_double_mu3_sq_htt220er : std_logic;
    signal l1_double_mu3_sq_htt240er : std_logic;
    signal l1_double_eg6_htt240er : std_logic;
    signal l1_double_eg6_htt250er : std_logic;
    signal l1_double_eg6_htt270er : std_logic;
    signal l1_double_eg6_htt300er : std_logic;
    signal l1_double_eg8er2p6_htt255er : std_logic;
    signal l1_double_eg8er2p6_htt270er : std_logic;
    signal l1_double_eg8er2p6_htt300er : std_logic;
    signal l1_etmhf100_jet60_or_double_jet30 : std_logic;
    signal l1_etmhf100_jet60_or_di_jet30wo_tt28 : std_logic;
    signal l1_etmhf110_jet60_or_di_jet30wo_tt28 : std_logic;
    signal l1_etmhf120_jet60_or_di_jet30wo_tt28 : std_logic;
    signal l1_etmhf70_jet90_or_double_jet45_or_triple_jet30 : std_logic;
    signal l1_etmhf80_jet90_or_double_jet45_or_triple_jet30 : std_logic;
    signal l1_etmhf90_jet90_or_double_jet45_or_triple_jet30 : std_logic;
    signal l1_etmhf100_jet90_or_double_jet45_or_triple_jet30 : std_logic;
    signal l1_etmhf110_jet90_or_double_jet45_or_triple_jet30 : std_logic;
    signal l1_etmhf80_htt60er : std_logic;
    signal l1_etmhf90_htt60er : std_logic;
    signal l1_etmhf100_htt60er : std_logic;
    signal l1_etmhf110_htt60er : std_logic;
    signal l1_etmhf120_htt60er : std_logic;
    signal l1_mu3_jet30er2p5 : std_logic;
    signal l1_double_mu4_sq_os_d_r_max1p2 : std_logic;
    signal l1_double_mu4_os_eg12 : std_logic;
    signal l1_double_mu0er1p4_sq_os_d_r_max1p4 : std_logic;
    signal l1_double_mu5_os_eg12 : std_logic;
    signal l1_double_mu6_sq_os : std_logic;
    signal l1_double_mu0_sq : std_logic;
    signal l1_double_mu4p5_sq : std_logic;
    signal l1_double_mu4p5er2p0_sq_os : std_logic;
    signal l1_double_mu0er1p5_sq_os : std_logic;
    signal l1_triple_mu_5_3p5_2p5 : std_logic;
    signal l1_mu6_double_eg17 : std_logic;
    signal l1_mu5_eg15 : std_logic;
    signal l1_mu5_eg20 : std_logic;
    signal l1_mu5_loose_iso_eg18 : std_logic;
    signal l1_mu12_eg10 : std_logic;
    signal l1_mu20_eg10 : std_logic;
    signal l1_mu20_eg15 : std_logic;
    signal l1_mu20_loose_iso_eg6 : std_logic;
    signal l1_mu6_htt200er : std_logic;
    signal l1_mu8_htt150er : std_logic;
    signal l1_eg25er2p1_htt125er : std_logic;
    signal l1_eg27er2p1_htt200er : std_logic;
    signal l1_double_jet60er2p7_etm60 : std_logic;
    signal l1_double_mu0_etm40 : std_logic;
    signal l1_double_mu0_etm55 : std_logic;
    signal l1_double_mu0_etm60 : std_logic;
    signal l1_double_mu0_etm65 : std_logic;
    signal l1_double_mu0_etm70 : std_logic;
    signal l1_double_eg6_htt255er : std_logic;
    signal l1_double_mu0er1p4_d_eta_max1p8_os : std_logic;
    signal l1_double_mu_10_0_d_eta_max1p8 : std_logic;
    signal l1_mu6_double_eg10 : std_logic;
    signal l1_mu10er2p1_etm30 : std_logic;
    signal l1_mu14er2p1_etm30 : std_logic;
    signal l1_bptx_beam_gas_ref1_vme : std_logic;
    signal l1_bptx_beam_gas_b1_vme : std_logic;
    signal l1_unpaired_bunch_bptx_plus : std_logic;
    signal l1_bptx_not_or_vme : std_logic;
    signal l1_bptx_and_ref3_vme : std_logic;
    signal l1_first_collision_in_orbit : std_logic;
    signal l1_bptx_or_ref4_vme : std_logic;
    signal l1_last_collision_in_train : std_logic;

-- ========================================================