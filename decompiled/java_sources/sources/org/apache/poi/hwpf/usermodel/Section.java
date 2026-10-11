package org.apache.poi.hwpf.usermodel;

import com.google.android.material.motion.MotionUtils;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.hwpf.HWPFOldDocument;
import org.apache.poi.hwpf.model.SEPX;

/* loaded from: classes12.dex */
public final class Section extends Range implements Duplicatable {
    private final SectionProperties _props;

    public Section(Section section) {
        super(section);
        this._props = section._props.copy();
    }

    public int getDistanceBetweenColumns() {
        return this._props.getDxaColumns();
    }

    public int getEndnoteNumberingFormat() {
        return this._props.getNfcEdnRef();
    }

    public int getEndnoteNumberingOffset() {
        return this._props.getNEdn();
    }

    public short getEndnoteRestartQualifier() {
        return this._props.getRncEdn();
    }

    public int getFootnoteNumberingFormat() {
        return this._props.getNfcFtnRef();
    }

    public int getFootnoteNumberingOffset() {
        return this._props.getNFtn();
    }

    public short getFootnoteRestartQualifier() {
        return this._props.getRncFtn();
    }

    public int getMarginBottom() {
        return this._props.getDyaBottom();
    }

    public int getMarginLeft() {
        return this._props.getDxaLeft();
    }

    public int getMarginRight() {
        return this._props.getDxaRight();
    }

    public int getMarginTop() {
        return this._props.getDyaTop();
    }

    public int getNumColumns() {
        return this._props.getCcolM1() + 1;
    }

    public int getPageHeight() {
        return this._props.getYaPage();
    }

    public int getPageWidth() {
        return this._props.getXaPage();
    }

    public boolean isColumnsEvenlySpaced() {
        return this._props.getFEvenlySpaced();
    }

    public void setMarginBottom(int i) {
        this._props.setDyaBottom(i);
    }

    public void setMarginLeft(int i) {
        this._props.setDxaLeft(i);
    }

    public void setMarginRight(int i) {
        this._props.setDxaRight(i);
    }

    public void setMarginTop(int i) {
        this._props.setDyaTop(i);
    }

    @Override // org.apache.poi.hwpf.usermodel.Range
    public String toString() {
        return "Section [" + getStartOffset() + "; " + getEndOffset() + MotionUtils.f31762d;
    }

    public int type() {
        return 2;
    }

    @Override // org.apache.poi.common.Duplicatable
    public Section copy() {
        return new Section(this);
    }

    public Section(SEPX sepx, Range range) {
        super(Math.max(range._start, sepx.getStart()), Math.min(range._end, sepx.getEnd()), range);
        if (range.getDocument() instanceof HWPFOldDocument) {
            this._props = new SectionProperties();
        } else {
            this._props = sepx.getSectionProperties();
        }
    }
}
