package org.apache.poi.hwpf.usermodel;

import com.google.android.material.motion.MotionUtils;
import java.util.NoSuchElementException;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.hwpf.HWPFDocumentCore;
import org.apache.poi.hwpf.model.LFO;
import org.apache.poi.hwpf.model.ListLevel;
import org.apache.poi.hwpf.model.ListTables;
import org.apache.poi.hwpf.model.PAPX;
import org.apache.poi.hwpf.model.StyleSheet;
import org.apache.poi.hwpf.sprm.ParagraphSprmUncompressor;
import org.apache.poi.hwpf.sprm.SprmBuffer;
import org.apache.poi.hwpf.sprm.TableSprmCompressor;
import org.apache.poi.util.Internal;

/* loaded from: classes12.dex */
public class Paragraph extends Range implements Duplicatable {
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) Paragraph.class);
    public static final short SPRM_ANLD = -14786;
    public static final short SPRM_AUTOSPACEDE = 9271;
    public static final short SPRM_AUTOSPACEDN = 9272;
    public static final short SPRM_BRCBAR = 26153;
    public static final short SPRM_BRCBOTTOM = 25638;
    public static final short SPRM_BRCL = 9224;
    public static final short SPRM_BRCLEFT = 25637;
    public static final short SPRM_BRCP = 9225;
    public static final short SPRM_BRCRIGHT = 25639;
    public static final short SPRM_BRCTOP = 25636;
    public static final short SPRM_CHGTABS = -14827;
    public static final short SPRM_CHGTABSPAPX = -14835;
    public static final short SPRM_CRLF = 9284;
    public static final short SPRM_DCS = 17452;
    public static final short SPRM_DXAABS = -31720;
    public static final short SPRM_DXAFROMTEXT = -31697;
    public static final short SPRM_DXALEFT = -31729;
    public static final short SPRM_DXALEFT1 = -31727;
    public static final short SPRM_DXARIGHT = -31730;
    public static final short SPRM_DXAWIDTH = -31718;
    public static final short SPRM_DYAABS = -31719;
    public static final short SPRM_DYAAFTER = -23532;
    public static final short SPRM_DYABEFORE = -23533;
    public static final short SPRM_DYAFROMTEXT = -31698;
    public static final short SPRM_DYALINE = 25618;
    public static final short SPRM_FADJUSTRIGHT = 9288;
    public static final short SPRM_FBIDI = 9281;
    public static final short SPRM_FINTABLE = 9238;
    public static final short SPRM_FKEEP = 9221;
    public static final short SPRM_FKEEPFOLLOW = 9222;
    public static final short SPRM_FKINSOKU = 9267;
    public static final short SPRM_FLOCKED = 9264;
    public static final short SPRM_FNOAUTOHYPH = 9258;
    public static final short SPRM_FNOLINENUMB = 9228;
    public static final short SPRM_FNUMRMLNS = 9283;
    public static final short SPRM_FOVERFLOWPUNCT = 9269;
    public static final short SPRM_FPAGEBREAKBEFORE = 9223;
    public static final short SPRM_FRAMETEXTFLOW = 17466;
    public static final short SPRM_FSIDEBYSIDE = 9220;
    public static final short SPRM_FTOPLINEPUNCT = 9270;
    public static final short SPRM_FTTP = 9239;
    public static final short SPRM_FWIDOWCONTROL = 9265;
    public static final short SPRM_FWORDWRAP = 9268;
    public static final short SPRM_ILFO = 17931;
    public static final short SPRM_ILVL = 9738;
    public static final short SPRM_JC = 9219;
    public static final short SPRM_NUMRM = -14779;
    public static final short SPRM_OUTLVL = 9792;
    public static final short SPRM_PC = 9755;
    public static final short SPRM_PROPRMARK = -14785;
    public static final short SPRM_RULER = -14798;
    public static final short SPRM_SHD = -14771;
    public static final short SPRM_SHD80 = 17453;
    public static final short SPRM_USEPGSUSETTINGS = 9287;
    public static final short SPRM_WALIGNFONT = 17465;
    public static final short SPRM_WHEIGHTABS = 17451;
    public static final short SPRM_WR = 9251;
    protected short _istd;
    protected SprmBuffer _papx;
    protected ParagraphProperties _props;

    @Internal
    public Paragraph(PAPX papx, ParagraphProperties paragraphProperties, Range range) {
        super(Math.max(range._start, papx.getStart()), Math.min(range._end, papx.getEnd()), range);
        this._props = paragraphProperties;
        this._papx = papx.getSprmBuf();
        this._istd = papx.getIstd();
    }

    private short getFrameTextFlow() {
        short s = this._props.isFVertical() ? (short) 1 : (short) 0;
        if (this._props.isFBackward()) {
            s = (short) (s | 2);
        }
        return this._props.isFRotateFont() ? (short) (s | 4) : s;
    }

    @Internal
    public static Paragraph newParagraph(Range range, PAPX papx) {
        LFO lfo;
        ListLevel level;
        HWPFDocumentCore hWPFDocumentCore = range._doc;
        ListTables listTables = hWPFDocumentCore.getListTables();
        StyleSheet styleSheet = hWPFDocumentCore.getStyleSheet();
        ParagraphProperties paragraphProperties = new ParagraphProperties();
        paragraphProperties.setIstd(papx.getIstd());
        ParagraphProperties uncompressPAP = ParagraphSprmUncompressor.uncompressPAP(newParagraph_applyStyleProperties(styleSheet, papx, paragraphProperties), papx.getGrpprl(), 2);
        if (uncompressPAP.getIlfo() != 0 && listTables != null) {
            try {
                lfo = listTables.getLfo(uncompressPAP.getIlfo());
            } catch (NoSuchElementException unused) {
                LOGGER.atWarn().log("Paragraph refers to LFO #{} that does not exists", Unbox.box(uncompressPAP.getIlfo()));
                lfo = null;
            }
            if (lfo != null && (level = listTables.getLevel(lfo.getLsid(), uncompressPAP.getIlvl())) != null && level.getGrpprlPapx() != null) {
                uncompressPAP = ParagraphSprmUncompressor.uncompressPAP(newParagraph_applyStyleProperties(styleSheet, papx, ParagraphSprmUncompressor.uncompressPAP(uncompressPAP, level.getGrpprlPapx(), 0)), papx.getGrpprl(), 2);
            }
        }
        return uncompressPAP.getIlfo() > 0 ? new ListEntry(papx, uncompressPAP, range) : new Paragraph(papx, uncompressPAP, range);
    }

    public static ParagraphProperties newParagraph_applyStyleProperties(StyleSheet styleSheet, PAPX papx, ParagraphProperties paragraphProperties) {
        return styleSheet == null ? paragraphProperties : ParagraphSprmUncompressor.uncompressPAP(paragraphProperties, styleSheet.getPAPX(papx.getIstd()), 2);
    }

    public ParagraphProperties cloneProperties() {
        return this._props.copy();
    }

    public BorderCode getBarBorder() {
        return this._props.getBrcBar();
    }

    public BorderCode getBottomBorder() {
        return this._props.getBrcBottom();
    }

    public DropCapSpecifier getDropCap() {
        return this._props.getDcs();
    }

    public int getFirstLineIndent() {
        return this._props.getDxaLeft1();
    }

    public int getFontAlignment() {
        return this._props.getWAlignFont();
    }

    public int getIlfo() {
        return this._props.getIlfo();
    }

    public int getIlvl() {
        return this._props.getIlvl();
    }

    public int getIndentFromLeft() {
        return this._props.getDxaLeft();
    }

    public int getIndentFromRight() {
        return this._props.getDxaRight();
    }

    public int getJustification() {
        return this._props.getJc();
    }

    public BorderCode getLeftBorder() {
        return this._props.getBrcLeft();
    }

    public LineSpacingDescriptor getLineSpacing() {
        return this._props.getLspd();
    }

    public HWPFList getList() {
        if (getIlfo() == 0 || getIlfo() == 63489) {
            throw new IllegalStateException("Paragraph not in list");
        }
        return new HWPFList(getDocument().getStyleSheet(), getDocument().getListTables(), getIlfo());
    }

    public int getLvl() {
        return this._props.getLvl();
    }

    @Internal
    public ParagraphProperties getProps() {
        return this._props;
    }

    public BorderCode getRightBorder() {
        return this._props.getBrcRight();
    }

    public ShadingDescriptor getShading() {
        return this._props.getShd();
    }

    public int getSpacingAfter() {
        return this._props.getDyaAfter();
    }

    public int getSpacingBefore() {
        return this._props.getDyaBefore();
    }

    public short getStyleIndex() {
        return this._istd;
    }

    public int getTabStopsNumber() {
        return this._props.getItbdMac();
    }

    public int[] getTabStopsPositions() {
        return this._props.getRgdxaTab();
    }

    public int getTableLevel() {
        return this._props.getItap();
    }

    public BorderCode getTopBorder() {
        return this._props.getBrcTop();
    }

    public boolean isAutoHyphenated() {
        return !this._props.getFNoAutoHyph();
    }

    public boolean isBackward() {
        return this._props.isFBackward();
    }

    public boolean isEmbeddedCellMark() {
        return this._props.getFInnerTableCell();
    }

    public boolean isInList() {
        return (getIlfo() == 0 || getIlfo() == 63489) ? false : true;
    }

    public boolean isInTable() {
        return this._props.getFInTable();
    }

    public boolean isKinsoku() {
        return this._props.getFKinsoku();
    }

    public boolean isLineNotNumbered() {
        return this._props.getFNoLnn();
    }

    public boolean isSideBySide() {
        return this._props.getFSideBySide();
    }

    public boolean isTableRowEnd() {
        return this._props.getFTtp() || this._props.getFTtpEmbedded();
    }

    public boolean isVertical() {
        return this._props.isFVertical();
    }

    public boolean isWidowControlled() {
        return this._props.getFWidowControl();
    }

    public boolean isWordWrapped() {
        return this._props.getFWordWrap();
    }

    public boolean keepOnPage() {
        return this._props.getFKeep();
    }

    public boolean keepWithNext() {
        return this._props.getFKeepFollow();
    }

    public boolean pageBreakBefore() {
        return this._props.getFPageBreakBefore();
    }

    public void setAutoHyphenated(boolean z) {
        this._props.setFNoAutoHyph(!z);
        this._papx.updateSprm(SPRM_FNOAUTOHYPH, !z);
    }

    public void setBackward(boolean z) {
        this._props.setFBackward(z);
        this._papx.updateSprm(SPRM_FRAMETEXTFLOW, getFrameTextFlow());
    }

    public void setBarBorder(BorderCode borderCode) {
        this._props.setBrcBar(borderCode);
        this._papx.updateSprm(SPRM_BRCBAR, borderCode.toInt());
    }

    public void setBottomBorder(BorderCode borderCode) {
        this._props.setBrcBottom(borderCode);
        this._papx.updateSprm(SPRM_BRCBOTTOM, borderCode.toInt());
    }

    public void setDropCap(DropCapSpecifier dropCapSpecifier) {
        this._props.setDcs(dropCapSpecifier);
        this._papx.updateSprm(SPRM_DCS, dropCapSpecifier.toShort());
    }

    public void setFirstLineIndent(int i) {
        this._props.setDxaLeft1(i);
        this._papx.updateSprm(SPRM_DXALEFT1, (short) i);
    }

    public void setFontAlignment(int i) {
        this._props.setWAlignFont(i);
        this._papx.updateSprm(SPRM_WALIGNFONT, (short) i);
    }

    public void setIndentFromLeft(int i) {
        this._props.setDxaLeft(i);
        this._papx.updateSprm(SPRM_DXALEFT, (short) i);
    }

    public void setIndentFromRight(int i) {
        this._props.setDxaRight(i);
        this._papx.updateSprm(SPRM_DXARIGHT, (short) i);
    }

    public void setJustification(byte b) {
        this._props.setJc(b);
        this._papx.updateSprm(SPRM_JC, b);
    }

    public void setKeepOnPage(boolean z) {
        this._props.setFKeep(z);
        this._papx.updateSprm(SPRM_FKEEP, z);
    }

    public void setKeepWithNext(boolean z) {
        this._props.setFKeepFollow(z);
        this._papx.updateSprm(SPRM_FKEEPFOLLOW, z);
    }

    public void setKinsoku(boolean z) {
        this._props.setFKinsoku(z);
        this._papx.updateSprm(SPRM_FKINSOKU, z);
    }

    public void setLeftBorder(BorderCode borderCode) {
        this._props.setBrcLeft(borderCode);
        this._papx.updateSprm(SPRM_BRCLEFT, borderCode.toInt());
    }

    public void setLineNotNumbered(boolean z) {
        this._props.setFNoLnn(z);
        this._papx.updateSprm(SPRM_FNOLINENUMB, z);
    }

    public void setLineSpacing(LineSpacingDescriptor lineSpacingDescriptor) {
        this._props.setLspd(lineSpacingDescriptor);
        this._papx.updateSprm(SPRM_DYALINE, lineSpacingDescriptor.toInt());
    }

    public void setPageBreakBefore(boolean z) {
        this._props.setFPageBreakBefore(z);
        this._papx.updateSprm(SPRM_FPAGEBREAKBEFORE, z);
    }

    public void setRightBorder(BorderCode borderCode) {
        this._props.setBrcRight(borderCode);
        this._papx.updateSprm(SPRM_BRCRIGHT, borderCode.toInt());
    }

    public void setShading(ShadingDescriptor shadingDescriptor) {
        this._props.setShd(shadingDescriptor);
        this._papx.addSprm(SPRM_SHD, shadingDescriptor.serialize());
    }

    public void setSideBySide(boolean z) {
        this._props.setFSideBySide(z);
        this._papx.updateSprm(SPRM_FSIDEBYSIDE, z);
    }

    public void setSpacingAfter(int i) {
        this._props.setDyaAfter(i);
        this._papx.updateSprm(SPRM_DYAAFTER, (short) i);
    }

    public void setSpacingBefore(int i) {
        this._props.setDyaBefore(i);
        this._papx.updateSprm(SPRM_DYABEFORE, (short) i);
    }

    public void setTableRowEnd(TableProperties tableProperties) {
        setTableRowEnd(true);
        this._papx.append(TableSprmCompressor.compressTableProperty(tableProperties));
    }

    public void setTopBorder(BorderCode borderCode) {
        this._props.setBrcTop(borderCode);
        this._papx.updateSprm(SPRM_BRCTOP, borderCode.toInt());
    }

    public void setVertical(boolean z) {
        this._props.setFVertical(z);
        this._papx.updateSprm(SPRM_FRAMETEXTFLOW, getFrameTextFlow());
    }

    public void setWidowControl(boolean z) {
        this._props.setFWidowControl(z);
        this._papx.updateSprm(SPRM_FWIDOWCONTROL, z);
    }

    public void setWordWrapped(boolean z) {
        this._props.setFWordWrap(z);
        this._papx.updateSprm(SPRM_FWORDWRAP, z);
    }

    @Override // org.apache.poi.hwpf.usermodel.Range
    public String toString() {
        return "Paragraph [" + getStartOffset() + "; " + getEndOffset() + MotionUtils.f31762d;
    }

    @Override // org.apache.poi.common.Duplicatable
    public Paragraph copy() {
        return new Paragraph(this);
    }

    private void setTableRowEnd(boolean z) {
        this._props.setFTtp(z);
        this._papx.updateSprm(SPRM_FTTP, z);
    }

    public Paragraph(Paragraph paragraph) {
        super(paragraph);
        this._istd = paragraph._istd;
        ParagraphProperties paragraphProperties = paragraph._props;
        this._props = paragraphProperties == null ? null : paragraphProperties.copy();
        SprmBuffer sprmBuffer = paragraph._papx;
        this._papx = sprmBuffer != null ? sprmBuffer.copy() : null;
    }
}
