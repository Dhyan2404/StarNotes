package org.apache.poi.xssf.usermodel;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.xml.namespace.QName;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.RichTextString;
import org.apache.poi.util.Internal;
import org.apache.poi.xssf.model.StylesTable;
import org.apache.poi.xssf.model.ThemesTable;
import org.apache.xmlbeans.XmlCursor;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColor;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRElt;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRPrElt;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRst;

/* loaded from: classes13.dex */
public class XSSFRichTextString implements RichTextString {
    private static final Pattern utfPtrn = Pattern.compile("_x([0-9A-Fa-f]{4})_");

    /* renamed from: st */
    private CTRst f111831st;
    private StylesTable styles;

    public XSSFRichTextString(String str) {
        CTRst newInstance = CTRst.Factory.newInstance();
        this.f111831st = newInstance;
        newInstance.setT(str);
        preserveSpaces(this.f111831st.xgetT());
    }

    private ThemesTable getThemesTable() {
        StylesTable stylesTable = this.styles;
        if (stylesTable == null) {
            return null;
        }
        return stylesTable.getTheme();
    }

    public static void preserveSpaces(STXstring sTXstring) {
        String stringValue = sTXstring.getStringValue();
        if (stringValue == null || stringValue.length() <= 0) {
            return;
        }
        char charAt = stringValue.charAt(0);
        char charAt2 = stringValue.charAt(stringValue.length() - 1);
        if (Character.isWhitespace(charAt) || Character.isWhitespace(charAt2)) {
            XmlCursor newCursor = sTXstring.newCursor();
            try {
                newCursor.toNextToken();
                newCursor.insertAttributeWithValue(new QName("http://www.w3.org/XML/1998/namespace", "space"), "preserve");
                newCursor.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (newCursor != null) {
                        try {
                            newCursor.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }
    }

    private void setRunAttributes(CTFont cTFont, CTRPrElt cTRPrElt) {
        if (cTFont.sizeOfBArray() > 0) {
            cTRPrElt.addNewB().setVal(cTFont.getBArray(0).getVal());
        }
        if (cTFont.sizeOfUArray() > 0) {
            cTRPrElt.addNewU().setVal(cTFont.getUArray(0).getVal());
        }
        if (cTFont.sizeOfIArray() > 0) {
            cTRPrElt.addNewI().setVal(cTFont.getIArray(0).getVal());
        }
        if (cTFont.sizeOfColorArray() > 0) {
            CTColor colorArray = cTFont.getColorArray(0);
            CTColor addNewColor = cTRPrElt.addNewColor();
            if (colorArray.isSetAuto()) {
                addNewColor.setAuto(colorArray.getAuto());
            }
            if (colorArray.isSetIndexed()) {
                addNewColor.setIndexed(colorArray.getIndexed());
            }
            if (colorArray.isSetRgb()) {
                addNewColor.setRgb(colorArray.getRgb());
            }
            if (colorArray.isSetTheme()) {
                addNewColor.setTheme(colorArray.getTheme());
            }
            if (colorArray.isSetTint()) {
                addNewColor.setTint(colorArray.getTint());
            }
        }
        if (cTFont.sizeOfSzArray() > 0) {
            cTRPrElt.addNewSz().setVal(cTFont.getSzArray(0).getVal());
        }
        if (cTFont.sizeOfNameArray() > 0) {
            cTRPrElt.addNewRFont().setVal(cTFont.getNameArray(0).getVal());
        }
        if (cTFont.sizeOfFamilyArray() > 0) {
            cTRPrElt.addNewFamily().setVal(cTFont.getFamilyArray(0).getVal());
        }
        if (cTFont.sizeOfSchemeArray() > 0) {
            cTRPrElt.addNewScheme().setVal(cTFont.getSchemeArray(0).getVal());
        }
        if (cTFont.sizeOfCharsetArray() > 0) {
            cTRPrElt.addNewCharset().setVal(cTFont.getCharsetArray(0).getVal());
        }
        if (cTFont.sizeOfCondenseArray() > 0) {
            cTRPrElt.addNewCondense().setVal(cTFont.getCondenseArray(0).getVal());
        }
        if (cTFont.sizeOfExtendArray() > 0) {
            cTRPrElt.addNewExtend().setVal(cTFont.getExtendArray(0).getVal());
        }
        if (cTFont.sizeOfVertAlignArray() > 0) {
            cTRPrElt.addNewVertAlign().setVal(cTFont.getVertAlignArray(0).getVal());
        }
        if (cTFont.sizeOfOutlineArray() > 0) {
            cTRPrElt.addNewOutline().setVal(cTFont.getOutlineArray(0).getVal());
        }
        if (cTFont.sizeOfShadowArray() > 0) {
            cTRPrElt.addNewShadow().setVal(cTFont.getShadowArray(0).getVal());
        }
        if (cTFont.sizeOfStrikeArray() > 0) {
            cTRPrElt.addNewStrike().setVal(cTFont.getStrikeArray(0).getVal());
        }
    }

    public static CTFont toCTFont(CTRPrElt cTRPrElt) {
        CTFont newInstance = CTFont.Factory.newInstance();
        if (cTRPrElt == null) {
            return newInstance;
        }
        if (cTRPrElt.sizeOfBArray() > 0) {
            newInstance.addNewB().setVal(cTRPrElt.getBArray(0).getVal());
        }
        if (cTRPrElt.sizeOfUArray() > 0) {
            newInstance.addNewU().setVal(cTRPrElt.getUArray(0).getVal());
        }
        if (cTRPrElt.sizeOfIArray() > 0) {
            newInstance.addNewI().setVal(cTRPrElt.getIArray(0).getVal());
        }
        if (cTRPrElt.sizeOfColorArray() > 0) {
            CTColor colorArray = cTRPrElt.getColorArray(0);
            CTColor addNewColor = newInstance.addNewColor();
            if (colorArray.isSetAuto()) {
                addNewColor.setAuto(colorArray.getAuto());
            }
            if (colorArray.isSetIndexed()) {
                addNewColor.setIndexed(colorArray.getIndexed());
            }
            if (colorArray.isSetRgb()) {
                addNewColor.setRgb(colorArray.getRgb());
            }
            if (colorArray.isSetTheme()) {
                addNewColor.setTheme(colorArray.getTheme());
            }
            if (colorArray.isSetTint()) {
                addNewColor.setTint(colorArray.getTint());
            }
        }
        if (cTRPrElt.sizeOfSzArray() > 0) {
            newInstance.addNewSz().setVal(cTRPrElt.getSzArray(0).getVal());
        }
        if (cTRPrElt.sizeOfRFontArray() > 0) {
            newInstance.addNewName().setVal(cTRPrElt.getRFontArray(0).getVal());
        }
        if (cTRPrElt.sizeOfFamilyArray() > 0) {
            newInstance.addNewFamily().setVal(cTRPrElt.getFamilyArray(0).getVal());
        }
        if (cTRPrElt.sizeOfSchemeArray() > 0) {
            newInstance.addNewScheme().setVal(cTRPrElt.getSchemeArray(0).getVal());
        }
        if (cTRPrElt.sizeOfCharsetArray() > 0) {
            newInstance.addNewCharset().setVal(cTRPrElt.getCharsetArray(0).getVal());
        }
        if (cTRPrElt.sizeOfCondenseArray() > 0) {
            newInstance.addNewCondense().setVal(cTRPrElt.getCondenseArray(0).getVal());
        }
        if (cTRPrElt.sizeOfExtendArray() > 0) {
            newInstance.addNewExtend().setVal(cTRPrElt.getExtendArray(0).getVal());
        }
        if (cTRPrElt.sizeOfVertAlignArray() > 0) {
            newInstance.addNewVertAlign().setVal(cTRPrElt.getVertAlignArray(0).getVal());
        }
        if (cTRPrElt.sizeOfOutlineArray() > 0) {
            newInstance.addNewOutline().setVal(cTRPrElt.getOutlineArray(0).getVal());
        }
        if (cTRPrElt.sizeOfShadowArray() > 0) {
            newInstance.addNewShadow().setVal(cTRPrElt.getShadowArray(0).getVal());
        }
        if (cTRPrElt.sizeOfStrikeArray() > 0) {
            newInstance.addNewStrike().setVal(cTRPrElt.getStrikeArray(0).getVal());
        }
        return newInstance;
    }

    public static String utfDecode(String str) {
        if (str == null || !str.contains("_x")) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        Matcher matcher = utfPtrn.matcher(str);
        int i = 0;
        while (matcher.find()) {
            int start = matcher.start();
            if (start > i) {
                sb.append((CharSequence) str, i, start);
            }
            sb.append((char) Integer.decode("0x" + matcher.group(1)).intValue());
            i = matcher.end();
        }
        if (i == 0) {
            return str;
        }
        sb.append(str.substring(i));
        return sb.toString();
    }

    public static int utfLength(String str) {
        int i = 0;
        if (str == null) {
            return 0;
        }
        if (!str.contains("_x")) {
            return str.length();
        }
        while (utfPtrn.matcher(str).find()) {
            i++;
        }
        return str.length() - (i * 6);
    }

    public void append(String str, XSSFFont xSSFFont) {
        if (this.f111831st.sizeOfRArray() == 0 && this.f111831st.isSetT()) {
            CTRElt addNewR = this.f111831st.addNewR();
            addNewR.setT(this.f111831st.getT());
            preserveSpaces(addNewR.xgetT());
            this.f111831st.unsetT();
        }
        CTRElt addNewR2 = this.f111831st.addNewR();
        addNewR2.setT(str);
        preserveSpaces(addNewR2.xgetT());
        if (xSSFFont != null) {
            setRunAttributes(xSSFFont.getCTFont(), addNewR2.addNewRPr());
        }
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public void applyFont(int i, int i2, short s) {
        XSSFFont fontAt;
        StylesTable stylesTable = this.styles;
        if (stylesTable == null) {
            fontAt = new XSSFFont();
            fontAt.setFontName("#" + ((int) s));
        } else {
            fontAt = stylesTable.getFontAt(s);
        }
        applyFont(i, i2, fontAt);
    }

    public CTRst buildCTRst(String str, TreeMap<Integer, CTRPrElt> treeMap) {
        if (str.length() != treeMap.lastKey().intValue()) {
            throw new IllegalArgumentException("Text length was " + str.length() + " but the last format index was " + treeMap.lastKey());
        }
        CTRst newInstance = CTRst.Factory.newInstance();
        int i = 0;
        for (Map.Entry<Integer, CTRPrElt> entry : treeMap.entrySet()) {
            int intValue = entry.getKey().intValue();
            CTRElt addNewR = newInstance.addNewR();
            addNewR.setT(str.substring(i, intValue));
            preserveSpaces(addNewR.xgetT());
            CTRPrElt value = entry.getValue();
            if (value != null) {
                addNewR.setRPr(value);
            }
            i = intValue;
        }
        return newInstance;
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public void clearFormatting() {
        String string = getString();
        this.f111831st.setRArray(null);
        this.f111831st.setT(string);
    }

    @Internal
    public CTRst getCTRst() {
        return this.f111831st;
    }

    public XSSFFont getFontAtIndex(int i) {
        ThemesTable themesTable = getThemesTable();
        int i2 = 0;
        for (CTRElt cTRElt : this.f111831st.getRArray()) {
            int length = cTRElt.getT().length();
            if (i >= i2 && i < i2 + length) {
                XSSFFont xSSFFont = new XSSFFont(toCTFont(cTRElt.getRPr()));
                xSSFFont.setThemesTable(themesTable);
                return xSSFFont;
            }
            i2 += length;
        }
        return null;
    }

    public XSSFFont getFontOfFormattingRun(int i) {
        if (this.f111831st.sizeOfRArray() != 0 && i < this.f111831st.sizeOfRArray()) {
            CTRElt rArray = this.f111831st.getRArray(i);
            if (rArray.getRPr() != null) {
                XSSFFont xSSFFont = new XSSFFont(toCTFont(rArray.getRPr()));
                xSSFFont.setThemesTable(getThemesTable());
                return xSSFFont;
            }
        }
        return null;
    }

    public TreeMap<Integer, CTRPrElt> getFormatMap(CTRst cTRst) {
        TreeMap<Integer, CTRPrElt> treeMap = new TreeMap<>();
        int i = 0;
        for (CTRElt cTRElt : cTRst.getRArray()) {
            String t = cTRElt.getT();
            CTRPrElt rPr = cTRElt.getRPr();
            i += utfLength(t);
            treeMap.put(Integer.valueOf(i), rPr);
        }
        return treeMap;
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public int getIndexOfFormattingRun(int i) {
        if (this.f111831st.sizeOfRArray() == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f111831st.sizeOfRArray(); i3++) {
            CTRElt rArray = this.f111831st.getRArray(i3);
            if (i3 == i) {
                return i2;
            }
            i2 += rArray.getT().length();
        }
        return -1;
    }

    public int getLengthOfFormattingRun(int i) {
        if (this.f111831st.sizeOfRArray() == 0 || i >= this.f111831st.sizeOfRArray()) {
            return -1;
        }
        return this.f111831st.getRArray(i).getT().length();
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public String getString() {
        if (this.f111831st.sizeOfRArray() == 0) {
            return utfDecode(this.f111831st.getT());
        }
        StringBuilder sb = new StringBuilder();
        for (CTRElt cTRElt : this.f111831st.getRArray()) {
            sb.append(cTRElt.getT());
        }
        return utfDecode(sb.toString());
    }

    public boolean hasFormatting() {
        CTRElt[] rArray = this.f111831st.getRArray();
        if (rArray != null && rArray.length != 0) {
            for (CTRElt cTRElt : rArray) {
                if (cTRElt.isSetRPr()) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public int length() {
        return getString().length();
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public int numFormattingRuns() {
        return this.f111831st.sizeOfRArray();
    }

    public void setString(String str) {
        clearFormatting();
        this.f111831st.setT(str);
        preserveSpaces(this.f111831st.xgetT());
    }

    public void setStylesTableReference(StylesTable stylesTable) {
        this.styles = stylesTable;
        if (this.f111831st.sizeOfRArray() > 0) {
            for (CTRElt cTRElt : this.f111831st.getRArray()) {
                CTRPrElt rPr = cTRElt.getRPr();
                if (rPr != null && rPr.sizeOfRFontArray() > 0) {
                    String val = rPr.getRFontArray(0).getVal();
                    if (val.startsWith("#")) {
                        XSSFFont fontAt = this.styles.getFontAt(Integer.parseInt(val.substring(1)));
                        rPr.removeRFont(0);
                        setRunAttributes(fontAt.getCTFont(), rPr);
                    }
                }
            }
        }
    }

    public String toString() {
        String string = getString();
        return string == null ? "" : string;
    }

    public XSSFRichTextString() {
        this.f111831st = CTRst.Factory.newInstance();
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public void applyFont(int i, int i2, Font font) {
        if (i <= i2) {
            if (i < 0 || i2 > length()) {
                throw new IllegalArgumentException("Start and end index not in range, but had " + i + CloudStorageConstants.OPERATION_AND + i2);
            }
            if (i == i2) {
                return;
            }
            if (this.f111831st.sizeOfRArray() == 0 && this.f111831st.isSetT()) {
                this.f111831st.addNewR().setT(this.f111831st.getT());
                this.f111831st.unsetT();
            }
            String string = getString();
            TreeMap<Integer, CTRPrElt> formatMap = getFormatMap(this.f111831st);
            CTRPrElt newInstance = CTRPrElt.Factory.newInstance();
            setRunAttributes(((XSSFFont) font).getCTFont(), newInstance);
            applyFont(formatMap, i, i2, newInstance);
            this.f111831st.set(buildCTRst(string, formatMap));
            return;
        }
        throw new IllegalArgumentException("Start index must be less than end index, but had " + i + CloudStorageConstants.OPERATION_AND + i2);
    }

    @Internal
    public XSSFRichTextString(CTRst cTRst) {
        this.f111831st = cTRst;
    }

    public void append(String str) {
        append(str, null);
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public void applyFont(Font font) {
        applyFont(0, getString().length(), font);
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public void applyFont(short s) {
        XSSFFont fontAt;
        StylesTable stylesTable = this.styles;
        if (stylesTable == null) {
            fontAt = new XSSFFont();
            fontAt.setFontName("#" + ((int) s));
        } else {
            fontAt = stylesTable.getFontAt(s);
        }
        applyFont(0, getString().length(), fontAt);
    }

    public void applyFont(TreeMap<Integer, CTRPrElt> treeMap, int i, int i2, CTRPrElt cTRPrElt) {
        Iterator<Integer> it2 = treeMap.keySet().iterator();
        int i3 = 0;
        while (it2.hasNext()) {
            int intValue = it2.next().intValue();
            if (i3 >= i && intValue < i2) {
                it2.remove();
            }
            i3 = intValue;
        }
        if (i > 0 && !treeMap.containsKey(Integer.valueOf(i))) {
            Iterator<Map.Entry<Integer, CTRPrElt>> it3 = treeMap.entrySet().iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                Map.Entry<Integer, CTRPrElt> next = it3.next();
                if (next.getKey().intValue() > i) {
                    treeMap.put(Integer.valueOf(i), next.getValue());
                    break;
                }
            }
        }
        treeMap.put(Integer.valueOf(i2), cTRPrElt);
        SortedMap<Integer, CTRPrElt> subMap = treeMap.subMap(Integer.valueOf(i), Integer.valueOf(i2));
        while (subMap.size() > 1) {
            subMap.remove(subMap.lastKey());
        }
    }
}
