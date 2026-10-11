package org.apache.poi.xssf.usermodel;

import org.apache.poi.ss.usermodel.Color;
import org.apache.poi.ss.usermodel.FontFormatting;
import org.apache.poi.ss.usermodel.FontUnderline;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STVerticalAlignRun;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColor;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STUnderlineValues;

/* loaded from: classes13.dex */
public class XSSFFontFormatting implements FontFormatting {
    private IndexedColorMap _colorMap;
    private CTFont _font;

    public XSSFFontFormatting(CTFont cTFont, IndexedColorMap indexedColorMap) {
        this._font = cTFont;
        this._colorMap = indexedColorMap;
    }

    @Override // org.apache.poi.ss.usermodel.FontFormatting
    public short getEscapementType() {
        if (this._font.sizeOfVertAlignArray() == 0) {
            return (short) 0;
        }
        return (short) (this._font.getVertAlignArray(0).getVal().intValue() - 1);
    }

    @Override // org.apache.poi.ss.usermodel.FontFormatting
    public short getFontColorIndex() {
        if (this._font.sizeOfColorArray() == 0) {
            return (short) -1;
        }
        CTColor colorArray = this._font.getColorArray(0);
        return (short) (colorArray.isSetIndexed() ? (int) colorArray.getIndexed() : 0);
    }

    @Override // org.apache.poi.ss.usermodel.FontFormatting
    public int getFontHeight() {
        if (this._font.sizeOfSzArray() == 0) {
            return -1;
        }
        return (int) (this._font.getSzArray(0).getVal() * 20.0d);
    }

    @Override // org.apache.poi.ss.usermodel.FontFormatting
    public short getUnderlineType() {
        if (this._font.sizeOfUArray() == 0) {
            return (short) 0;
        }
        int intValue = this._font.getUArray(0).getVal().intValue();
        short s = 1;
        if (intValue != 1) {
            s = 2;
            if (intValue != 2) {
                if (intValue != 3) {
                    return intValue != 4 ? (short) 0 : (short) 34;
                }
                return (short) 33;
            }
        }
        return s;
    }

    @Override // org.apache.poi.ss.usermodel.FontFormatting
    public boolean isBold() {
        return this._font.sizeOfBArray() == 1 && this._font.getBArray(0).getVal();
    }

    @Override // org.apache.poi.ss.usermodel.FontFormatting
    public boolean isItalic() {
        return this._font.sizeOfIArray() == 1 && this._font.getIArray(0).getVal();
    }

    @Override // org.apache.poi.ss.usermodel.FontFormatting
    public boolean isStruckout() {
        return this._font.sizeOfStrikeArray() > 0 && this._font.getStrikeArray(0).getVal();
    }

    @Override // org.apache.poi.ss.usermodel.FontFormatting
    public void resetFontStyle() {
        this._font.set(CTFont.Factory.newInstance());
    }

    @Override // org.apache.poi.ss.usermodel.FontFormatting
    public void setEscapementType(short s) {
        this._font.setVertAlignArray(null);
        if (s != 0) {
            this._font.addNewVertAlign().setVal(STVerticalAlignRun.Enum.forInt(s + 1));
        }
    }

    @Override // org.apache.poi.ss.usermodel.FontFormatting
    public void setFontColor(Color color) {
        XSSFColor xSSFColor = XSSFColor.toXSSFColor(color);
        if (xSSFColor == null) {
            this._font.getColorList().clear();
        } else if (this._font.sizeOfColorArray() == 0) {
            this._font.addNewColor().setRgb(xSSFColor.getRGB());
        } else {
            this._font.setColorArray(0, xSSFColor.getCTColor());
        }
    }

    @Override // org.apache.poi.ss.usermodel.FontFormatting
    public void setFontColorIndex(short s) {
        this._font.setColorArray(null);
        if (s != -1) {
            this._font.addNewColor().setIndexed(s);
        }
    }

    @Override // org.apache.poi.ss.usermodel.FontFormatting
    public void setFontHeight(int i) {
        this._font.setSzArray(null);
        if (i != -1) {
            this._font.addNewSz().setVal(i / 20.0d);
        }
    }

    @Override // org.apache.poi.ss.usermodel.FontFormatting
    public void setFontStyle(boolean z, boolean z2) {
        this._font.setIArray(null);
        this._font.setBArray(null);
        if (z) {
            this._font.addNewI().setVal(true);
        }
        if (z2) {
            this._font.addNewB().setVal(true);
        }
    }

    @Override // org.apache.poi.ss.usermodel.FontFormatting
    public void setUnderlineType(short s) {
        this._font.setUArray(null);
        if (s != 0) {
            this._font.addNewU().setVal(STUnderlineValues.Enum.forInt(FontUnderline.valueOf(s).getValue()));
        }
    }

    @Override // org.apache.poi.ss.usermodel.FontFormatting
    public XSSFColor getFontColor() {
        if (this._font.sizeOfColorArray() == 0) {
            return null;
        }
        return XSSFColor.from(this._font.getColorArray(0), this._colorMap);
    }
}
