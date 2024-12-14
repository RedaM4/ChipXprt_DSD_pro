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
extern void execute_620(char*, char *);
extern void execute_621(char*, char *);
extern void vlog_simple_process_execute_0_fast_for_reg(char*, char*, char*);
extern void execute_1419(char*, char *);
extern void execute_1420(char*, char *);
extern void execute_1421(char*, char *);
extern void execute_1422(char*, char *);
extern void execute_1423(char*, char *);
extern void execute_1424(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_4(char*, char *);
extern void execute_626(char*, char *);
extern void execute_627(char*, char *);
extern void execute_628(char*, char *);
extern void execute_671(char*, char *);
extern void execute_35(char*, char *);
extern void execute_672(char*, char *);
extern void execute_43(char*, char *);
extern void execute_680(char*, char *);
extern void execute_681(char*, char *);
extern void execute_682(char*, char *);
extern void execute_683(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_85(char*, char *);
extern void execute_740(char*, char *);
extern void execute_741(char*, char *);
extern void execute_742(char*, char *);
extern void execute_743(char*, char *);
extern void execute_87(char*, char *);
extern void execute_88(char*, char *);
extern void execute_89(char*, char *);
extern void execute_744(char*, char *);
extern void execute_745(char*, char *);
extern void execute_746(char*, char *);
extern void execute_747(char*, char *);
extern void execute_108(char*, char *);
extern void execute_765(char*, char *);
extern void execute_766(char*, char *);
extern void execute_767(char*, char *);
extern void execute_768(char*, char *);
extern void execute_764(char*, char *);
extern void execute_121(char*, char *);
extern void execute_122(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg(char*, char*, char*);
extern void execute_125(char*, char *);
extern void execute_779(char*, char *);
extern void execute_780(char*, char *);
extern void execute_781(char*, char *);
extern void execute_782(char*, char *);
extern void execute_783(char*, char *);
extern void execute_784(char*, char *);
extern void execute_785(char*, char *);
extern void execute_786(char*, char *);
extern void execute_778(char*, char *);
extern void execute_129(char*, char *);
extern void execute_130(char*, char *);
extern void execute_133(char*, char *);
extern void execute_789(char*, char *);
extern void execute_790(char*, char *);
extern void execute_788(char*, char *);
extern void execute_1362(char*, char *);
extern void execute_1367(char*, char *);
extern void execute_1373(char*, char *);
extern void execute_1382(char*, char *);
extern void execute_1388(char*, char *);
extern void execute_536(char*, char *);
extern void execute_537(char*, char *);
extern void execute_538(char*, char *);
extern void execute_1254(char*, char *);
extern void execute_1255(char*, char *);
extern void execute_1256(char*, char *);
extern void execute_1257(char*, char *);
extern void execute_1258(char*, char *);
extern void execute_1259(char*, char *);
extern void execute_1262(char*, char *);
extern void execute_1263(char*, char *);
extern void execute_1264(char*, char *);
extern void execute_1265(char*, char *);
extern void execute_623(char*, char *);
extern void execute_624(char*, char *);
extern void execute_625(char*, char *);
extern void execute_1425(char*, char *);
extern void execute_1426(char*, char *);
extern void execute_1427(char*, char *);
extern void execute_1428(char*, char *);
extern void execute_1429(char*, char *);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_113(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_114(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_115(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_116(char*, char*, unsigned, unsigned, unsigned);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_122(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_123(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_124(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_726(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_727(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_728(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_729(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_730(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_731(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_732(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_733(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_734(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_735(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_736(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_737(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_738(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_739(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_740(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_741(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_742(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_743(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_744(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_745(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_746(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_747(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_748(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_749(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_750(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_751(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_752(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_753(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_754(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_755(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_756(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_757(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_758(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_759(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_760(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_761(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_762(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_763(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_764(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_765(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_767(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_768(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_769(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_770(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_771(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_772(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_773(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_774(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_775(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_776(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_777(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_778(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_779(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_780(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_781(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_782(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_784(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_785(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_151(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_156(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_161(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_166(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_171(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_176(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_264(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_269(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_274(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_279(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_284(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_326(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_331(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_336(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_341(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_347(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_352(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_357(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_362(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_367(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_372(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_377(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_397(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_433(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_438(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_443(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_460(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_544(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_549(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_554(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_559(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_564(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_569(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_574(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_579(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_596(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_601(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_653(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_658(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_668(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_697(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_702(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_707(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_959(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_972(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_976(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_980(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_993(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_997(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1001(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1005(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1018(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1022(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1026(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1030(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1034(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1038(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1042(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1055(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1059(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1063(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1067(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1080(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[222] = {(funcp)execute_620, (funcp)execute_621, (funcp)vlog_simple_process_execute_0_fast_for_reg, (funcp)execute_1419, (funcp)execute_1420, (funcp)execute_1421, (funcp)execute_1422, (funcp)execute_1423, (funcp)execute_1424, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_4, (funcp)execute_626, (funcp)execute_627, (funcp)execute_628, (funcp)execute_671, (funcp)execute_35, (funcp)execute_672, (funcp)execute_43, (funcp)execute_680, (funcp)execute_681, (funcp)execute_682, (funcp)execute_683, (funcp)execute_76, (funcp)execute_77, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_83, (funcp)execute_84, (funcp)execute_85, (funcp)execute_740, (funcp)execute_741, (funcp)execute_742, (funcp)execute_743, (funcp)execute_87, (funcp)execute_88, (funcp)execute_89, (funcp)execute_744, (funcp)execute_745, (funcp)execute_746, (funcp)execute_747, (funcp)execute_108, (funcp)execute_765, (funcp)execute_766, (funcp)execute_767, (funcp)execute_768, (funcp)execute_764, (funcp)execute_121, (funcp)execute_122, (funcp)vlog_simple_process_execute_0_fast_no_reg, (funcp)execute_125, (funcp)execute_779, (funcp)execute_780, (funcp)execute_781, (funcp)execute_782, (funcp)execute_783, (funcp)execute_784, (funcp)execute_785, (funcp)execute_786, (funcp)execute_778, (funcp)execute_129, (funcp)execute_130, (funcp)execute_133, (funcp)execute_789, (funcp)execute_790, (funcp)execute_788, (funcp)execute_1362, (funcp)execute_1367, (funcp)execute_1373, (funcp)execute_1382, (funcp)execute_1388, (funcp)execute_536, (funcp)execute_537, (funcp)execute_538, (funcp)execute_1254, (funcp)execute_1255, (funcp)execute_1256, (funcp)execute_1257, (funcp)execute_1258, (funcp)execute_1259, (funcp)execute_1262, (funcp)execute_1263, (funcp)execute_1264, (funcp)execute_1265, (funcp)execute_623, (funcp)execute_624, (funcp)execute_625, (funcp)execute_1425, (funcp)execute_1426, (funcp)execute_1427, (funcp)execute_1428, (funcp)execute_1429, (funcp)transaction_33, (funcp)transaction_35, (funcp)transaction_37, (funcp)transaction_113, (funcp)transaction_114, (funcp)transaction_115, (funcp)transaction_116, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_122, (funcp)transaction_123, (funcp)transaction_124, (funcp)transaction_726, (funcp)transaction_727, (funcp)transaction_728, (funcp)transaction_729, (funcp)transaction_730, (funcp)transaction_731, (funcp)transaction_732, (funcp)transaction_733, (funcp)transaction_734, (funcp)transaction_735, (funcp)transaction_736, (funcp)transaction_737, (funcp)transaction_738, (funcp)transaction_739, (funcp)transaction_740, (funcp)transaction_741, (funcp)transaction_742, (funcp)transaction_743, (funcp)transaction_744, (funcp)transaction_745, (funcp)transaction_746, (funcp)transaction_747, (funcp)transaction_748, (funcp)transaction_749, (funcp)transaction_750, (funcp)transaction_751, (funcp)transaction_752, (funcp)transaction_753, (funcp)transaction_754, (funcp)transaction_755, (funcp)transaction_756, (funcp)transaction_757, (funcp)transaction_758, (funcp)transaction_759, (funcp)transaction_760, (funcp)transaction_761, (funcp)transaction_762, (funcp)transaction_763, (funcp)transaction_764, (funcp)transaction_765, (funcp)transaction_767, (funcp)transaction_768, (funcp)transaction_769, (funcp)transaction_770, (funcp)transaction_771, (funcp)transaction_772, (funcp)transaction_773, (funcp)transaction_774, (funcp)transaction_775, (funcp)transaction_776, (funcp)transaction_777, (funcp)transaction_778, (funcp)transaction_779, (funcp)transaction_780, (funcp)transaction_781, (funcp)transaction_782, (funcp)transaction_784, (funcp)transaction_785, (funcp)transaction_151, (funcp)transaction_156, (funcp)transaction_161, (funcp)transaction_166, (funcp)transaction_171, (funcp)transaction_176, (funcp)transaction_264, (funcp)transaction_269, (funcp)transaction_274, (funcp)transaction_279, (funcp)transaction_284, (funcp)transaction_326, (funcp)transaction_331, (funcp)transaction_336, (funcp)transaction_341, (funcp)transaction_347, (funcp)transaction_352, (funcp)transaction_357, (funcp)transaction_362, (funcp)transaction_367, (funcp)transaction_372, (funcp)transaction_377, (funcp)transaction_397, (funcp)transaction_433, (funcp)transaction_438, (funcp)transaction_443, (funcp)transaction_460, (funcp)transaction_544, (funcp)transaction_549, (funcp)transaction_554, (funcp)transaction_559, (funcp)transaction_564, (funcp)transaction_569, (funcp)transaction_574, (funcp)transaction_579, (funcp)transaction_596, (funcp)transaction_601, (funcp)transaction_653, (funcp)transaction_658, (funcp)transaction_668, (funcp)transaction_697, (funcp)transaction_702, (funcp)transaction_707, (funcp)transaction_959, (funcp)transaction_972, (funcp)transaction_976, (funcp)transaction_980, (funcp)transaction_993, (funcp)transaction_997, (funcp)transaction_1001, (funcp)transaction_1005, (funcp)transaction_1018, (funcp)transaction_1022, (funcp)transaction_1026, (funcp)transaction_1030, (funcp)transaction_1034, (funcp)transaction_1038, (funcp)transaction_1042, (funcp)transaction_1055, (funcp)transaction_1059, (funcp)transaction_1063, (funcp)transaction_1067, (funcp)transaction_1080};
const int NumRelocateId= 222;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/sev_seg_sim_func_synth/xsim.reloc",  (void **)funcTab, 222);

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
