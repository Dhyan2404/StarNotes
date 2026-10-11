package org.apache.poi.hwpf.sprm;

import java.util.ArrayList;
import java.util.Arrays;
import org.apache.poi.hwpf.usermodel.SectionProperties;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class SectionSprmCompressor {
    private static final SectionProperties DEFAULT_SEP = new SectionProperties();

    public static byte[] compressSectionProperty(SectionProperties sectionProperties) {
        ArrayList arrayList = new ArrayList();
        byte cnsPgn = sectionProperties.getCnsPgn();
        SectionProperties sectionProperties2 = DEFAULT_SEP;
        int addSprm = cnsPgn != sectionProperties2.getCnsPgn() ? SprmUtils.addSprm((short) 12288, sectionProperties.getCnsPgn(), null, arrayList) + 0 : 0;
        if (sectionProperties.getIHeadingPgn() != sectionProperties2.getIHeadingPgn()) {
            addSprm += SprmUtils.addSprm((short) 12289, sectionProperties.getIHeadingPgn(), null, arrayList);
        }
        if (!Arrays.equals(sectionProperties.getOlstAnm(), sectionProperties2.getOlstAnm())) {
            addSprm += SprmUtils.addSprm((short) -11774, 0, sectionProperties.getOlstAnm(), arrayList);
        }
        if (sectionProperties.getFEvenlySpaced() != sectionProperties2.getFEvenlySpaced()) {
            addSprm += SprmUtils.addSprm((short) 12293, sectionProperties.getFEvenlySpaced() ? 1 : 0, null, arrayList);
        }
        if (sectionProperties.getFUnlocked() != sectionProperties2.getFUnlocked()) {
            addSprm += SprmUtils.addSprm((short) 12294, sectionProperties.getFUnlocked() ? 1 : 0, null, arrayList);
        }
        if (sectionProperties.getDmBinFirst() != sectionProperties2.getDmBinFirst()) {
            addSprm += SprmUtils.addSprm((short) 20487, sectionProperties.getDmBinFirst(), null, arrayList);
        }
        if (sectionProperties.getDmBinOther() != sectionProperties2.getDmBinOther()) {
            addSprm += SprmUtils.addSprm((short) 20488, sectionProperties.getDmBinOther(), null, arrayList);
        }
        if (sectionProperties.getBkc() != sectionProperties2.getBkc()) {
            addSprm += SprmUtils.addSprm((short) 12297, sectionProperties.getBkc(), null, arrayList);
        }
        if (sectionProperties.getFTitlePage() != sectionProperties2.getFTitlePage()) {
            addSprm += SprmUtils.addSprm((short) 12298, sectionProperties.getFTitlePage() ? 1 : 0, null, arrayList);
        }
        if (sectionProperties.getCcolM1() != sectionProperties2.getCcolM1()) {
            addSprm += SprmUtils.addSprm((short) 20491, sectionProperties.getCcolM1(), null, arrayList);
        }
        if (sectionProperties.getDxaColumns() != sectionProperties2.getDxaColumns()) {
            addSprm += SprmUtils.addSprm((short) -28660, sectionProperties.getDxaColumns(), null, arrayList);
        }
        if (sectionProperties.getFAutoPgn() != sectionProperties2.getFAutoPgn()) {
            addSprm += SprmUtils.addSprm((short) 12301, sectionProperties.getFAutoPgn() ? 1 : 0, null, arrayList);
        }
        if (sectionProperties.getNfcPgn() != sectionProperties2.getNfcPgn()) {
            addSprm += SprmUtils.addSprm((short) 12302, sectionProperties.getNfcPgn(), null, arrayList);
        }
        if (sectionProperties.getDyaPgn() != sectionProperties2.getDyaPgn()) {
            addSprm += SprmUtils.addSprm((short) -20465, sectionProperties.getDyaPgn(), null, arrayList);
        }
        if (sectionProperties.getDxaPgn() != sectionProperties2.getDxaPgn()) {
            addSprm += SprmUtils.addSprm((short) -20464, sectionProperties.getDxaPgn(), null, arrayList);
        }
        if (sectionProperties.getFPgnRestart() != sectionProperties2.getFPgnRestart()) {
            addSprm += SprmUtils.addSprm((short) 12305, sectionProperties.getFPgnRestart() ? 1 : 0, null, arrayList);
        }
        if (sectionProperties.getFEndNote() != sectionProperties2.getFEndNote()) {
            addSprm += SprmUtils.addSprm((short) 12306, sectionProperties.getFEndNote() ? 1 : 0, null, arrayList);
        }
        if (sectionProperties.getLnc() != sectionProperties2.getLnc()) {
            addSprm += SprmUtils.addSprm((short) 12307, sectionProperties.getLnc(), null, arrayList);
        }
        if (sectionProperties.getGrpfIhdt() != sectionProperties2.getGrpfIhdt()) {
            addSprm += SprmUtils.addSprm((short) 12308, sectionProperties.getGrpfIhdt(), null, arrayList);
        }
        if (sectionProperties.getNLnnMod() != sectionProperties2.getNLnnMod()) {
            addSprm += SprmUtils.addSprm((short) 20501, sectionProperties.getNLnnMod(), null, arrayList);
        }
        if (sectionProperties.getDxaLnn() != sectionProperties2.getDxaLnn()) {
            addSprm += SprmUtils.addSprm((short) -28650, sectionProperties.getDxaLnn(), null, arrayList);
        }
        if (sectionProperties.getDyaHdrTop() != sectionProperties2.getDyaHdrTop()) {
            addSprm += SprmUtils.addSprm((short) -20457, sectionProperties.getDyaHdrTop(), null, arrayList);
        }
        if (sectionProperties.getDyaHdrBottom() != sectionProperties2.getDyaHdrBottom()) {
            addSprm += SprmUtils.addSprm((short) -20456, sectionProperties.getDyaHdrBottom(), null, arrayList);
        }
        if (sectionProperties.getFLBetween() != sectionProperties2.getFLBetween()) {
            addSprm += SprmUtils.addSprm((short) 12313, sectionProperties.getFLBetween() ? 1 : 0, null, arrayList);
        }
        if (sectionProperties.getVjc() != sectionProperties2.getVjc()) {
            addSprm += SprmUtils.addSprm((short) 12314, sectionProperties.getVjc(), null, arrayList);
        }
        if (sectionProperties.getLnnMin() != sectionProperties2.getLnnMin()) {
            addSprm += SprmUtils.addSprm((short) 20507, sectionProperties.getLnnMin(), null, arrayList);
        }
        if (sectionProperties.getPgnStart() != sectionProperties2.getPgnStart()) {
            addSprm += SprmUtils.addSprm((short) 20508, sectionProperties.getPgnStart(), null, arrayList);
        }
        if (sectionProperties.getDmOrientPage() != sectionProperties2.getDmOrientPage()) {
            addSprm += SprmUtils.addSprm((short) 12317, sectionProperties.getDmOrientPage() ? 1 : 0, null, arrayList);
        }
        if (sectionProperties.getXaPage() != sectionProperties2.getXaPage()) {
            addSprm += SprmUtils.addSprm((short) -20449, sectionProperties.getXaPage(), null, arrayList);
        }
        if (sectionProperties.getYaPage() != sectionProperties2.getYaPage()) {
            addSprm += SprmUtils.addSprm((short) -20448, sectionProperties.getYaPage(), null, arrayList);
        }
        if (sectionProperties.getDxaLeft() != sectionProperties2.getDxaLeft()) {
            addSprm += SprmUtils.addSprm((short) -20447, sectionProperties.getDxaLeft(), null, arrayList);
        }
        if (sectionProperties.getDxaRight() != sectionProperties2.getDxaRight()) {
            addSprm += SprmUtils.addSprm((short) -20446, sectionProperties.getDxaRight(), null, arrayList);
        }
        if (sectionProperties.getDyaTop() != sectionProperties2.getDyaTop()) {
            addSprm += SprmUtils.addSprm((short) -28637, sectionProperties.getDyaTop(), null, arrayList);
        }
        if (sectionProperties.getDyaBottom() != sectionProperties2.getDyaBottom()) {
            addSprm += SprmUtils.addSprm((short) -28636, sectionProperties.getDyaBottom(), null, arrayList);
        }
        if (sectionProperties.getDzaGutter() != sectionProperties2.getDzaGutter()) {
            addSprm += SprmUtils.addSprm((short) -20443, sectionProperties.getDzaGutter(), null, arrayList);
        }
        if (sectionProperties.getDmPaperReq() != sectionProperties2.getDmPaperReq()) {
            addSprm += SprmUtils.addSprm((short) 20518, sectionProperties.getDmPaperReq(), null, arrayList);
        }
        if (sectionProperties.getFPropMark() != sectionProperties2.getFPropMark() || sectionProperties.getIbstPropRMark() != sectionProperties2.getIbstPropRMark() || !sectionProperties.getDttmPropRMark().equals(sectionProperties2.getDttmPropRMark())) {
            byte[] bArr = new byte[7];
            bArr[0] = sectionProperties.getFPropMark() ? (byte) 1 : (byte) 0;
            LittleEndian.putShort(bArr, 0, (short) sectionProperties.getIbstPropRMark());
            sectionProperties.getDttmPropRMark().serialize(bArr, 3);
            addSprm += SprmUtils.addSprm((short) -11737, -1, bArr, arrayList);
        }
        if (!sectionProperties.getBrcTop().equals(sectionProperties2.getBrcTop())) {
            addSprm += SprmUtils.addSprm((short) 28715, sectionProperties.getBrcTop().toInt(), null, arrayList);
        }
        if (!sectionProperties.getBrcLeft().equals(sectionProperties2.getBrcLeft())) {
            addSprm += SprmUtils.addSprm((short) 28716, sectionProperties.getBrcLeft().toInt(), null, arrayList);
        }
        if (!sectionProperties.getBrcBottom().equals(sectionProperties2.getBrcBottom())) {
            addSprm += SprmUtils.addSprm((short) 28717, sectionProperties.getBrcBottom().toInt(), null, arrayList);
        }
        if (!sectionProperties.getBrcRight().equals(sectionProperties2.getBrcRight())) {
            addSprm += SprmUtils.addSprm((short) 28718, sectionProperties.getBrcRight().toInt(), null, arrayList);
        }
        if (sectionProperties.getPgbProp() != sectionProperties2.getPgbProp()) {
            addSprm += SprmUtils.addSprm((short) 21039, sectionProperties.getPgbProp(), null, arrayList);
        }
        if (sectionProperties.getDxtCharSpace() != sectionProperties2.getDxtCharSpace()) {
            addSprm += SprmUtils.addSprm((short) 28720, sectionProperties.getDxtCharSpace(), null, arrayList);
        }
        if (sectionProperties.getDyaLinePitch() != sectionProperties2.getDyaLinePitch()) {
            addSprm += SprmUtils.addSprm((short) -28623, sectionProperties.getDyaLinePitch(), null, arrayList);
        }
        if (sectionProperties.getClm() != sectionProperties2.getClm()) {
            addSprm += SprmUtils.addSprm((short) 20530, sectionProperties.getClm(), null, arrayList);
        }
        if (sectionProperties.getWTextFlow() != sectionProperties2.getWTextFlow()) {
            addSprm += SprmUtils.addSprm((short) 20531, sectionProperties.getWTextFlow(), null, arrayList);
        }
        return SprmUtils.getGrpprl(arrayList, addSprm);
    }
}
