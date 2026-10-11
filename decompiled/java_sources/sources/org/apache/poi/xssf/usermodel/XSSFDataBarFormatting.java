package org.apache.poi.xssf.usermodel;

import org.apache.poi.ss.usermodel.Color;
import org.apache.poi.ss.usermodel.DataBarFormatting;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataBar;

/* loaded from: classes13.dex */
public class XSSFDataBarFormatting implements DataBarFormatting {
    IndexedColorMap _colorMap;
    CTDataBar _databar;

    public XSSFDataBarFormatting(CTDataBar cTDataBar, IndexedColorMap indexedColorMap) {
        this._databar = cTDataBar;
        this._colorMap = indexedColorMap;
    }

    public XSSFConditionalFormattingThreshold createThreshold() {
        return new XSSFConditionalFormattingThreshold(this._databar.addNewCfvo());
    }

    @Override // org.apache.poi.ss.usermodel.DataBarFormatting
    public int getWidthMax() {
        return (int) this._databar.getMaxLength();
    }

    @Override // org.apache.poi.ss.usermodel.DataBarFormatting
    public int getWidthMin() {
        return (int) this._databar.getMinLength();
    }

    @Override // org.apache.poi.ss.usermodel.DataBarFormatting
    public boolean isIconOnly() {
        if (this._databar.isSetShowValue()) {
            return !this._databar.getShowValue();
        }
        return false;
    }

    @Override // org.apache.poi.ss.usermodel.DataBarFormatting
    public boolean isLeftToRight() {
        return true;
    }

    @Override // org.apache.poi.ss.usermodel.DataBarFormatting
    public void setColor(Color color) {
        this._databar.setColor(((XSSFColor) color).getCTColor());
    }

    @Override // org.apache.poi.ss.usermodel.DataBarFormatting
    public void setIconOnly(boolean z) {
        this._databar.setShowValue(!z);
    }

    @Override // org.apache.poi.ss.usermodel.DataBarFormatting
    public void setLeftToRight(boolean z) {
    }

    @Override // org.apache.poi.ss.usermodel.DataBarFormatting
    public void setWidthMax(int i) {
        this._databar.setMaxLength(i);
    }

    @Override // org.apache.poi.ss.usermodel.DataBarFormatting
    public void setWidthMin(int i) {
        this._databar.setMinLength(i);
    }

    @Override // org.apache.poi.ss.usermodel.DataBarFormatting
    public XSSFColor getColor() {
        return XSSFColor.from(this._databar.getColor(), this._colorMap);
    }

    @Override // org.apache.poi.ss.usermodel.DataBarFormatting
    public XSSFConditionalFormattingThreshold getMaxThreshold() {
        return new XSSFConditionalFormattingThreshold(this._databar.getCfvoArray(1));
    }

    @Override // org.apache.poi.ss.usermodel.DataBarFormatting
    public XSSFConditionalFormattingThreshold getMinThreshold() {
        return new XSSFConditionalFormattingThreshold(this._databar.getCfvoArray(0));
    }
}
