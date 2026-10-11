package org.apache.poi.hwpf.usermodel;

import com.google.android.material.motion.MotionUtils;
import java.math.BigDecimal;
import java.math.RoundingMode;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.HWPFDocumentCore;
import org.apache.poi.hwpf.HWPFOldDocument;
import org.apache.poi.hwpf.model.CHPX;
import org.apache.poi.hwpf.model.FFData;
import org.apache.poi.hwpf.model.Ffn;
import org.apache.poi.hwpf.model.NilPICFAndBinData;
import org.apache.poi.hwpf.model.StyleSheet;
import org.apache.poi.hwpf.sprm.SprmBuffer;

/* loaded from: classes12.dex */
public final class CharacterRun extends Range implements Duplicatable, org.apache.poi.p114wp.usermodel.CharacterRun {
    public static final short SPRM_BRC = 26725;
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
    protected SprmBuffer _chpx;
    protected short _istd;
    protected CharacterProperties _props;

    public CharacterRun(CHPX chpx, StyleSheet styleSheet, short s, Range range) {
        super(Math.max(range._start, chpx.getStart()), Math.min(range._end, chpx.getEnd()), range);
        this._props = chpx.getCharacterProperties(styleSheet, s);
        this._chpx = chpx.getSprmBuf();
        this._istd = s;
    }

