/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern void execute_786(char*, char *);
extern void execute_787(char*, char *);
extern void vlog_simple_process_execute_0_fast_for_reg(char*, char*, char*);
extern void execute_1740(char*, char *);
extern void execute_1741(char*, char *);
extern void execute_1742(char*, char *);
extern void execute_1743(char*, char *);
extern void execute_1744(char*, char *);
extern void execute_1745(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_4(char*, char *);
extern void execute_792(char*, char *);
extern void execute_793(char*, char *);
extern void execute_794(char*, char *);
extern void execute_837(char*, char *);
extern void execute_35(char*, char *);
extern void execute_838(char*, char *);
extern void execute_41(char*, char *);
extern void execute_843(char*, char *);
extern void execute_844(char*, char *);
extern void execute_845(char*, char *);
extern void execute_846(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_81(char*, char *);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void execute_909(char*, char *);
extern void execute_910(char*, char *);
extern void execute_911(char*, char *);
extern void execute_912(char*, char *);
extern void execute_85(char*, char *);
extern void execute_99(char*, char *);
extern void execute_100(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg(char*, char*, char*);
extern void execute_103(char*, char *);
extern void execute_104(char*, char *);
extern void execute_111(char*, char *);
extern void execute_927(char*, char *);
extern void execute_928(char*, char *);
extern void execute_926(char*, char *);
extern void execute_119(char*, char *);
extern void execute_931(char*, char *);
extern void execute_932(char*, char *);
extern void execute_933(char*, char *);
extern void execute_934(char*, char *);
extern void execute_935(char*, char *);
extern void execute_936(char*, char *);
extern void execute_937(char*, char *);
extern void execute_938(char*, char *);
extern void execute_930(char*, char *);
extern void execute_150(char*, char *);
extern void execute_949(char*, char *);
extern void execute_950(char*, char *);
extern void execute_951(char*, char *);
extern void execute_952(char*, char *);
extern void execute_948(char*, char *);
extern void execute_1403(char*, char *);
extern void execute_1404(char*, char *);
extern void execute_1339(char*, char *);
extern void execute_1340(char*, char *);
extern void execute_1341(char*, char *);
extern void execute_1344(char*, char *);
extern void execute_1345(char*, char *);
extern void execute_1346(char*, char *);
extern void execute_1347(char*, char *);
extern void execute_1681(char*, char *);
extern void execute_1686(char*, char *);
extern void execute_1692(char*, char *);
extern void execute_1701(char*, char *);
extern void execute_1707(char*, char *);
extern void execute_702(char*, char *);
extern void execute_703(char*, char *);
extern void execute_704(char*, char *);
extern void execute_1573(char*, char *);
extern void execute_1574(char*, char *);
extern void execute_1575(char*, char *);
extern void execute_789(char*, char *);
extern void execute_790(char*, char *);
extern void execute_791(char*, char *);
extern void execute_1746(char*, char *);
extern void execute_1747(char*, char *);
extern void execute_1748(char*, char *);
extern void execute_1749(char*, char *);
extern void execute_1750(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_127(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_131(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_132(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_696(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_697(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_698(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_699(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_700(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_701(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_702(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_703(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_705(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_706(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_707(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_708(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_709(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_710(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_711(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_712(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_713(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_714(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_715(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_716(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_717(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_718(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_719(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_720(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_721(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_722(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_726(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1014(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1015(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1016(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1017(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1018(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1019(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1020(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1021(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1022(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1023(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1024(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1025(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1026(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1027(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1028(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1029(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1030(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1031(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1032(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1033(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1034(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1035(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1036(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1037(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1038(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1039(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1040(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1041(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1042(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1043(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1044(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1045(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1046(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1047(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1048(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1049(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1050(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1051(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1052(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1053(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1055(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1056(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1057(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1058(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1059(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1060(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1061(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1062(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1063(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1064(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1065(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1066(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1067(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1068(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1069(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1070(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1072(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1073(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_156(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_162(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_168(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_259(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_264(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_269(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_274(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_313(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_318(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_323(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_328(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_358(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_363(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_368(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_373(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_378(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_383(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_388(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_393(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_415(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_449(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_454(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_459(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_489(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_565(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_570(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_575(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_580(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_585(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_590(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_595(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_600(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_617(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_622(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_679(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_684(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_694(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_792(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_797(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_802(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_807(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_812(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_827(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_832(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_837(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_842(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_856(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_906(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_911(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_921(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_974(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_979(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_984(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_989(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_994(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_999(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1245(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1258(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1262(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1266(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1279(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1283(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1287(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1291(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1304(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1308(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1312(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1316(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1320(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1324(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1328(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1341(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1345(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1349(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1353(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1366(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[254] = {(funcp)execute_786, (funcp)execute_787, (funcp)vlog_simple_process_execute_0_fast_for_reg, (funcp)execute_1740, (funcp)execute_1741, (funcp)execute_1742, (funcp)execute_1743, (funcp)execute_1744, (funcp)execute_1745, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_4, (funcp)execute_792, (funcp)execute_793, (funcp)execute_794, (funcp)execute_837, (funcp)execute_35, (funcp)execute_838, (funcp)execute_41, (funcp)execute_843, (funcp)execute_844, (funcp)execute_845, (funcp)execute_846, (funcp)execute_78, (funcp)execute_79, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_81, (funcp)execute_82, (funcp)execute_83, (funcp)execute_909, (funcp)execute_910, (funcp)execute_911, (funcp)execute_912, (funcp)execute_85, (funcp)execute_99, (funcp)execute_100, (funcp)vlog_simple_process_execute_0_fast_no_reg, (funcp)execute_103, (funcp)execute_104, (funcp)execute_111, (funcp)execute_927, (funcp)execute_928, (funcp)execute_926, (funcp)execute_119, (funcp)execute_931, (funcp)execute_932, (funcp)execute_933, (funcp)execute_934, (funcp)execute_935, (funcp)execute_936, (funcp)execute_937, (funcp)execute_938, (funcp)execute_930, (funcp)execute_150, (funcp)execute_949, (funcp)execute_950, (funcp)execute_951, (funcp)execute_952, (funcp)execute_948, (funcp)execute_1403, (funcp)execute_1404, (funcp)execute_1339, (funcp)execute_1340, (funcp)execute_1341, (funcp)execute_1344, (funcp)execute_1345, (funcp)execute_1346, (funcp)execute_1347, (funcp)execute_1681, (funcp)execute_1686, (funcp)execute_1692, (funcp)execute_1701, (funcp)execute_1707, (funcp)execute_702, (funcp)execute_703, (funcp)execute_704, (funcp)execute_1573, (funcp)execute_1574, (funcp)execute_1575, (funcp)execute_789, (funcp)execute_790, (funcp)execute_791, (funcp)execute_1746, (funcp)execute_1747, (funcp)execute_1748, (funcp)execute_1749, (funcp)execute_1750, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_35, (funcp)transaction_46, (funcp)transaction_48, (funcp)transaction_127, (funcp)transaction_131, (funcp)transaction_132, (funcp)transaction_696, (funcp)transaction_697, (funcp)transaction_698, (funcp)transaction_699, (funcp)transaction_700, (funcp)transaction_701, (funcp)transaction_702, (funcp)transaction_703, (funcp)transaction_705, (funcp)transaction_706, (funcp)transaction_707, (funcp)transaction_708, (funcp)transaction_709, (funcp)transaction_710, (funcp)transaction_711, (funcp)transaction_712, (funcp)transaction_713, (funcp)transaction_714, (funcp)transaction_715, (funcp)transaction_716, (funcp)transaction_717, (funcp)transaction_718, (funcp)transaction_719, (funcp)transaction_720, (funcp)transaction_721, (funcp)transaction_722, (funcp)transaction_726, (funcp)transaction_1014, (funcp)transaction_1015, (funcp)transaction_1016, (funcp)transaction_1017, (funcp)transaction_1018, (funcp)transaction_1019, (funcp)transaction_1020, (funcp)transaction_1021, (funcp)transaction_1022, (funcp)transaction_1023, (funcp)transaction_1024, (funcp)transaction_1025, (funcp)transaction_1026, (funcp)transaction_1027, (funcp)transaction_1028, (funcp)transaction_1029, (funcp)transaction_1030, (funcp)transaction_1031, (funcp)transaction_1032, (funcp)transaction_1033, (funcp)transaction_1034, (funcp)transaction_1035, (funcp)transaction_1036, (funcp)transaction_1037, (funcp)transaction_1038, (funcp)transaction_1039, (funcp)transaction_1040, (funcp)transaction_1041, (funcp)transaction_1042, (funcp)transaction_1043, (funcp)transaction_1044, (funcp)transaction_1045, (funcp)transaction_1046, (funcp)transaction_1047, (funcp)transaction_1048, (funcp)transaction_1049, (funcp)transaction_1050, (funcp)transaction_1051, (funcp)transaction_1052, (funcp)transaction_1053, (funcp)transaction_1055, (funcp)transaction_1056, (funcp)transaction_1057, (funcp)transaction_1058, (funcp)transaction_1059, (funcp)transaction_1060, (funcp)transaction_1061, (funcp)transaction_1062, (funcp)transaction_1063, (funcp)transaction_1064, (funcp)transaction_1065, (funcp)transaction_1066, (funcp)transaction_1067, (funcp)transaction_1068, (funcp)transaction_1069, (funcp)transaction_1070, (funcp)transaction_1072, (funcp)transaction_1073, (funcp)transaction_156, (funcp)transaction_162, (funcp)transaction_168, (funcp)transaction_259, (funcp)transaction_264, (funcp)transaction_269, (funcp)transaction_274, (funcp)transaction_313, (funcp)transaction_318, (funcp)transaction_323, (funcp)transaction_328, (funcp)transaction_358, (funcp)transaction_363, (funcp)transaction_368, (funcp)transaction_373, (funcp)transaction_378, (funcp)transaction_383, (funcp)transaction_388, (funcp)transaction_393, (funcp)transaction_415, (funcp)transaction_449, (funcp)transaction_454, (funcp)transaction_459, (funcp)transaction_489, (funcp)transaction_565, (funcp)transaction_570, (funcp)transaction_575, (funcp)transaction_580, (funcp)transaction_585, (funcp)transaction_590, (funcp)transaction_595, (funcp)transaction_600, (funcp)transaction_617, (funcp)transaction_622, (funcp)transaction_679, (funcp)transaction_684, (funcp)transaction_694, (funcp)transaction_792, (funcp)transaction_797, (funcp)transaction_802, (funcp)transaction_807, (funcp)transaction_812, (funcp)transaction_827, (funcp)transaction_832, (funcp)transaction_837, (funcp)transaction_842, (funcp)transaction_856, (funcp)transaction_906, (funcp)transaction_911, (funcp)transaction_921, (funcp)transaction_974, (funcp)transaction_979, (funcp)transaction_984, (funcp)transaction_989, (funcp)transaction_994, (funcp)transaction_999, (funcp)transaction_1245, (funcp)transaction_1258, (funcp)transaction_1262, (funcp)transaction_1266, (funcp)transaction_1279, (funcp)transaction_1283, (funcp)transaction_1287, (funcp)transaction_1291, (funcp)transaction_1304, (funcp)transaction_1308, (funcp)transaction_1312, (funcp)transaction_1316, (funcp)transaction_1320, (funcp)transaction_1324, (funcp)transaction_1328, (funcp)transaction_1341, (funcp)transaction_1345, (funcp)transaction_1349, (funcp)transaction_1353, (funcp)transaction_1366};
const int NumRelocateId= 254;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/sev_seg_sim_func_synth/xsim.reloc",  (void **)funcTab, 254);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/sev_seg_sim_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/sev_seg_sim_func_synth/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/sev_seg_sim_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/sev_seg_sim_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/sev_seg_sim_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
