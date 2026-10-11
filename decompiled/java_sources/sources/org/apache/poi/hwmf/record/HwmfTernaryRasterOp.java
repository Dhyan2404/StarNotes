package org.apache.poi.hwmf.record;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Arrays;
import java.util.Deque;

/* loaded from: classes12.dex */
public enum HwmfTernaryRasterOp {
    BLACKNESS(66),
    DPSOON(66185),
    DPSONA(134281),
    PSON(196778),
    SDPONA(265352),
    DPON(327849),
    PDSXNON(395365),
    PDSAON(459461),
    SDPNAA(528136),
    PDSXON(590405),
    DPNA(656169),
    PSDNAON(723754),
    SPNA(787236),
    PDSNAON(854821),
    PDSONON(919717),
    PN(983041),
    PDSONA(1051781),
    NOTSRCERASE(1114278),
    SDPXNON(1181800),
    SDPAON(1245896),
    DPSXNON(1312873),
    DPSAON(1376969),
    PSDPSANAXX(1465546),
    SSPXDSXAXN(1514836),
    SPXPDXA(1576281),
    SDPSANAXN(1645768),
    PDSPAOX(1705669),
    SDPSXAXN(1771368),
    PSDPAOX(1836746),
    DSPDXAXN(1902438),
    PDSOX(1966501),
    PDSOAN(2032517),
    DPSNAA(2101001),
    SDPXON(2163272),
    DSNA(2229030),
    SPDNAON(2296612),
    SPXDSXA(2362709),
    PDSPANAXN(2432197),
    SDPSAOX(2492104),
    SDPSXNOX(2562152),
    DPSXA(2622313),
    PSDPSAOXXN(2692810),
    DPSANA(2755785),
    SSPXPDXAXN(2825560),
    SPDSOAX(2885508),
    PSDNOX(2950666),
    PSDPXOX(3016266),
    PSDNOAN(3083818),
    PSNA(3146538),
    SDPNAON(3214120),
    SDPSOOX(3278472),
    NOTSRCCOPY(3342344),
    SPDSAOX(3409604),
    SPDSXNOX(3479652),
    SDPOX(3539368),
    SDPOAN(3605384),
    PSDPOAX(3671946),
    SPDNOX(3737092),
    SPDSXOX(3802692),
    SPDNOAN(3870244),
    PSX(3932234),
    SPDSONOX(4004004),
    SPDSNAOX(4070180),
    PSAN(4129002),
    PSDNAA(4198154),
    DPSXON(4260425),
    SDXPDXA(4328797),
    SPDSANAXN(4398276),
    SRCERASE(4457256),
    DPSNAON(4524841),
    DSPDAOX(4589254),
    PSDPXAXN(4654954),
    SDPXA(4719464),
    PDSPDAOXXN(4789957),
    DPSDOAX(4851593),
    PDSNOX(4916741),
    SDPANA(4984008),
    SSPXDSXOXN(5052756),
    PDSPXOX(5113413),
    PDSNOAN(5180965),
    PDNA(5243685),
    DSPNAON(5311270),
    DPSDAOX(5375689),
    SPDSXAXN(5441380),
    DPSONON(5507241),
    DSTINVERT(5570569),
    DPSOX(5636521),
    DPSOAN(5702537),
    PDSPOAX(5769093),
    DPSNOX(5834249),
    PATINVERT(5898313),
    DPSDONOX(5970089),
    DPSDXOX(6030921),
    DPSNOAN(6098473),
    DPSDNAOX(6167337),
    DPAN(6226153),
    PDSXA(6292325),
    DSPDSAOXXN(6362822),
    DSPDOAX(6424454),
    SDPNOX(6489608),
    SDPSOAX(6555528),
    DSPNOX(6620678),
    SRCINVERT(6684742),
    SDPSONOX(6756520),
    DSPDSONOXXN(6838438),
    PDSXXN(6881605),
    DPSAX(6947305),
    PSDPSOAXXN(7018378),
    SDPAX(7078376),
    PDSPDOAXXN(7149445),
    SDPSNOAX(7216680),
    PDSXNAN(7277669),
    PDSANA(7343301),
    SSDXPDXAXN(7413084),
    SDPSXOX(7472712),
    SDPNOAN(7540264),
    DSPDXOX(7603782),
    DSPNOAN(7671334),
    SDPSNAOX(7740200),
    DSAN(7799014),
    PDSAX(7864805),
    DSPDSOAXXN(7935878),
    DPSDNOAX(8003113),
    SDPXNAN(8064104),
    SPDSNOAX(8134180),
    DPSXNAN(8195177),
    SPXDSXO(8259925),
    DPSAAN(8324041),
    DPSAA(8389609),
    SPXDSXON(8456565),
    DPSXNA(8522825),
    SPDSNOAXN(8592900),
    SDPXNA(8653896),
    PDSPNOAXN(8723973),
    DSPDSOAXX(8787878),
    PDSAXN(8847813),
    SRCAND(8913094),
    SDPSNAOXN(8985352),
    DSPNOA(9047558),
    DSPDXOXN(9111142),
    SDPNOA(9178632),
    SDPSXOXN(9242216),
    SSDXPDXAX(9313660),
    PDSANAN(9374949),
    PDSXNA(9440325),
    SDPSNOAXN(9510408),
    DPSDPOAXX(9574313),
    SPDAXN(9634244),
    PSDPSOAXX(9705386),
    DPSAXN(9765321),
    DPSXX(9830761),
    PSDPSONOXX(9918602),
    SDPSONOXN(9967752),
    DSXN(10027110),
    DPSNAX(10094345),
    SDPSOAXN(10160040),
    SPDNAX(10225412),
    DSPDOAXN(10291110),
    DSPDSAOXX(10360550),
    PDSXAN(10421061),
    DPA(10485961),
    PDSPNAOXN(10558213),
    DPSNOA(10620425),
    DPSDXOXN(10684009),
    PDSPONOXN(10754181),
    PDXN(10813541),
    DSPNAX(10880774),
    PDSPOAXN(10946469),
    DPSOA(11010985),
    DPSOXN(11075977),
    D(11141161),
    DPSONO(11208841),
    SPDSXAX(11274052),
    DPSDAOXN(11339497),
    DSPNAO(11406086),
    DPNO(11469353),
    PDSNOA(11537925),
    PDSPXOXN(11601509),
    SSPXDSXOX(11671924),
    SDPANAN(11734248),
    PSDNAX(11798282),
    DPSDOAXN(11863977),
    DPSDPAOXX(11933417),
    SDPXAN(11993928),
    PSDPXAX(12060490),
    DSPDAOXN(12125926),
    DPSNAO(12192521),
    MERGEPAINT(12255782),
    SPDSANAX(12328164),
    SDXPDXAN(12389757),
    DPSXO(12452457),
    DPSANO(12519625),
    MERGECOPY(12583114),
    SPDSNAOXN(12655364),
    SPDSONOXN(12720260),
    PSXN(12779626),
    SPDNOA(12848644),
    SPDSXOXN(12912228),
    SDPNAX(12977928),
    PSDPOAXN(13043626),
    SDPOA(13108136),
    SPDOXN(13173124),
    DPSDXAX(13240137),
    SPDSAOXN(13305572),
    SRCCOPY(13369376),
    SDPONO(13437064),
    SDPNAO(13503240),
    SPNO(13566500),
    PSDNOA(13635082),
    PSDPXOXN(13698666),
    PDSNAX(13764357),
    SPDSOAXN(13830052),
    SSPXPDXAX(13901176),
    DPSANAN(13962473),
    PSDPSAOXX(14030570),
    DPSXAN(14091081),
    PDSPXAX(14157637),
    SDPSAOXN(14223080),
    DPSDANAX(14294249),
    SPXDSXAN(14355829),
    SPDNAO(14420740),
    SDNO(14484008),
    SDPXO(14549608),
    SDPANO(14616776),
    PDSOA(14680997),
    PDSOXN(14745989),
    DSPDXAX(14812998),
    PSDPAOXN(14878442),
    SDPSXAX(14944072),
    PDSPAOXN(15009509),
    SDPSANAX(15080680),
    SPXPDXAN(15142265),
    SSPXDSXAX(15211892),
    DSPDSANAXXN(15293670),
    DPSAO(15336169),
    DPSXNO(15403081),
    SDPAO(15467240),
    SDPXNO(15534152),
    SRCPAINT(15597702),
    SDPNOO(15665672),
    PATCOPY(15728673),
    PDSONO(15796357),
    PDSNAO(15862533),
    PSNO(15925802),
    PSDNAO(15993610),
    PDNO(16056869),
    PDSXO(16122469),
    PDSANO(16189637),
    PDSAO(16253669),
    PDSXNO(16320581),
    DPO(16384137),
    PATPAINT(16452105),
    PSO(16515210),
    PSDNOO(16583178),
    DPSOO(16646825),
    WHITENESS(16711778);

    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String[] ARG_ORDER = {"SSSSSS", "PPPPPP", "DDDDDD", null, "SPDSPD", "PDSPDS", "DSPDSP", null, "SDPSDP", "DPSDPS", "PSDPSD", null, null, null, null, null, null, null, null, null, "SSP.DS", "SP.DS", null, null, "SSP.PD", "SP.PD", null, null, "SSD.PD", "SD.PD", null, null};
    private static final String OPS = "nxoa";
    private final int opValue;