    public BorderCode getBorder() {
        return this._props.getBrc();
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public int getCharacterSpacing() {
        return this._props.getDxaSpace();
    }

    public int getColor() {
        return this._props.getIco();
    }

    public Integer getDropDownListDefaultItemIndex() {
        if ((getDocument() instanceof HWPFDocument) && this._text.charAt(this._start) == 1) {
            return Integer.valueOf(new FFData(new NilPICFAndBinData(((HWPFDocument) getDocument()).getDataStream(), getPicOffset()).getBinData(), 0).getDefaultDropDownItemIndex());
        }
        return null;
    }

    public String[] getDropDownListValues() {
        if ((getDocument() instanceof HWPFDocument) && this._text.charAt(this._start) == 1) {
            return new FFData(new NilPICFAndBinData(((HWPFDocument) getDocument()).getDataStream(), getPicOffset()).getBinData(), 0).getDropList();
        }
        return null;
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public String getFontName() {
        HWPFDocumentCore hWPFDocumentCore = this._doc;
        if (hWPFDocumentCore instanceof HWPFOldDocument) {
            return ((HWPFOldDocument) hWPFDocumentCore).getOldFontTable().getMainFont(this._props.getFtcAscii());
        }
        if (hWPFDocumentCore.getFontTable() == null) {
            return null;
        }
        return this._doc.getFontTable().getMainFont(this._props.getFtcAscii());
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public int getFontSize() {
        return this._props.getHps();
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public Double getFontSizeAsDouble() {
        return Double.valueOf(getFontSize());
    }

    public byte getHighlightedColor() {
        return this._props.getIcoHighlight();
    }

    public int getIco24() {
        return this._props.getIco24();
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public int getKerning() {
        return this._props.getHpsKern();
    }

    public int getLanguageCode() {
        return this._props.getLidDefault();
    }

    public int getObjOffset() {
        return this._props.getFcObj();
    }

    public int getPicOffset() {
        return this._props.getFcPic();
    }

    public short getStyleIndex() {
        return this._istd;
    }

    public short getSubSuperScriptIndex() {
        return this._props.getIss();
    }

    public char getSymbolCharacter() {
        if (isSymbol()) {
            return (char) this._props.getXchSym();
        }
        throw new IllegalStateException("Not a symbol CharacterRun");
    }

    public Ffn getSymbolFont() {
        if (!isSymbol()) {
            throw new IllegalStateException("Not a symbol CharacterRun");
        }
        if (this._doc.getFontTable() == null) {
            return null;
        }
        Ffn[] fontNames = this._doc.getFontTable().getFontNames();
        if (fontNames.length <= this._props.getFtcSym()) {
            return null;
        }
        return fontNames[this._props.getFtcSym()];
    }

    public int getUnderlineCode() {
        return this._props.getKul();
    }

    public int getVerticalOffset() {
        return this._props.getHpsPos();
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isBold() {
        return this._props.isFBold();
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isCapitalized() {
        return this._props.isFCaps();
    }

    public boolean isData() {
        return this._props.isFData();
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isDoubleStrikeThrough() {
        return this._props.isFDStrike();
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isEmbossed() {
        return this._props.isFEmboss();
    }

    public boolean isFldVanished() {
        return this._props.isFFldVanish();
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isHighlighted() {
        return this._props.isFHighlight();
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isImprinted() {
        return this._props.isFImprint();
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isItalic() {
        return this._props.isFItalic();
    }

    public boolean isMarkedDeleted() {
        return this._props.isFRMarkDel();
    }

    public boolean isMarkedInserted() {
        return this._props.isFRMark();
    }

    public boolean isObj() {
        return this._props.isFObj();
    }

    public boolean isOle2() {
        return this._props.isFOle2();
    }

    public boolean isOutlined() {
        return this._props.isFOutline();
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isShadowed() {
        return this._props.isFShadow();
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isSmallCaps() {
        return this._props.isFSmallCaps();
    }

    public boolean isSpecialCharacter() {
        return this._props.isFSpec();
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isStrikeThrough() {
        return this._props.isFStrike();
    }

    public boolean isSymbol() {
        return isSpecialCharacter() && text().equals(MotionUtils.f31761c);
    }

    public boolean isVanished() {
        return this._props.isFVanish();
    }

    public void markDeleted(boolean z) {
        this._props.setFRMarkDel(z);
        this._chpx.updateSprm((short) 2048, z ? (byte) 1 : (byte) 0);
    }

    public void markInserted(boolean z) {
        this._props.setFRMark(z);
        this._chpx.updateSprm((short) 2049, z ? (byte) 1 : (byte) 0);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setBold(boolean z) {
        this._props.setFBold(z);
        this._chpx.updateSprm((short) 2101, z ? (byte) 1 : (byte) 0);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setCapitalized(boolean z) {
        this._props.setFCaps(z);
        this._chpx.updateSprm((short) 2107, z ? (byte) 1 : (byte) 0);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setCharacterSpacing(int i) {
        this._props.setDxaSpace(i);
        this._chpx.updateSprm((short) -30656, i);
    }

    public void setColor(int i) {
        byte b = (byte) i;
        this._props.setIco(b);
        this._chpx.updateSprm((short) 10818, b);
    }

    public void setData(boolean z) {
        this._props.setFData(z);
        this._chpx.updateSprm((short) 2134, z ? (byte) 1 : (byte) 0);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setDoubleStrikethrough(boolean z) {
        this._props.setFDStrike(z);
        this._chpx.updateSprm((short) 10835, z ? (byte) 1 : (byte) 0);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setEmbossed(boolean z) {
        this._props.setFEmboss(z);
        this._chpx.updateSprm((short) 2136, z ? (byte) 1 : (byte) 0);
    }

    public void setFldVanish(boolean z) {
        this._props.setFFldVanish(z);
        this._chpx.updateSprm((short) 2050, z ? (byte) 1 : (byte) 0);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setFontSize(int i) {
        this._props.setHps(i);
        this._chpx.updateSprm((short) 19011, (short) i);
    }

    public void setFtcAscii(int i) {
        this._props.setFtcAscii(i);
        this._chpx.updateSprm((short) 19023, (short) i);
    }

    public void setFtcFE(int i) {
        this._props.setFtcFE(i);
        this._chpx.updateSprm((short) 19024, (short) i);
    }

    public void setFtcOther(int i) {
        this._props.setFtcOther(i);
        this._chpx.updateSprm((short) 19025, (short) i);
    }

    public void setHighlighted(byte b) {
        this._props.setFHighlight(true);
        this._props.setIcoHighlight(b);
        this._chpx.updateSprm((short) 10764, b);
    }

    public void setIco24(int i) {
        this._props.setIco24(i);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setImprinted(boolean z) {
        this._props.setFImprint(z);
        this._chpx.updateSprm((short) 2132, z ? (byte) 1 : (byte) 0);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setItalic(boolean z) {
        this._props.setFItalic(z);
        this._chpx.updateSprm((short) 2102, z ? (byte) 1 : (byte) 0);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setKerning(int i) {
        this._props.setHpsKern(i);
        this._chpx.updateSprm((short) 18507, (short) i);
    }

    public void setObj(boolean z) {
        this._props.setFObj(z);
        this._chpx.updateSprm((short) 2134, z ? (byte) 1 : (byte) 0);
    }

    public void setObjOffset(int i) {
        this._props.setFcObj(i);
        this._chpx.updateSprm((short) 26638, i);
    }

    public void setOle2(boolean z) {
        this._props.setFOle2(z);
        this._chpx.updateSprm((short) 2134, z ? (byte) 1 : (byte) 0);
    }

    public void setOutline(boolean z) {
        this._props.setFOutline(z);
        this._chpx.updateSprm((short) 2104, z ? (byte) 1 : (byte) 0);
    }

    public void setPicOffset(int i) {
        this._props.setFcPic(i);
        this._chpx.updateSprm((short) 27139, i);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setShadow(boolean z) {
        this._props.setFShadow(z);
        this._chpx.updateSprm((short) 2105, z ? (byte) 1 : (byte) 0);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setSmallCaps(boolean z) {
        this._props.setFSmallCaps(z);
        this._chpx.updateSprm((short) 2106, z ? (byte) 1 : (byte) 0);
    }

    public void setSpecialCharacter(boolean z) {
        this._props.setFSpec(z);
        this._chpx.updateSprm((short) 2133, z ? (byte) 1 : (byte) 0);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setStrikeThrough(boolean z) {
        strikeThrough(z);
    }

    public void setSubSuperScriptIndex(short s) {
        this._props.setDxaSpace(s);
        this._chpx.updateSprm((short) -30656, s);
    }

    public void setUnderlineCode(int i) {
        byte b = (byte) i;
        this._props.setKul(b);
        this._chpx.updateSprm((short) 10814, b);
    }

    public void setVanished(boolean z) {
        this._props.setFVanish(z);
        this._chpx.updateSprm((short) 2108, z ? (byte) 1 : (byte) 0);
    }

    public void setVerticalOffset(int i) {
        this._props.setHpsPos((short) i);
        this._chpx.updateSprm((short) 18501, (byte) i);
    }

    public void strikeThrough(boolean z) {
        this._props.setFStrike(z);
        this._chpx.updateSprm((short) 2103, z ? (byte) 1 : (byte) 0);
    }

    @Override // org.apache.poi.hwpf.usermodel.Range
    public String toString() {
        String text = text();
        return "CharacterRun of " + text.length() + " characters - " + text;
    }

    public int type() {
        return 1;
    }

    @Override // org.apache.poi.common.Duplicatable
    public CharacterRun copy() {
        return new CharacterRun(this);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setFontSize(double d) {
        setFontSize(BigDecimal.valueOf(d).setScale(0, RoundingMode.HALF_UP).intValue());
    }

    public CharacterRun(CharacterRun characterRun) {
        super(characterRun);
        this._istd = characterRun._istd;
        SprmBuffer sprmBuffer = characterRun._chpx;
        this._chpx = sprmBuffer == null ? null : sprmBuffer.copy();
        CharacterProperties characterProperties = characterRun._props;
        this._props = characterProperties != null ? characterProperties.copy() : null;
    }
}
