package org.apache.poi.hwpf.sprm;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hwpf.model.Colorref;
import org.apache.poi.hwpf.model.Hyphenation;
import org.apache.poi.hwpf.model.StyleSheet;
import org.apache.poi.hwpf.usermodel.BorderCode;
import org.apache.poi.hwpf.usermodel.CharacterProperties;
import org.apache.poi.hwpf.usermodel.DateAndTime;
import org.apache.poi.hwpf.usermodel.ShadingDescriptor80;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class CharacterSprmUncompressor extends SprmUncompressor {
    private static final Logger LOG = LogManager.getLogger((Class<?>) CharacterSprmUncompressor.class);

    private static void applySprms(CharacterProperties characterProperties, byte[] bArr, int i, boolean z, CharacterProperties characterProperties2) {
        SprmIterator sprmIterator = new SprmIterator(bArr, i);
        while (sprmIterator.hasNext()) {
            SprmOperation next = sprmIterator.next();
            if (next.getType() == 2) {
                unCompressCHPOperation(characterProperties, characterProperties2, next);
            } else if (z) {
                LOG.atWarn().log("Non-CHP SPRM returned by SprmIterator: {}", next);
            }
        }
    }

    private static boolean getCHPFlag(byte b, boolean z) {
        if (b == 0) {
            return false;
        }
        if (b == 1) {
            return true;
        }
        int i = b & 129;
        if (i == 128) {
            return z;
        }
        if (i == 129) {
            return !z;
        }
        return false;
    }

    private static Integer getIstd(byte[] bArr, int i) {
        Integer num = null;
        try {
            SprmIterator sprmIterator = new SprmIterator(bArr, i);
            while (sprmIterator.hasNext()) {
                SprmOperation next = sprmIterator.next();
                if (next.getType() == 2 && next.getOperation() == 48) {
                    num = Integer.valueOf(next.getOperand());
                }
            }
        } catch (Exception e) {
            LOG.atError().withThrowable(e).log("Unable to extract istd from direct CHP SPRM");
        }
        return num;
    }

    public static void unCompressCHPOperation(CharacterProperties characterProperties, CharacterProperties characterProperties2, SprmOperation sprmOperation) {
        switch (sprmOperation.getOperation()) {
            case 0:
                characterProperties2.setFRMarkDel(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 1:
                characterProperties2.setFRMark(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 2:
                characterProperties2.setFFldVanish(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 3:
                characterProperties2.setFcPic(sprmOperation.getOperand());
                characterProperties2.setFSpec(true);
                return;
            case 4:
                characterProperties2.setIbstRMark((short) sprmOperation.getOperand());
                return;
            case 5:
                characterProperties2.setDttmRMark(new DateAndTime(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()));
                return;
            case 6:
                characterProperties2.setFData(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 7:
            case 11:
            case 13:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 49:
            case 52:
            case 71:
            case 76:
            case 82:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 96:
            case 97:
            case 103:
            case 104:
            case 105:
            case 106:
            case 107:
            case 108:
            case 113:
            case 114:
            case 115:
            case 116:
                return;
            case 8:
                int operand = sprmOperation.getOperand();
                characterProperties2.setFChsDiff(SprmUncompressor.getFlag((short) (operand & 255)));
                characterProperties2.setChse((short) (operand & 16776960));
                return;
            case 9:
                characterProperties2.setFSpec(true);
                characterProperties2.setFtcSym(LittleEndian.getShort(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()));
                characterProperties2.setXchSym(LittleEndian.getShort(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset() + 2));
                return;
            case 10:
                characterProperties2.setFOle2(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 12:
                characterProperties2.setIcoHighlight((byte) sprmOperation.getOperand());
                characterProperties2.setFHighlight(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 14:
                characterProperties2.setFcObj(sprmOperation.getOperand());
                return;
            case 48:
                characterProperties2.setIstd(sprmOperation.getOperand());
                return;
            case 50:
                characterProperties2.setFBold(false);
                characterProperties2.setFItalic(false);
                characterProperties2.setFOutline(false);
                characterProperties2.setFStrike(false);
                characterProperties2.setFShadow(false);
                characterProperties2.setFSmallCaps(false);
                characterProperties2.setFCaps(false);
                characterProperties2.setFVanish(false);
                characterProperties2.setKul((byte) 0);
                characterProperties2.setIco((byte) 0);
                return;
            case 51:
                characterProperties.copy().setFSpec(characterProperties2.isFSpec());
                return;
            case 53:
                characterProperties2.setFBold(getCHPFlag((byte) sprmOperation.getOperand(), characterProperties.isFBold()));
                return;
            case 54:
                characterProperties2.setFItalic(getCHPFlag((byte) sprmOperation.getOperand(), characterProperties.isFItalic()));
                return;
            case 55:
                characterProperties2.setFStrike(getCHPFlag((byte) sprmOperation.getOperand(), characterProperties.isFStrike()));
                return;
            case 56:
                characterProperties2.setFOutline(getCHPFlag((byte) sprmOperation.getOperand(), characterProperties.isFOutline()));
                return;
            case 57:
                characterProperties2.setFShadow(getCHPFlag((byte) sprmOperation.getOperand(), characterProperties.isFShadow()));
                return;
            case 58:
                characterProperties2.setFSmallCaps(getCHPFlag((byte) sprmOperation.getOperand(), characterProperties.isFSmallCaps()));
                return;
            case 59:
                characterProperties2.setFCaps(getCHPFlag((byte) sprmOperation.getOperand(), characterProperties.isFCaps()));
                return;
            case 60:
                characterProperties2.setFVanish(getCHPFlag((byte) sprmOperation.getOperand(), characterProperties.isFVanish()));
                return;
            case 61:
                characterProperties2.setFtcAscii((short) sprmOperation.getOperand());
                return;
            case 62:
                characterProperties2.setKul((byte) sprmOperation.getOperand());
                return;
            case 63:
                int operand2 = sprmOperation.getOperand();
                int i = operand2 & 255;
                if (i != 0) {
                    characterProperties2.setHps(i);
                }
                byte b = (byte) (((byte) ((65280 & operand2) >>> 8)) >>> 1);
                if (b != 0) {
                    characterProperties2.setHps(Math.max(characterProperties2.getHps() + (b * 2), 2));
                }
                byte b2 = (byte) ((16711680 & operand2) >>> 16);
                if (b2 != Byte.MIN_VALUE) {
                    characterProperties2.setHpsPos(b2);
                }
                boolean z = (operand2 & 256) > 0;
                if (z && (b2 & 255) != 128 && b2 != 0 && characterProperties.getHpsPos() == 0) {
                    characterProperties2.setHps(Math.max(characterProperties2.getHps() - 2, 2));
                }
                if (z && b2 == 0 && characterProperties.getHpsPos() != 0) {
                    characterProperties2.setHps(Math.max(characterProperties2.getHps() + 2, 2));
                    return;
                }
                return;
            case 64:
                characterProperties2.setDxaSpace(sprmOperation.getOperand());
                return;
            case 65:
                characterProperties2.setLidDefault((short) sprmOperation.getOperand());
                return;
            case 66:
                characterProperties2.setIco((byte) sprmOperation.getOperand());
                return;
            case 67:
                characterProperties2.setHps(sprmOperation.getOperand());
                return;
            case 68:
                characterProperties2.setHps(Math.max(characterProperties2.getHps() + (((byte) sprmOperation.getOperand()) * 2), 2));
                return;
            case 69:
                characterProperties2.setHpsPos((short) sprmOperation.getOperand());
                return;
            case 70:
                if (sprmOperation.getOperand() != 0) {
                    if (characterProperties.getHpsPos() == 0) {
                        characterProperties2.setHps(Math.max(characterProperties2.getHps() - 2, 2));
                        return;
                    }
                    return;
                } else {
                    if (characterProperties.getHpsPos() != 0) {
                        characterProperties2.setHps(Math.max(characterProperties2.getHps() + 2, 2));
                        return;
                    }
                    return;
                }
            case 72:
                characterProperties2.setIss((byte) sprmOperation.getOperand());
                return;
            case 73:
                characterProperties2.setHps(LittleEndian.getShort(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()));
                return;
            case 74:
                characterProperties2.setHps(Math.max(characterProperties2.getHps() + LittleEndian.getShort(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()), 8));
                return;
            case 75:
                characterProperties2.setHpsKern(sprmOperation.getOperand());
                return;
            case 77:
                characterProperties2.setHps(characterProperties2.getHps() + ((int) ((sprmOperation.getOperand() / 100.0f) * characterProperties2.getHps())));
                return;
            case 78:
                characterProperties2.setHresi(new Hyphenation((short) sprmOperation.getOperand()));
                return;
            case 79:
                characterProperties2.setFtcAscii((short) sprmOperation.getOperand());
                return;
            case 80:
                characterProperties2.setFtcFE((short) sprmOperation.getOperand());
                return;
            case 81:
                characterProperties2.setFtcOther((short) sprmOperation.getOperand());
                return;
            case 83:
                characterProperties2.setFDStrike(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 84:
                characterProperties2.setFImprint(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 85:
                characterProperties2.setFSpec(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 86:
                characterProperties2.setFObj(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 87:
                byte[] grpprl = sprmOperation.getGrpprl();
                int grpprlOffset = sprmOperation.getGrpprlOffset();
                characterProperties2.setFPropRMark(grpprl[grpprlOffset] != 0);
                characterProperties2.setIbstPropRMark(LittleEndian.getShort(grpprl, grpprlOffset + 1));
                characterProperties2.setDttmPropRMark(new DateAndTime(grpprl, grpprlOffset + 3));
                return;
            case 88:
                characterProperties2.setFEmboss(SprmUncompressor.getFlag(sprmOperation.getOperand()));
                return;
            case 89:
                characterProperties2.setSfxtText((byte) sprmOperation.getOperand());
                return;
            case 98:
                byte[] bArr = new byte[32];
                byte[] grpprl2 = sprmOperation.getGrpprl();
                int grpprlOffset2 = sprmOperation.getGrpprlOffset();
                characterProperties2.setFDispFldRMark(grpprl2[grpprlOffset2] != 0);
                characterProperties2.setIbstDispFldRMark(LittleEndian.getShort(grpprl2, grpprlOffset2 + 1));
                characterProperties2.setDttmDispFldRMark(new DateAndTime(grpprl2, grpprlOffset2 + 3));
                System.arraycopy(grpprl2, grpprlOffset2 + 7, bArr, 0, 32);
                characterProperties2.setXstDispFldRMark(bArr);
                return;
            case 99:
                characterProperties2.setIbstRMarkDel((short) sprmOperation.getOperand());
                return;
            case 100:
                characterProperties2.setDttmRMarkDel(new DateAndTime(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()));
                return;
            case 101:
                characterProperties2.setBrc(new BorderCode(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()));
                return;
            case 102:
                characterProperties2.setShd(new ShadingDescriptor80(sprmOperation.getGrpprl(), sprmOperation.getGrpprlOffset()).toShadingDescriptor());
                return;
            case 109:
                characterProperties2.setLidDefault((short) sprmOperation.getOperand());
                return;
            case 110:
                characterProperties2.setLidFE((short) sprmOperation.getOperand());
                return;
            case 111:
                characterProperties2.setIdctHint((byte) sprmOperation.getOperand());
                return;
            case 112:
                characterProperties2.setCv(new Colorref(sprmOperation.getOperand()));
                return;
            case 117:
                characterProperties2.setFNoProof(getCHPFlag((byte) sprmOperation.getOperand(), characterProperties.isFNoProof()));
                return;
            default:
                LOG.atDebug().log("Unknown CHP sprm ignored: {}", sprmOperation);
                return;
        }
    }

    @Deprecated
    public static CharacterProperties uncompressCHP(CharacterProperties characterProperties, byte[] bArr, int i) {
        CharacterProperties copy = characterProperties.copy();
        applySprms(characterProperties, bArr, i, true, copy);
        return copy;
    }

    public static CharacterProperties uncompressCHP(StyleSheet styleSheet, CharacterProperties characterProperties, byte[] bArr, int i) {
        CharacterProperties copy;
        if (characterProperties == null) {
            characterProperties = new CharacterProperties();
            copy = new CharacterProperties();
        } else {
            copy = characterProperties.copy();
        }
        Integer istd = getIstd(bArr, i);
        if (istd != null) {
            try {
                applySprms(characterProperties, styleSheet.getCHPX(istd.intValue()), 0, false, copy);
            } catch (Exception e) {
                LOG.atError().withThrowable(e).log("Unable to apply all style {} CHP SPRMs to CHP", istd);
            }
        }
        CharacterProperties copy2 = copy.copy();
        try {
            applySprms(copy, bArr, i, true, copy2);
        } catch (Exception e2) {
            LOG.atError().withThrowable(e2).log("Unable to process all direct CHP SPRMs");
        }
        return copy2;
    }
}