    HwmfTernaryRasterOp(int i) {
        this.opValue = i;
    }

    private static int[] checkClone(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, boolean z) {
        return z ? (iArr == iArr3 || iArr == iArr4 || iArr == iArr2) ? (int[]) iArr.clone() : iArr : iArr;
    }

    private static void op0(Deque<int[]> deque, int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[iArr.length];
        Arrays.fill(iArr4, -16777216);
        deque.push(iArr4);
    }

    private static void op1(Deque<int[]> deque, int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[iArr.length];
        Arrays.fill(iArr4, -1);
        deque.push(iArr4);
    }

    private static void opA(Deque<int[]> deque, int[] iArr, int[] iArr2, int[] iArr3) {
        int[] checkClone = checkClone(deque.pop(), iArr, iArr2, iArr3, true);
        int[] checkClone2 = checkClone(deque.pop(), iArr, iArr2, iArr3, false);
        for (int i = 0; i < checkClone.length; i++) {
            int i2 = checkClone[i];
            checkClone[i] = (i2 & checkClone2[i] & 16777215) | ((-16777216) & i2);
        }
        deque.push(checkClone);
    }

    private static void opD(Deque<int[]> deque, int[] iArr, int[] iArr2, int[] iArr3) {
        deque.push(iArr);
    }

