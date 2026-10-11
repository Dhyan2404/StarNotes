package org.apache.poi.xssf.usermodel.extensions;

import java.util.Objects;
import org.apache.poi.util.Internal;
import org.apache.poi.xssf.usermodel.IndexedColorMap;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPatternFill;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STPatternType;

/* loaded from: classes13.dex */
public final class XSSFCellFill {
    private CTFill _fill;
    private IndexedColorMap _indexedColorMap;

    public XSSFCellFill(CTFill cTFill, IndexedColorMap indexedColorMap) {
        this._fill = cTFill;
        this._indexedColorMap = indexedColorMap;
    }

    private CTPatternFill ensureCTPatternFill() {
        CTPatternFill patternFill = this._fill.getPatternFill();
        return patternFill == null ? this._fill.addNewPatternFill() : patternFill;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof XSSFCellFill)) {
            return false;
        }
        XSSFCellFill xSSFCellFill = (XSSFCellFill) obj;
        return Objects.equals(getFillBackgroundColor(), xSSFCellFill.getFillBackgroundColor()) && Objects.equals(getFillForegroundColor(), xSSFCellFill.getFillForegroundColor()) && Objects.equals(getPatternType(), xSSFCellFill.getPatternType());
    }

    @Internal
    public CTFill getCTFill() {
        return this._fill;
    }

    public XSSFColor getFillBackgroundColor() {
        CTPatternFill patternFill = this._fill.getPatternFill();
        if (patternFill == null) {
            return null;
        }
        return XSSFColor.from(patternFill.getBgColor(), this._indexedColorMap);
    }

    public XSSFColor getFillForegroundColor() {
        CTPatternFill patternFill = this._fill.getPatternFill();
        if (patternFill == null) {
            return null;
        }
        return XSSFColor.from(patternFill.getFgColor(), this._indexedColorMap);
    }

    public STPatternType.Enum getPatternType() {
        CTPatternFill patternFill = this._fill.getPatternFill();
        if (patternFill == null) {
            return null;
        }
        return patternFill.getPatternType();
    }

    public int hashCode() {
        return this._fill.toString().hashCode();
    }

    public void setFillBackgroundColor(int i) {
        CTPatternFill ensureCTPatternFill = ensureCTPatternFill();
        (ensureCTPatternFill.isSetBgColor() ? ensureCTPatternFill.getBgColor() : ensureCTPatternFill.addNewBgColor()).setIndexed(i);
    }

    public void setFillForegroundColor(int i) {
        CTPatternFill ensureCTPatternFill = ensureCTPatternFill();
        (ensureCTPatternFill.isSetFgColor() ? ensureCTPatternFill.getFgColor() : ensureCTPatternFill.addNewFgColor()).setIndexed(i);
    }

    public void setPatternType(STPatternType.Enum r1) {
        ensureCTPatternFill().setPatternType(r1);
    }

    public XSSFCellFill() {
        this._fill = CTFill.Factory.newInstance();
    }

    public void setFillBackgroundColor(XSSFColor xSSFColor) {
        CTPatternFill ensureCTPatternFill = ensureCTPatternFill();
        if (xSSFColor == null) {
            ensureCTPatternFill.unsetBgColor();
        } else {
            ensureCTPatternFill.setBgColor(xSSFColor.getCTColor());
        }
    }

    public void setFillForegroundColor(XSSFColor xSSFColor) {
        CTPatternFill ensureCTPatternFill = ensureCTPatternFill();
        if (xSSFColor == null) {
            ensureCTPatternFill.unsetFgColor();
        } else {
            ensureCTPatternFill.setFgColor(xSSFColor.getCTColor());
        }
    }
}
