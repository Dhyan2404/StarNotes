package org.apache.poi.xssf.usermodel;

import java.util.Objects;
import org.apache.poi.common.usermodel.fonts.FontCharset;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.FontFamily;
import org.apache.poi.ss.usermodel.FontScheme;
import org.apache.poi.ss.usermodel.FontUnderline;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Removal;
import org.apache.poi.xssf.model.StylesTable;
import org.apache.poi.xssf.model.ThemesTable;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STVerticalAlignRun;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBooleanProperty;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColor;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFontFamily;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFontName;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFontScheme;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFontSize;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIntProperty;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTUnderlineProperty;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVerticalAlignFontProperty;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STFontScheme;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STUnderlineValues;

/* loaded from: classes13.dex */
public class XSSFFont implements Font {
    public static final short DEFAULT_FONT_COLOR = IndexedColors.BLACK.getIndex();
    public static final String DEFAULT_FONT_NAME = "Calibri";
    public static final short DEFAULT_FONT_SIZE = 11;
    private final CTFont _ctFont;
    private int _index;
    private IndexedColorMap _indexedColorMap;
    private ThemesTable _themes;

    @Internal
    public XSSFFont(CTFont cTFont) {
        this._ctFont = cTFont;
        this._index = 0;
    }

    private double getFontHeightRaw() {
        CTFontSize szArray = this._ctFont.sizeOfSzArray() == 0 ? null : this._ctFont.getSzArray(0);
        if (szArray != null) {
            return szArray.getVal();
        }
        return 11.0d;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof XSSFFont)) {
            return false;
        }
        XSSFFont xSSFFont = (XSSFFont) obj;
        return Objects.equals(Boolean.valueOf(getItalic()), Boolean.valueOf(xSSFFont.getItalic())) && Objects.equals(Boolean.valueOf(getBold()), Boolean.valueOf(xSSFFont.getBold())) && Objects.equals(Boolean.valueOf(getStrikeout()), Boolean.valueOf(xSSFFont.getStrikeout())) && Objects.equals(Integer.valueOf(getCharSet()), Integer.valueOf(xSSFFont.getCharSet())) && Objects.equals(Short.valueOf(getColor()), Short.valueOf(xSSFFont.getColor())) && Objects.equals(Integer.valueOf(getFamily()), Integer.valueOf(xSSFFont.getFamily())) && Objects.equals(Short.valueOf(getFontHeight()), Short.valueOf(xSSFFont.getFontHeight())) && Objects.equals(getFontName(), xSSFFont.getFontName()) && Objects.equals(getScheme(), xSSFFont.getScheme()) && Objects.equals(Short.valueOf(getThemeColor()), Short.valueOf(xSSFFont.getThemeColor())) && Objects.equals(Short.valueOf(getTypeOffset()), Short.valueOf(xSSFFont.getTypeOffset())) && Objects.equals(Byte.valueOf(getUnderline()), Byte.valueOf(xSSFFont.getUnderline())) && Objects.equals(getXSSFColor(), xSSFFont.getXSSFColor());
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public boolean getBold() {
        CTBooleanProperty bArray = this._ctFont.sizeOfBArray() == 0 ? null : this._ctFont.getBArray(0);
        return bArray != null && bArray.getVal();
    }

    @Internal
    public CTFont getCTFont() {
        return this._ctFont;
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public int getCharSet() {
        CTIntProperty charsetArray = this._ctFont.sizeOfCharsetArray() == 0 ? null : this._ctFont.getCharsetArray(0);
        return (charsetArray == null ? FontCharset.ANSI : FontCharset.valueOf(charsetArray.getVal())).getNativeId();
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public short getColor() {
        CTColor colorArray = this._ctFont.sizeOfColorArray() == 0 ? null : this._ctFont.getColorArray(0);
        if (colorArray == null) {
            return IndexedColors.BLACK.getIndex();
        }
        long indexed = colorArray.getIndexed();
        if (indexed == DEFAULT_FONT_COLOR) {
            return IndexedColors.BLACK.getIndex();
        }
        IndexedColors indexedColors = IndexedColors.RED;
        return indexed == ((long) indexedColors.getIndex()) ? indexedColors.getIndex() : (short) indexed;
    }

    public int getFamily() {
        CTFontFamily familyArray = this._ctFont.sizeOfFamilyArray() == 0 ? null : this._ctFont.getFamilyArray(0);
        return (familyArray == null ? FontFamily.NOT_APPLICABLE : FontFamily.valueOf(familyArray.getVal())).getValue();
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public short getFontHeight() {
        return (short) (getFontHeightRaw() * 20.0d);
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public short getFontHeightInPoints() {
        return (short) getFontHeightRaw();
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public String getFontName() {
        CTFontName nameArray = this._ctFont.sizeOfNameArray() == 0 ? null : this._ctFont.getNameArray(0);
        return nameArray == null ? DEFAULT_FONT_NAME : nameArray.getVal();
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public int getIndex() {
        return this._index;
    }

    @Override // org.apache.poi.ss.usermodel.Font
    @Removal(version = "6.0.0")
    @Deprecated
    public int getIndexAsInt() {
        return this._index;
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public boolean getItalic() {
        CTBooleanProperty iArray = this._ctFont.sizeOfIArray() == 0 ? null : this._ctFont.getIArray(0);
        return iArray != null && iArray.getVal();
    }

    public FontScheme getScheme() {
        CTFontScheme schemeArray = this._ctFont.sizeOfSchemeArray() == 0 ? null : this._ctFont.getSchemeArray(0);
        return schemeArray == null ? FontScheme.NONE : FontScheme.valueOf(schemeArray.getVal().intValue());
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public boolean getStrikeout() {
        CTBooleanProperty strikeArray = this._ctFont.sizeOfStrikeArray() == 0 ? null : this._ctFont.getStrikeArray(0);
        return strikeArray != null && strikeArray.getVal();
    }

    public short getThemeColor() {
        return (short) ((this._ctFont.sizeOfColorArray() == 0 ? null : this._ctFont.getColorArray(0)) == null ? 0L : r2.getTheme());
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public short getTypeOffset() {
        int intValue;
        CTVerticalAlignFontProperty vertAlignArray = this._ctFont.sizeOfVertAlignArray() == 0 ? null : this._ctFont.getVertAlignArray(0);
        if (vertAlignArray == null || (intValue = vertAlignArray.getVal().intValue()) == 1) {
            return (short) 0;
        }
        if (intValue == 2) {
            return (short) 1;
        }
        if (intValue == 3) {
            return (short) 2;
        }
        throw new POIXMLException("Wrong offset value " + intValue);
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public byte getUnderline() {
        CTUnderlineProperty uArray = this._ctFont.sizeOfUArray() == 0 ? null : this._ctFont.getUArray(0);
        if (uArray != null) {
            return FontUnderline.valueOf(uArray.getVal().intValue()).getByteValue();
        }
        return (byte) 0;
    }

    public XSSFColor getXSSFColor() {
        CTColor colorArray = this._ctFont.sizeOfColorArray() == 0 ? null : this._ctFont.getColorArray(0);
        if (colorArray == null) {
            return null;
        }
        XSSFColor from = XSSFColor.from(colorArray, this._indexedColorMap);
        ThemesTable themesTable = this._themes;
        if (themesTable != null) {
            themesTable.inheritFromThemeAsRequired(from);
        }
        return from;
    }

    public int hashCode() {
        return this._ctFont.toString().hashCode();
    }

    public long registerTo(StylesTable stylesTable) {
        return registerTo(stylesTable, true);
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public void setBold(boolean z) {
        if (!z) {
            this._ctFont.setBArray(null);
            return;
        }
        int sizeOfBArray = this._ctFont.sizeOfBArray();
        CTFont cTFont = this._ctFont;
        (sizeOfBArray == 0 ? cTFont.addNewB() : cTFont.getBArray(0)).setVal(true);
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public void setCharSet(byte b) {
        setCharSet(b & 255);
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public void setColor(short s) {
        int sizeOfColorArray = this._ctFont.sizeOfColorArray();
        CTFont cTFont = this._ctFont;
        CTColor addNewColor = sizeOfColorArray == 0 ? cTFont.addNewColor() : cTFont.getColorArray(0);
        if (s == 10) {
            addNewColor.setIndexed(IndexedColors.RED.getIndex());
        } else if (s != Short.MAX_VALUE) {
            addNewColor.setIndexed(s);
        } else {
            addNewColor.setIndexed(DEFAULT_FONT_COLOR);
        }
    }

    public void setFamily(int i) {
        int sizeOfFamilyArray = this._ctFont.sizeOfFamilyArray();
        CTFont cTFont = this._ctFont;
        (sizeOfFamilyArray == 0 ? cTFont.addNewFamily() : cTFont.getFamilyArray(0)).setVal(i);
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public void setFontHeight(short s) {
        setFontHeight(s / 20.0d);
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public void setFontHeightInPoints(short s) {
        setFontHeight(s);
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public void setFontName(String str) {
        int sizeOfNameArray = this._ctFont.sizeOfNameArray();
        CTFont cTFont = this._ctFont;
        CTFontName addNewName = sizeOfNameArray == 0 ? cTFont.addNewName() : cTFont.getNameArray(0);
        if (str == null) {
            str = DEFAULT_FONT_NAME;
        }
        addNewName.setVal(str);
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public void setItalic(boolean z) {
        if (!z) {
            this._ctFont.setIArray(null);
            return;
        }
        int sizeOfIArray = this._ctFont.sizeOfIArray();
        CTFont cTFont = this._ctFont;
        (sizeOfIArray == 0 ? cTFont.addNewI() : cTFont.getIArray(0)).setVal(true);
    }

    public void setScheme(FontScheme fontScheme) {
        int sizeOfSchemeArray = this._ctFont.sizeOfSchemeArray();
        CTFont cTFont = this._ctFont;
        (sizeOfSchemeArray == 0 ? cTFont.addNewScheme() : cTFont.getSchemeArray(0)).setVal(STFontScheme.Enum.forInt(fontScheme.getValue()));
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public void setStrikeout(boolean z) {
        if (!z) {
            this._ctFont.setStrikeArray(null);
            return;
        }
        int sizeOfStrikeArray = this._ctFont.sizeOfStrikeArray();
        CTFont cTFont = this._ctFont;
        (sizeOfStrikeArray == 0 ? cTFont.addNewStrike() : cTFont.getStrikeArray(0)).setVal(true);
    }

    public void setThemeColor(short s) {
        int sizeOfColorArray = this._ctFont.sizeOfColorArray();
        CTFont cTFont = this._ctFont;
        (sizeOfColorArray == 0 ? cTFont.addNewColor() : cTFont.getColorArray(0)).setTheme(s);
    }

    public void setThemesTable(ThemesTable themesTable) {
        this._themes = themesTable;
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public void setTypeOffset(short s) {
        if (s == 0) {
            this._ctFont.setVertAlignArray(null);
            return;
        }
        int sizeOfVertAlignArray = this._ctFont.sizeOfVertAlignArray();
        CTFont cTFont = this._ctFont;
        CTVerticalAlignFontProperty addNewVertAlign = sizeOfVertAlignArray == 0 ? cTFont.addNewVertAlign() : cTFont.getVertAlignArray(0);
        if (s == 1) {
            addNewVertAlign.setVal(STVerticalAlignRun.SUPERSCRIPT);
        } else {
            if (s == 2) {
                addNewVertAlign.setVal(STVerticalAlignRun.SUBSCRIPT);
                return;
            }
            throw new IllegalStateException("Invalid type offset: " + ((int) s));
        }
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public void setUnderline(byte b) {
        setUnderline(FontUnderline.valueOf(b));
    }

    public String toString() {
        return this._ctFont.toString();
    }

    public long registerTo(StylesTable stylesTable, boolean z) {
        this._themes = stylesTable.getTheme();
        int putFont = stylesTable.putFont(this, z);
        this._index = putFont;
        return putFont;
    }

    @Override // org.apache.poi.ss.usermodel.Font
    public void setCharSet(int i) {
        FontCharset valueOf = FontCharset.valueOf(i);
        if (valueOf != null) {
            setCharSet(valueOf);
            return;
        }
        throw new POIXMLException("Attention: an attempt to set a type of unknown charset and charset");
    }

    public void setFontHeight(double d) {
        int sizeOfSzArray = this._ctFont.sizeOfSzArray();
        CTFont cTFont = this._ctFont;
        (sizeOfSzArray == 0 ? cTFont.addNewSz() : cTFont.getSzArray(0)).setVal(d);
    }

    public void setUnderline(FontUnderline fontUnderline) {
        if (fontUnderline == FontUnderline.NONE && this._ctFont.sizeOfUArray() > 0) {
            this._ctFont.setUArray(null);
            return;
        }
        int sizeOfUArray = this._ctFont.sizeOfUArray();
        CTFont cTFont = this._ctFont;
        (sizeOfUArray == 0 ? cTFont.addNewU() : cTFont.getUArray(0)).setVal(STUnderlineValues.Enum.forInt(fontUnderline.getValue()));
    }

    public void setFamily(FontFamily fontFamily) {
        setFamily(fontFamily.getValue());
    }

    @Internal
    public XSSFFont(CTFont cTFont, int i, IndexedColorMap indexedColorMap) {
        this._ctFont = cTFont;
        this._index = (short) i;
        this._indexedColorMap = indexedColorMap;
    }

    @Removal(version = "6.0.0")
    @Deprecated
    public void setCharSet(org.apache.poi.ss.usermodel.FontCharset fontCharset) {
        CTIntProperty charsetArray;
        if (this._ctFont.sizeOfCharsetArray() == 0) {
            charsetArray = this._ctFont.addNewCharset();
        } else {
            charsetArray = this._ctFont.getCharsetArray(0);
        }
        charsetArray.setVal(fontCharset.getValue());
    }

    public void setColor(XSSFColor xSSFColor) {
        if (xSSFColor == null) {
            this._ctFont.setColorArray(null);
            return;
        }
        int sizeOfColorArray = this._ctFont.sizeOfColorArray();
        CTFont cTFont = this._ctFont;
        CTColor addNewColor = sizeOfColorArray == 0 ? cTFont.addNewColor() : cTFont.getColorArray(0);
        if (addNewColor.isSetIndexed()) {
            addNewColor.unsetIndexed();
        }
        addNewColor.setRgb(xSSFColor.getRGB());
    }

    public XSSFFont() {
        this._ctFont = CTFont.Factory.newInstance();
        setFontName(DEFAULT_FONT_NAME);
        setFontHeight(11.0d);
    }

    public void setCharSet(FontCharset fontCharset) {
        CTIntProperty charsetArray;
        if (this._ctFont.sizeOfCharsetArray() == 0) {
            charsetArray = this._ctFont.addNewCharset();
        } else {
            charsetArray = this._ctFont.getCharsetArray(0);
        }
        charsetArray.setVal(fontCharset.getNativeId());
    }
}
