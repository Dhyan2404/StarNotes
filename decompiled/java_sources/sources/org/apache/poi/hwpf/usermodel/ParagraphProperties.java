package org.apache.poi.hwpf.usermodel;

import org.apache.poi.common.Duplicatable;
import org.apache.poi.hwpf.model.types.PAPAbstractType;

/* loaded from: classes12.dex */
public final class ParagraphProperties extends PAPAbstractType implements Duplicatable {
    private boolean jcLogical;

    public ParagraphProperties() {
        setAnld(new byte[84]);
        setPhe(new byte[12]);
    }

    public BorderCode getBarBorder() {
        return super.getBrcBar();
    }

    public BorderCode getBottomBorder() {
        return super.getBrcBottom();
    }

    public DropCapSpecifier getDropCap() {
        return super.getDcs();
    }

    public int getFirstLineIndent() {
        return super.getDxaLeft1();
    }

    public int getFontAlignment() {
        return super.getWAlignFont();
    }

    public int getIndentFromLeft() {
        return super.getDxaLeft();
    }

    public int getIndentFromRight() {
        return super.getDxaRight();
    }

    public int getJustification() {
        if (this.jcLogical && getFBiDi()) {
            byte jc = getJc();
            if (jc == 0) {
                return 2;
            }
            if (jc != 2) {
                return getJc();
            }
            return 0;
        }
        return getJc();
    }

    public BorderCode getLeftBorder() {
        return super.getBrcLeft();
    }

    public LineSpacingDescriptor getLineSpacing() {
        return super.getLspd();
    }

    public BorderCode getRightBorder() {
        return super.getBrcRight();
    }

    public ShadingDescriptor getShading() {
        return super.getShd();
    }

    public int getSpacingAfter() {
        return super.getDyaAfter();
    }

    public int getSpacingBefore() {
        return super.getDyaBefore();
    }

    public BorderCode getTopBorder() {
        return super.getBrcTop();
    }

    public boolean isAutoHyphenated() {
        return !super.getFNoAutoHyph();
    }

    public boolean isBackward() {
        return super.isFBackward();
    }

    public boolean isKinsoku() {
        return super.getFKinsoku();
    }

    public boolean isLineNotNumbered() {
        return super.getFNoLnn();
    }

    public boolean isSideBySide() {
        return super.getFSideBySide();
    }

    public boolean isVertical() {
        return super.isFVertical();
    }

    public boolean isWidowControlled() {
        return super.getFWidowControl();
    }

    public boolean isWordWrapped() {
        return super.getFWordWrap();
    }

    public boolean keepOnPage() {
        return super.getFKeep();
    }

    public boolean keepWithNext() {
        return super.getFKeepFollow();
    }

    public boolean pageBreakBefore() {
        return super.getFPageBreakBefore();
    }

    public void setAutoHyphenated(boolean z) {
        super.setFNoAutoHyph(!z);
    }

    public void setBackward(boolean z) {
        super.setFBackward(z);
    }

    public void setBarBorder(BorderCode borderCode) {
        super.setBrcBar(borderCode);
    }

    public void setBottomBorder(BorderCode borderCode) {
        super.setBrcBottom(borderCode);
    }

    public void setDropCap(DropCapSpecifier dropCapSpecifier) {
        super.setDcs(dropCapSpecifier);
    }

    public void setFirstLineIndent(int i) {
        super.setDxaLeft1(i);
    }

    public void setFontAlignment(int i) {
        super.setWAlignFont(i);
    }

    public void setIndentFromLeft(int i) {
        super.setDxaLeft(i);
    }

    public void setIndentFromRight(int i) {
        super.setDxaRight(i);
    }

    public void setJustification(byte b) {
        super.setJc(b);
        this.jcLogical = false;
    }

    public void setJustificationLogical(byte b) {
        super.setJc(b);
        this.jcLogical = true;
    }

    public void setKeepOnPage(boolean z) {
        super.setFKeep(z);
    }

    public void setKeepWithNext(boolean z) {
        super.setFKeepFollow(z);
    }

    public void setKinsoku(boolean z) {
        super.setFKinsoku(z);
    }

    public void setLeftBorder(BorderCode borderCode) {
        super.setBrcLeft(borderCode);
    }

    public void setLineNotNumbered(boolean z) {
        super.setFNoLnn(z);
    }

    public void setLineSpacing(LineSpacingDescriptor lineSpacingDescriptor) {
        super.setLspd(lineSpacingDescriptor);
    }

    public void setPageBreakBefore(boolean z) {
        super.setFPageBreakBefore(z);
    }

    public void setRightBorder(BorderCode borderCode) {
        super.setBrcRight(borderCode);
    }

    public void setShading(ShadingDescriptor shadingDescriptor) {
        super.setShd(shadingDescriptor);
    }

    public void setSideBySide(boolean z) {
        super.setFSideBySide(z);
    }

    public void setSpacingAfter(int i) {
        super.setDyaAfter(i);
    }

    public void setSpacingBefore(int i) {
        super.setDyaBefore(i);
    }

    public void setTopBorder(BorderCode borderCode) {
        super.setBrcTop(borderCode);
    }

    public void setVertical(boolean z) {
        super.setFVertical(z);
    }

    public void setWidowControl(boolean z) {
        super.setFWidowControl(z);
    }

    public void setWordWrapped(boolean z) {
        super.setFWordWrap(z);
    }

    @Override // org.apache.poi.common.Duplicatable
    public ParagraphProperties copy() {
        return new ParagraphProperties(this);
    }

    public ParagraphProperties(ParagraphProperties paragraphProperties) {
        super(paragraphProperties);
        this.jcLogical = paragraphProperties.jcLogical;
    }
}
