package org.apache.poi.hwpf.usermodel;

import com.sunia.HTREnginev2.b7n;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.hwpf.model.Colorref;
import org.apache.poi.hwpf.model.types.CHPAbstractType;

/* loaded from: classes12.dex */
public final class CharacterProperties extends CHPAbstractType implements Duplicatable {
    public static final short SPRM_BRC = 26725;
    public static final short SPRM_CCV = 26736;
    public static final short SPRM_CHARSCALE = 18514;
    public static final short SPRM_CPG = 18539;
    public static final short SPRM_DISPFLDRMARK = -13726;
    public static final short SPRM_DTTMRMARK = 26629;
    public static final short SPRM_DTTMRMARKDEL = 26724;
    public static final short SPRM_DXASPACE = -30656;
    public static final short SPRM_FBOLD = 2101;
    public static final short SPRM_FCAPS = 2107;
    public static final short SPRM_FDATA = 2054;
    public static final short SPRM_FDSTRIKE = 10835;
    public static final short SPRM_FELID = 18542;
    public static final short SPRM_FEMBOSS = 2136;
    public static final short SPRM_FFLDVANISH = 2050;
    public static final short SPRM_FIMPRINT = 2132;
    public static final short SPRM_FITALIC = 2102;
    public static final short SPRM_FOBJ = 2134;
    public static final short SPRM_FOLE2 = 2058;
    public static final short SPRM_FOUTLINE = 2104;
    public static final short SPRM_FRMARK = 2049;
    public static final short SPRM_FRMARKDEL = 2048;
    public static final short SPRM_FSHADOW = 2105;
    public static final short SPRM_FSMALLCAPS = 2106;
    public static final short SPRM_FSPEC = 2133;
    public static final short SPRM_FSTRIKE = 2103;
    public static final short SPRM_FVANISH = 2108;
    public static final short SPRM_HIGHLIGHT = 10764;
    public static final short SPRM_HPS = 19011;
    public static final short SPRM_HPSKERN = 18507;
    public static final short SPRM_HPSPOS = 18501;
    public static final short SPRM_IBSTRMARK = 18436;
    public static final short SPRM_IBSTRMARKDEL = 18531;
    public static final short SPRM_ICO = 10818;
    public static final short SPRM_IDCTHINT = 10351;
    public static final short SPRM_IDSIRMARKDEL = 18535;
    public static final short SPRM_ISS = 10824;
    public static final short SPRM_ISTD = 18992;
    public static final short SPRM_KUL = 10814;
    public static final short SPRM_LID = 19009;
    public static final short SPRM_NONFELID = 18541;
    public static final short SPRM_OBJLOCATION = 26638;
    public static final short SPRM_PICLOCATION = 27139;
    public static final short SPRM_PROPRMARK = -13737;
    public static final short SPRM_RGFTCASCII = 19023;
    public static final short SPRM_RGFTCFAREAST = 19024;
    public static final short SPRM_RGFTCNOTFAREAST = 19025;
    public static final short SPRM_SFXTEXT = 10329;
    public static final short SPRM_SHD = 18534;
    public static final short SPRM_SYMBOL = 27145;
    public static final short SPRM_YSRI = 18510;

    public CharacterProperties() {
        setFUsePgsuSettings(true);
        setXstDispFldRMark(new byte[36]);
    }

    public int getCharacterSpacing() {
        return getDxaSpace();
    }

    public int getColor() {
        return super.getIco();
    }

    public int getFontSize() {
        return getHps();
    }

    public int getIco24() {
        if (!getCv().isEmpty()) {
            return getCv().getValue();
        }
        switch (getIco()) {
            case 1:
                return 0;
            case 2:
                return 16711680;
            case 3:
                return 16776960;
            case 4:
                return 65280;
            case 5:
                return 16711935;
            case 6:
                return 255;
            case 7:
                return 65535;
            case 8:
                return 16777215;
            case 9:
                return 8388608;
            case 10:
                return 8421376;
            case 11:
                return 32768;
            case 12:
                return 8388736;
            case 13:
                return 128;
            case 14:
                return b7n.f65484e;
            case 15:
                return 8421504;
            case 16:
                return 12632256;
            default:
                return -1;
        }
    }

    public int getKerning() {
        return super.getHpsKern();
    }

    public short getSubSuperScriptIndex() {
        return getIss();
    }

    public int getUnderlineCode() {
        return super.getKul();
    }

    public int getVerticalOffset() {
        return super.getHpsPos();
    }

    public boolean isBold() {
        return isFBold();
    }

    public boolean isCapitalized() {
        return isFCaps();
    }

    public boolean isDoubleStrikeThrough() {
        return isFDStrike();
    }

    public boolean isEmbossed() {
        return isFEmboss();
    }

    public boolean isFldVanished() {
        return isFFldVanish();
    }

    public boolean isHighlighted() {
        return super.isFHighlight();
    }

    public boolean isImprinted() {
        return isFImprint();
    }

    public boolean isItalic() {
        return isFItalic();
    }

    public boolean isMarkedDeleted() {
        return isFRMarkDel();
    }

    public boolean isMarkedInserted() {
        return isFRMark();
    }

    public boolean isOutlined() {
        return isFOutline();
    }

    public boolean isShadowed() {
        return isFShadow();
    }

    public boolean isSmallCaps() {
        return isFSmallCaps();
    }

    public boolean isStrikeThrough() {
        return isFStrike();
    }

    public boolean isVanished() {
        return isFVanish();
    }

    public void markDeleted(boolean z) {
        super.setFRMarkDel(z);
    }

    public void markInserted(boolean z) {
        super.setFRMark(z);
    }

    public void setBold(boolean z) {
        super.setFBold(z);
    }

    public void setCapitalized(boolean z) {
        super.setFCaps(z);
    }

    public void setCharacterSpacing(int i) {
        super.setDxaSpace(i);
    }

    public void setColor(int i) {
        super.setIco((byte) i);
    }

    public void setDoubleStrikeThrough(boolean z) {
        super.setFDStrike(z);
    }

    public void setEmbossed(boolean z) {
        super.setFEmboss(z);
    }

    public void setFldVanish(boolean z) {
        super.setFFldVanish(z);
    }

    public void setFontSize(int i) {
        super.setHps(i);
    }

    public void setHighlighted(byte b) {
        super.setIcoHighlight(b);
    }

    public void setIco24(int i) {
        setCv(new Colorref(i & 16777215));
    }

    public void setImprinted(boolean z) {
        super.setFImprint(z);
    }

    public void setItalic(boolean z) {
        super.setFItalic(z);
    }

    public void setKerning(int i) {
        super.setHpsKern(i);
    }

    public void setOutline(boolean z) {
        super.setFOutline(z);
    }

    public void setShadow(boolean z) {
        super.setFShadow(z);
    }

    public void setSmallCaps(boolean z) {
        super.setFSmallCaps(z);
    }

    public void setSubSuperScriptIndex(short s) {
        super.setDxaSpace(s);
    }

    public void setUnderlineCode(int i) {
        super.setKul((byte) i);
    }

    public void setVanished(boolean z) {
        super.setFVanish(z);
    }

    public void setVerticalOffset(int i) {
        super.setHpsPos((short) i);
    }

    public void strikeThrough(boolean z) {
        super.setFStrike(z);
    }

    @Override // org.apache.poi.common.Duplicatable
    public CharacterProperties copy() {
        return new CharacterProperties(this);
    }

    public CharacterProperties(CharacterProperties characterProperties) {
        super(characterProperties);
    }
}