    private static void opN(Deque<int[]> deque, int[] iArr, int[] iArr2, int[] iArr3) {
        int[] checkClone = checkClone(deque.pop(), iArr, iArr2, iArr3, true);
        for (int i = 0; i < checkClone.length; i++) {
            int i2 = checkClone[i];
            checkClone[i] = ((~i2) & 16777215) | ((-16777216) & i2);
        }
        deque.push(checkClone);
    }

    private static void opO(Deque<int[]> deque, int[] iArr, int[] iArr2, int[] iArr3) {
        int[] checkClone = checkClone(deque.pop(), iArr, iArr2, iArr3, true);
        int[] checkClone2 = checkClone(deque.pop(), iArr, iArr2, iArr3, false);
        for (int i = 0; i < checkClone.length; i++) {
            int i2 = checkClone[i];
            checkClone[i] = ((i2 | checkClone2[i]) & 16777215) | ((-16777216) & i2);
        }
        deque.push(checkClone);
    }

    private static void opP(Deque<int[]> deque, int[] iArr, int[] iArr2, int[] iArr3) {
        deque.push(iArr3);
    }

    private static void opS(Deque<int[]> deque, int[] iArr, int[] iArr2, int[] iArr3) {
        deque.push(iArr2);
    }

    private static void opX(Deque<int[]> deque, int[] iArr, int[] iArr2, int[] iArr3) {
        int[] checkClone = checkClone(deque.pop(), iArr, iArr2, iArr3, true);
        int[] checkClone2 = checkClone(deque.pop(), iArr, iArr2, iArr3, false);
        for (int i = 0; i < checkClone.length; i++) {
            int i2 = checkClone[i];
            checkClone[i] = ((i2 ^ checkClone2[i]) & 16777215) | ((-16777216) & i2);
        }
        deque.push(checkClone);
    }

