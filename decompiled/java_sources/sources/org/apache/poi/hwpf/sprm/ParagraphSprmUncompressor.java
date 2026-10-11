package org.apache.poi.hwpf.sprm;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hwpf.model.TabDescriptor;
import org.apache.poi.hwpf.model.types.TBDAbstractType;
import org.apache.poi.hwpf.usermodel.BorderCode;
import org.apache.poi.hwpf.usermodel.DateAndTime;
import org.apache.poi.hwpf.usermodel.DropCapSpecifier;
import org.apache.poi.hwpf.usermodel.LineSpacingDescriptor;
import org.apache.poi.hwpf.usermodel.ParagraphProperties;
import org.apache.poi.hwpf.usermodel.ShadingDescriptor;
import org.apache.poi.hwpf.usermodel.ShadingDescriptor80;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class ParagraphSprmUncompressor extends SprmUncompressor {
    private static final Logger LOG = LogManager.getLogger((Class<?>) ParagraphSprmUncompressor.class);

    private static void handleTabs(ParagraphProperties paragraphProperties, SprmOperation sprmOperation) {
        byte[] grpprl = sprmOperation.getGrpprl();
        int grpprlOffset = sprmOperation.getGrpprlOffset();
        int i = grpprlOffset + 1;
        byte b = grpprl[grpprlOffset];
        int[] rgdxaTab = paragraphProperties.getRgdxaTab();
        TabDescriptor[] rgtbd = paragraphProperties.getRgtbd();
        HashMap hashMap = new HashMap();
        for (int i2 = 0; i2 < rgdxaTab.length; i2++) {
            hashMap.put(Integer.valueOf(rgdxaTab[i2]), rgtbd[i2]);
        }
        for (int i3 = 0; i3 < b; i3++) {
            hashMap.remove(Integer.valueOf(LittleEndian.getShort(grpprl, i)));
            i += 2;
        }
        int i4 = i + 1;
        byte b2 = grpprl[i];
        int i5 = i4;
        for (int i6 = 0; i6 < b2; i6++) {
            hashMap.put(Integer.valueOf(LittleEndian.getShort(grpprl, i5)), new TabDescriptor(grpprl, (TBDAbstractType.getSize() * b2) + i6 + i4));
            i5 += 2;
        }
        int size = hashMap.size();
        int[] iArr = new int[size];
        TabDescriptor[] tabDescriptorArr = new TabDescriptor[size];
        ArrayList arrayList = new ArrayList(hashMap.keySet());
        Collections.sort(arrayList);
        for (int i7 = 0; i7 < size; i7++) {
            Integer num = (Integer) arrayList.get(i7);
            iArr[i7] = num.intValue();
            if (hashMap.containsKey(num)) {
                tabDescriptorArr[i7] = (TabDescriptor) hashMap.get(num);
            } else {
                tabDescriptorArr[i7] = new TabDescriptor();
            }
        }
        paragraphProperties.setRgdxaTab(iArr);
        paragraphProperties.setRgtbd(tabDescriptorArr);
    }

    public static void unCompressPAPOperation(ParagraphProperties paragraphProperties, SprmOperation sprmOperation) {
        int operation = sprmOperation.getOperation();
        if (operation == 93) {
            paragraphProperties.setDxaRight(sprmOperation.getOperand());
            return;
        }
        if (operation == 94) {
            paragraphProperties.setDxaLeft(sprmOperation.getOperand());
            return;
        }
        if (operation == 96) {
            paragraphProperties.setDxaLeft1(sprmOperation.getOperand());
            return;
        }
        if (operation == 97) {
            paragraphProperties.setJustificationLogical((byte) sprmOperation.getOperand());
            return;
        }
        if (operation == 103) {
            paragraphProperties.setRsid(sprmOperation.getOperand());
            return;
        }
        switch (operation) {
            case 0:
                paragraphProperties.setIstd(sprmOperation.getOperand());
                return;
            case 1:
            case 21:
                return;
            case 2:
                if (paragraphProperties.getIstd() <= 9 || paragraphProperties.getIstd() >= 1) {
                    byte operand = (byte) sprmOperation.getOperand();
                    paragraphProperties.setIstd(paragraphProperties.getIstd() + operand);
                    paragraphProperties.setLvl((byte) (paragraphProperties.getLvl() + operand));
                    if (((operand >> 7) & 1) == 1) {
                        paragraphProperties.setIstd(Math.max(paragraphProperties.getIstd(), 1));
                        return;
                    } else {
                        paragraphProperties.setIstd(Math.min(paragraphProperties.getIstd(), 9));
                        return;
                    }
                }
                return;
            case 3:
                paragraphProperties.setJc((byte) sprmOperation.getOperand());
                return;
            case 4:
                paragraphProperties.setFSideBySide(sprmOperation.getOperand() != 0);
                return;
            case 5:
                paragraphProperties.setFKeep(sprmOperation.getOperand() != 0);
                return;
            case 6:
                paragraphProperties.setFKeepFollow(sprmOperation.getOperand() != 0);
                return;
            case 7:
                paragraphProperties.setFPageBreakBefore(sprmOperation.getOperand() != 0);
                return;
            case 8:
                paragraphProperties.setBrcl((byte) sprmOperation.getOperand());
                return;
            case 9:
                paragraphProperties.setBrcp((byte) sprmOperation.getOperand());
                return;
            case 10:
                paragraphProperties.setIlvl((byte) sprmOperation.getOperand());
                return;
            case 11:
                paragraphProperties.setIlfo(sprmOperation.getOperandShortSigned());
                return;
            case 12:
                paragraphProperties.setFNoLnn(sprmOperation.getOperand() != 0);
                return;
            case 13:
                handleTabs(paragraphProperties, sprmOperation);
                return;
            case 14:
                paragraphProperties.setDxaRight(sprmOperation.getOperand());
                return;
            case 15:
                paragraphProperties.setDxaLeft(sprmOperation.getOperand());
                return;
            case 16:
                paragraphProperties.setDxaLeft(paragraphProperties.getDxaLeft() + sprmOperation.getOperand());
                paragraphProperties.setDxaLeft(Math.max(0, paragraphProperties.getDxaLeft()));
                return;
            case 17:
                paragraphProperties.setDxaLeft1(sprmOperation.getOperand());
                return;
            case 18:
                paragraphProperties.setLspd(new LineSpacingDescriptor(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()));
                return;
            case 19:
                paragraphProperties.setDyaBefore(sprmOperation.getOperand());
                return;
            case 20:
                paragraphProperties.setDyaAfter(sprmOperation.getOperand());
                return;
            case 22:
                paragraphProperties.setFInTable(sprmOperation.getOperand() != 0);
                return;
            case 23:
                paragraphProperties.setFTtp(sprmOperation.getOperand() != 0);
                return;
            case 24:
                paragraphProperties.setDxaAbs(sprmOperation.getOperand());
                return;
            case 25:
                paragraphProperties.setDyaAbs(sprmOperation.getOperand());
                return;
            case 26:
                paragraphProperties.setDxaWidth(sprmOperation.getOperand());
                return;
            case 27:
                byte operand2 = (byte) sprmOperation.getOperand();
                byte b = (byte) ((operand2 & 12) >> 2);
                byte b2 = (byte) (operand2 & 3);
                if (b != 3) {
                    paragraphProperties.setPcVert(b);
                }
                if (b2 != 3) {
                    paragraphProperties.setPcHorz(b2);
                    return;
                }
                return;
            default:
                switch (operation) {
                    case 34:
                        paragraphProperties.setDxaFromText(sprmOperation.getOperand());
                        return;
                    case 35:
                        paragraphProperties.setWr((byte) sprmOperation.getOperand());
                        return;
                    case 36:
                        paragraphProperties.setBrcTop(new BorderCode(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()));
                        return;
                    case 37:
                        paragraphProperties.setBrcLeft(new BorderCode(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()));
                        return;
                    case 38:
                        paragraphProperties.setBrcBottom(new BorderCode(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()));
                        return;
                    case 39:
                        paragraphProperties.setBrcRight(new BorderCode(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()));
                        return;
                    case 40:
                        paragraphProperties.setBrcBetween(new BorderCode(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()));
                        return;
                    case 41:
                        paragraphProperties.setBrcBar(new BorderCode(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()));
                        return;
                    case 42:
                        paragraphProperties.setFNoAutoHyph(sprmOperation.getOperand() != 0);
                        return;
                    case 43:
                        paragraphProperties.setDyaHeight(sprmOperation.getOperand());
                        return;
                    case 44:
                        paragraphProperties.setDcs(new DropCapSpecifier((short) sprmOperation.getOperand()));
                        return;
                    case 45:
                        paragraphProperties.setShd(new ShadingDescriptor80((short) sprmOperation.getOperand()).toShadingDescriptor());
                        return;
                    case 46:
                        paragraphProperties.setDyaFromText(sprmOperation.getOperand());
                        return;
                    case 47:
                        paragraphProperties.setDxaFromText(sprmOperation.getOperand());
                        return;
                    case 48:
                        paragraphProperties.setFLocked(sprmOperation.getOperand() != 0);
                        return;
                    case 49:
                        paragraphProperties.setFWidowControl(sprmOperation.getOperand() != 0);
                        return;
                    default:
                        switch (operation) {
                            case 51:
                                paragraphProperties.setFKinsoku(sprmOperation.getOperand() != 0);
                                return;
                            case 52:
                                paragraphProperties.setFWordWrap(sprmOperation.getOperand() != 0);
                                return;
                            case 53:
                                paragraphProperties.setFOverflowPunct(sprmOperation.getOperand() != 0);
                                return;
                            case 54:
                                paragraphProperties.setFTopLinePunct(sprmOperation.getOperand() != 0);
                                return;
                            case 55:
                                paragraphProperties.setFAutoSpaceDE(sprmOperation.getOperand() != 0);
                                return;
                            case 56:
                                paragraphProperties.setFAutoSpaceDN(sprmOperation.getOperand() != 0);
                                return;
                            case 57:
                                paragraphProperties.setWAlignFont(sprmOperation.getOperand());
                                return;
                            case 58:
                                paragraphProperties.setFontAlign((short) sprmOperation.getOperand());
                                return;
                            case 59:
                                return;
                            default:
                                switch (operation) {
                                    case 62:
                                        paragraphProperties.setAnld(Arrays.copyOfRange(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset(), sprmOperation.getGrpprlOffset() + (sprmOperation.size() - 3)));
                                        return;
                                    case 63:
                                        byte[] grpprl = sprmOperation.getGrpprl();
                                        int grpprlOffset = sprmOperation.getGrpprlOffset();
                                        paragraphProperties.setFPropRMark(grpprl[grpprlOffset] != 0);
                                        paragraphProperties.setIbstPropRMark(LittleEndian.getShort(grpprl, grpprlOffset + 1));
                                        paragraphProperties.setDttmPropRMark(new DateAndTime(grpprl, grpprlOffset + 3));
                                        return;
                                    case 64:
                                        paragraphProperties.setLvl((byte) sprmOperation.getOperand());
                                        return;
                                    case 65:
                                        paragraphProperties.setFBiDi(sprmOperation.getOperand() != 0);
                                        return;
                                    default:
                                        switch (operation) {
                                            case 67:
                                                paragraphProperties.setFNumRMIns(sprmOperation.getOperand() != 0);
                                                return;
                                            case 68:
                                                return;
                                            case 69:
                                                if (sprmOperation.getSizeCode() == 6) {
                                                    int size = sprmOperation.size() - 3;
                                                    byte[] bArr = new byte[size];
                                                    System.arraycopy(bArr, 0, sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset(), size);
                                                    paragraphProperties.setNumrm(bArr);
                                                    return;
                                                }
                                                return;
                                            default:
                                                switch (operation) {
                                                    case 71:
                                                        paragraphProperties.setFUsePgsuSettings(sprmOperation.getOperand() != 0);
                                                        return;
                                                    case 72:
                                                        paragraphProperties.setFAdjustRight(sprmOperation.getOperand() != 0);
                                                        return;
                                                    case 73:
                                                        paragraphProperties.setItap(sprmOperation.getOperand());
                                                        return;
                                                    case 74:
                                                        paragraphProperties.setItap((byte) (paragraphProperties.getItap() + sprmOperation.getOperand()));
                                                        return;
                                                    case 75:
                                                        paragraphProperties.setFInnerTableCell(sprmOperation.getOperand() != 0);
                                                        return;
                                                    case 76:
                                                        paragraphProperties.setFTtpEmbedded(sprmOperation.getOperand() != 0);
                                                        return;
                                                    case 77:
                                                        paragraphProperties.setShading(new ShadingDescriptor(sprmOperation.getGrpprl(), 3));
                                                        return;
                                                    default:
                                                        LOG.atDebug().log("Unknown PAP sprm ignored: {}", sprmOperation);
                                                        return;
                                                }
                                        }
                                }
                        }
                }
        }
    }

    public static ParagraphProperties uncompressPAP(ParagraphProperties paragraphProperties, byte[] bArr, int i) {
        ParagraphProperties copy = paragraphProperties.copy();
        SprmIterator sprmIterator = new SprmIterator(bArr, i);
        while (sprmIterator.hasNext()) {
            SprmOperation next = sprmIterator.next();
            if (next.getType() == 1) {
                try {
                    unCompressPAPOperation(copy, next);
                } catch (Exception e) {
                    LOG.atError().withThrowable(e).log("Unable to apply SPRM operation '{}'", Unbox.box(next.getOperation()));
                }
            }
        }
        return copy;
    }
}