    public String calcCmd() {
        String str = ARG_ORDER[this.opValue & 31];
        int[] iArr = new int[5];
        int i = 6;
        int i2 = 0;
        int i3 = 0;
        while (i2 < 5) {
            int i4 = (this.opValue >>> i) & 3;
            iArr[i2] = i4;
            if (i4 != 0) {
                i3 = i2 + 1;
            }
            i2++;
            i += 2;
        }
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        sb.append(str.charAt(0));
        int i5 = 1;
        for (int i6 = 0; i6 < i3; i6++) {
            char charAt = OPS.charAt(iArr[i6]);
            char charAt2 = str.charAt(i5);
            sb2.append(charAt);
            if (charAt2 == '.') {
                sb.insert(i5, sb2.charAt(0));
                sb2.deleteCharAt(0);
            }
            if (charAt != 'n') {
                if (charAt2 == '.') {
                    i5++;
                    charAt2 = str.charAt(i5);
                }
                sb.append(charAt2);
                i5++;
            }
        }
        sb.append((CharSequence) sb2);
        if (i3 % 2 == ((this.opValue >>> 5) & 1)) {
            sb.append('n');
        }
        String sb3 = sb.toString();
        return sb3.startsWith("DDx") ? "DDx".equals(sb3) ? "0" : "1" : sb3;
    }

    public String describeCmd() {
        int i;
        String[] strArr = new String[10];
        int i2 = 0;
        for (char c : calcCmd().toCharArray()) {
            if (c == '0') {
                i = i2 + 1;
                strArr[i2] = "all black";
            } else if (c != '1') {
                if (c == 'D' || c == 'P' || c == 'S') {
                    strArr[i2] = "" + c;
                    i2++;
                } else {
                    if (c == 'a') {
                        int i3 = i2 - 2;
                        strArr[i3] = MotionUtils.f31761c + strArr[i2 - 1] + CloudStorageConstants.OPERATION_AND + strArr[i3] + MotionUtils.f31762d;
                    } else if (c == 'x') {
                        int i4 = i2 - 2;
                        strArr[i4] = MotionUtils.f31761c + strArr[i2 - 1] + " xor " + strArr[i4] + MotionUtils.f31762d;
                    } else if (c == 'n') {
                        int i5 = i2 - 1;
                        strArr[i5] = "not(" + strArr[i5] + MotionUtils.f31762d;
                    } else {
                        if (c != 'o') {
                            throw new IllegalStateException("unknown cmd '" + c + "'.");
                        }
                        int i6 = i2 - 2;
                        strArr[i6] = MotionUtils.f31761c + strArr[i2 - 1] + " or " + strArr[i6] + MotionUtils.f31762d;
                    }
                    i2--;
                }
            } else {
                i = i2 + 1;
                strArr[i2] = "all white";
            }
            i2 = i;
        }
        return strArr[i2 - 1];
    }

    public int getOpCode() {
        return this.opValue & 65535;
    }

    public int getOpIndex() {
        return this.opValue >>> 16;
    }

    public void process(Deque<int[]> deque, int[] iArr, int[] iArr2, int[] iArr3) {
        for (char c : calcCmd().toCharArray()) {
            if (c == '0') {
                op0(deque, iArr, iArr2, iArr3);
            } else if (c == '1') {
                op1(deque, iArr, iArr2, iArr3);
            } else if (c == 'D') {
                opD(deque, iArr, iArr2, iArr3);
            } else if (c == 'P') {
                opP(deque, iArr, iArr2, iArr3);
            } else if (c == 'S') {
                opS(deque, iArr, iArr2, iArr3);
            } else if (c == 'a') {
                opA(deque, iArr, iArr2, iArr3);
            } else if (c == 'x') {
                opX(deque, iArr, iArr2, iArr3);
            } else if (c == 'n') {
                opN(deque, iArr, iArr2, iArr3);
            } else {
                if (c != 'o') {
                    throw new IllegalStateException();
                }
                opO(deque, iArr, iArr2, iArr3);
            }
        }
    }

    public static HwmfTernaryRasterOp valueOf(int i) {
        for (HwmfTernaryRasterOp hwmfTernaryRasterOp : values()) {
            if (hwmfTernaryRasterOp.getOpIndex() == i) {
                return hwmfTernaryRasterOp;
            }
        }
        return null;
    }
}
