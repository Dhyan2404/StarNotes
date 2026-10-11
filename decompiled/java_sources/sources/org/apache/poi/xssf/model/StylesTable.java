package org.apache.poi.xssf.model;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.usermodel.Color;
import org.apache.poi.ss.usermodel.FontFamily;
import org.apache.poi.ss.usermodel.FontScheme;
import org.apache.poi.ss.usermodel.TableStyle;
import org.apache.poi.util.Internal;
import org.apache.poi.xssf.usermodel.CustomIndexedColorMap;
import org.apache.poi.xssf.usermodel.DefaultIndexedColorMap;
import org.apache.poi.xssf.usermodel.IndexedColorMap;
import org.apache.poi.xssf.usermodel.XSSFBuiltinTableStyle;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.poi.xssf.usermodel.XSSFTableStyle;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder;
import org.apache.poi.xssf.usermodel.extensions.XSSFCellFill;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorders;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellStyleXfs;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellXfs;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDxf;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDxfs;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFills;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFonts;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTNumFmt;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTNumFmts;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTStylesheet;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableStyle;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableStyles;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STPatternType;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.StyleSheetDocument;

/* loaded from: classes13.dex */
public class StylesTable extends POIXMLDocumentPart implements Styles {
    public static final int FIRST_CUSTOM_STYLE_ID = 165;
    private static final short FIRST_USER_DEFINED_NUMBER_FORMAT_ID = 164;
    private static final int MAXIMUM_STYLE_ID = SpreadsheetVersion.EXCEL2007.getMaxCellStyles();
    private int MAXIMUM_NUMBER_OF_DATA_FORMATS;
    private final List<XSSFCellBorder> borders;
    private StyleSheetDocument doc;
    private final List<CTDxf> dxfs;
    private final List<XSSFCellFill> fills;
    private final List<XSSFFont> fonts;
    private IndexedColorMap indexedColors;
    private final SortedMap<Short, String> numberFormats;
    private final List<CTXf> styleXfs;
    private final Map<String, TableStyle> tableStyles;
    private ThemesTable theme;
    private XSSFWorkbook workbook;
    private final List<CTXf> xfs;

    public StylesTable() {
        this.numberFormats = new TreeMap();
        this.fonts = new ArrayList();
        this.fills = new ArrayList();
        this.borders = new ArrayList();
        this.styleXfs = new ArrayList();
        this.xfs = new ArrayList();
        this.dxfs = new ArrayList();
        this.tableStyles = new HashMap();
        this.indexedColors = new DefaultIndexedColorMap();
        this.MAXIMUM_NUMBER_OF_DATA_FORMATS = 250;
        StyleSheetDocument newInstance = StyleSheetDocument.Factory.newInstance();
        this.doc = newInstance;
        newInstance.addNewStyleSheet();
        initialize();
    }

    private static CTBorder createDefaultBorder() {
        CTBorder newInstance = CTBorder.Factory.newInstance();
        newInstance.addNewBottom();
        newInstance.addNewTop();
        newInstance.addNewLeft();
        newInstance.addNewRight();
        newInstance.addNewDiagonal();
        return newInstance;
    }

    private static CTFill[] createDefaultFills() {
        DocumentFactory<CTFill> documentFactory = CTFill.Factory;
        CTFill[] cTFillArr = {documentFactory.newInstance(), documentFactory.newInstance()};
        cTFillArr[0].addNewPatternFill().setPatternType(STPatternType.NONE);
        cTFillArr[1].addNewPatternFill().setPatternType(STPatternType.DARK_GRAY);
        return cTFillArr;
    }

    private static XSSFFont createDefaultFont() {
        XSSFFont xSSFFont = new XSSFFont(CTFont.Factory.newInstance(), 0, null);
        xSSFFont.setFontHeightInPoints((short) 11);
        xSSFFont.setColor(XSSFFont.DEFAULT_FONT_COLOR);
        xSSFFont.setFontName(XSSFFont.DEFAULT_FONT_NAME);
        xSSFFont.setFamily(FontFamily.SWISS);
        xSSFFont.setScheme(FontScheme.MINOR);
        return xSSFFont;
    }

    private static CTXf createDefaultXf() {
        CTXf newInstance = CTXf.Factory.newInstance();
        newInstance.setNumFmtId(0L);
        newInstance.setFontId(0L);
        newInstance.setFillId(0L);
        newInstance.setBorderId(0L);
        return newInstance;
    }

    private short getNumberFormatId(String str) {
        for (Map.Entry<Short, String> entry : this.numberFormats.entrySet()) {
            if (entry.getValue().equals(str)) {
                return entry.getKey().shortValue();
            }
        }
        throw new IllegalStateException("Number format not in style table: " + str);
    }

    private void initialize() {
        this.fonts.add(createDefaultFont());
        CTFill[] createDefaultFills = createDefaultFills();
        this.fills.add(new XSSFCellFill(createDefaultFills[0], this.indexedColors));
        this.fills.add(new XSSFCellFill(createDefaultFills[1], this.indexedColors));
        this.borders.add(new XSSFCellBorder(createDefaultBorder()));
        this.styleXfs.add(createDefaultXf());
        CTXf createDefaultXf = createDefaultXf();
        createDefaultXf.setXfId(0L);
        this.xfs.add(createDefaultXf);
    }

    @Internal
    public int _getDXfsSize() {
        return this.dxfs.size();
    }

    @Internal
    public int _getStyleXfsSize() {
        return this.styleXfs.size();
    }

    @Internal
    public int _getXfsSize() {
        return this.xfs.size();
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void commit() throws IOException {
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            writeTo(outputStream);
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public XSSFCellStyle createCellStyle() {
        int numCellStyles = getNumCellStyles();
        int i = MAXIMUM_STYLE_ID;
        if (numCellStyles > i) {
            throw new IllegalStateException("The maximum number of Cell Styles was exceeded. You can define up to " + i + " style in a .xlsx Workbook");
        }
        int size = this.styleXfs.size();
        CTXf newInstance = CTXf.Factory.newInstance();
        newInstance.setNumFmtId(0L);
        newInstance.setFontId(0L);
        newInstance.setFillId(0L);
        newInstance.setBorderId(0L);
        newInstance.setXfId(0L);
        return new XSSFCellStyle(putCellXf(newInstance) - 1, size - 1, this, this.theme);
    }

    public void ensureThemesTable() {
        XSSFWorkbook xSSFWorkbook;
        if (this.theme != null || (xSSFWorkbook = this.workbook) == null) {
            return;
        }
        setTheme((ThemesTable) xSSFWorkbook.createRelationship(XSSFRelation.THEME, xSSFWorkbook.getXssfFactory()));
    }

    public XSSFFont findFont(boolean z, short s, short s2, String str, boolean z2, boolean z3, short s3, byte b) {
        for (XSSFFont xSSFFont : this.fonts) {
            if (xSSFFont.getBold() == z && xSSFFont.getColor() == s && xSSFFont.getFontHeight() == s2 && xSSFFont.getFontName().equals(str) && xSSFFont.getItalic() == z2 && xSSFFont.getStrikeout() == z3 && xSSFFont.getTypeOffset() == s3 && xSSFFont.getUnderline() == b) {
                return xSSFFont;
            }
        }
        return null;
    }

    @Override // org.apache.poi.xssf.model.Styles
    public XSSFCellBorder getBorderAt(int i) {
        return this.borders.get(i);
    }

    public List<XSSFCellBorder> getBorders() {
        return Collections.unmodifiableList(this.borders);
    }

    @Internal
    public CTStylesheet getCTStylesheet() {
        return this.doc.getStyleSheet();
    }

    @Internal
    public CTXf getCellStyleXfAt(int i) {
        try {
            return this.styleXfs.get(i);
        } catch (IndexOutOfBoundsException unused) {
            return null;
        }
    }

    @Internal
    public CTXf getCellXfAt(int i) {
        return this.xfs.get(i);
    }

    @Internal
    public CTDxf getDxfAt(int i) {
        return this.dxfs.get(i);
    }

    public TableStyle getExplicitTableStyle(String str) {
        return this.tableStyles.get(str);
    }

    public Set<String> getExplicitTableStyleNames() {
        return this.tableStyles.keySet();
    }

    @Override // org.apache.poi.xssf.model.Styles
    public XSSFCellFill getFillAt(int i) {
        return this.fills.get(i);
    }

    public List<XSSFCellFill> getFills() {
        return Collections.unmodifiableList(this.fills);
    }

    @Override // org.apache.poi.xssf.model.Styles
    public XSSFFont getFontAt(int i) {
        return this.fonts.get(i);
    }

    public List<XSSFFont> getFonts() {
        return Collections.unmodifiableList(this.fonts);
    }

    public IndexedColorMap getIndexedColors() {
        return this.indexedColors;
    }

    public int getMaxNumberOfDataFormats() {
        return this.MAXIMUM_NUMBER_OF_DATA_FORMATS;
    }

    @Override // org.apache.poi.xssf.model.Styles
    public int getNumCellStyles() {
        return this.xfs.size();
    }

    @Override // org.apache.poi.xssf.model.Styles
    public int getNumDataFormats() {
        return this.numberFormats.size();
    }

    @Override // org.apache.poi.xssf.model.Styles
    public String getNumberFormatAt(short s) {
        return this.numberFormats.get(Short.valueOf(s));
    }

    public Map<Short, String> getNumberFormats() {
        return Collections.unmodifiableMap(this.numberFormats);
    }

    @Override // org.apache.poi.xssf.model.Styles
    public XSSFCellStyle getStyleAt(int i) {
        if (i < 0 || i >= this.xfs.size()) {
            return null;
        }
        return new XSSFCellStyle(i, this.xfs.get(i).getXfId() > 0 ? (int) this.xfs.get(i).getXfId() : 0, this, this.theme);
    }

    public TableStyle getTableStyle(String str) {
        if (str == null) {
            return null;
        }
        try {
            return XSSFBuiltinTableStyle.valueOf(str).getStyle();
        } catch (IllegalArgumentException unused) {
            return this.getExplicitTableStyle(str);
        }
    }

    public ThemesTable getTheme() {
        return this.theme;
    }

    @Override // org.apache.poi.xssf.model.Styles
    public int putBorder(XSSFCellBorder xSSFCellBorder) {
        int indexOf = this.borders.indexOf(xSSFCellBorder);
        if (indexOf != -1) {
            return indexOf;
        }
        this.borders.add(xSSFCellBorder);
        xSSFCellBorder.setThemesTable(this.theme);
        return this.borders.size() - 1;
    }

    @Internal
    public int putCellStyleXf(CTXf cTXf) {
        this.styleXfs.add(cTXf);
        return this.styleXfs.size();
    }

    @Internal
    public int putCellXf(CTXf cTXf) {
        this.xfs.add(cTXf);
        return this.xfs.size();
    }

    @Internal
    public int putDxf(CTDxf cTDxf) {
        this.dxfs.add(cTDxf);
        return this.dxfs.size();
    }

    @Override // org.apache.poi.xssf.model.Styles
    public int putFill(XSSFCellFill xSSFCellFill) {
        int indexOf = this.fills.indexOf(xSSFCellFill);
        if (indexOf != -1) {
            return indexOf;
        }
        this.fills.add(xSSFCellFill);
        return this.fills.size() - 1;
    }

    @Override // org.apache.poi.xssf.model.Styles
    public int putFont(XSSFFont xSSFFont, boolean z) {
        int indexOf = !z ? this.fonts.indexOf(xSSFFont) : -1;
        if (indexOf != -1) {
            return indexOf;
        }
        int size = this.fonts.size();
        this.fonts.add(xSSFFont);
        return size;
    }

    @Override // org.apache.poi.xssf.model.Styles
    public int putNumberFormat(String str) {
        if (this.numberFormats.containsValue(str)) {
            try {
                return getNumberFormatId(str);
            } catch (IllegalStateException unused) {
                throw new IllegalStateException("Found the format, but couldn't figure out where - should never happen!");
            }
        }
        if (this.numberFormats.size() < this.MAXIMUM_NUMBER_OF_DATA_FORMATS) {
            short s = 164;
            if (!this.numberFormats.isEmpty()) {
                short shortValue = (short) (this.numberFormats.lastKey().shortValue() + 1);
                if (shortValue >= 0) {
                    s = (short) Math.max((int) shortValue, 164);
                } else {
                    throw new IllegalStateException("Cowardly avoiding creating a number format with a negative id. This is probably due to arithmetic overflow.");
                }
            }
            this.numberFormats.put(Short.valueOf(s), str);
            return s;
        }
        throw new IllegalStateException("The maximum number of Data Formats was exceeded. You can define up to " + this.MAXIMUM_NUMBER_OF_DATA_FORMATS + " formats in a .xlsx Workbook.");
    }

    @Override // org.apache.poi.xssf.model.Styles
    public int putStyle(XSSFCellStyle xSSFCellStyle) {
        CTXf coreXf = xSSFCellStyle.getCoreXf();
        int indexOf = this.xfs.indexOf(coreXf);
        if (indexOf != -1) {
            return indexOf;
        }
        this.xfs.add(coreXf);
        return this.xfs.size() - 1;
    }

    public void readFrom(InputStream inputStream) throws IOException {
        try {
            StyleSheetDocument parse = StyleSheetDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
            this.doc = parse;
            CTStylesheet styleSheet = parse.getStyleSheet();
            CustomIndexedColorMap fromColors = CustomIndexedColorMap.fromColors(styleSheet.getColors());
            if (fromColors != null) {
                this.indexedColors = fromColors;
            }
            CTNumFmts numFmts = styleSheet.getNumFmts();
            if (numFmts != null) {
                for (CTNumFmt cTNumFmt : numFmts.getNumFmtArray()) {
                    this.numberFormats.put(Short.valueOf((short) r4.getNumFmtId()), cTNumFmt.getFormatCode());
                }
            }
            CTFonts fonts = styleSheet.getFonts();
            if (fonts != null) {
                int i = 0;
                for (CTFont cTFont : fonts.getFontArray()) {
                    this.fonts.add(new XSSFFont(cTFont, i, this.indexedColors));
                    i++;
                }
            }
            CTFills fills = styleSheet.getFills();
            if (fills != null) {
                for (CTFill cTFill : fills.getFillArray()) {
                    this.fills.add(new XSSFCellFill(cTFill, this.indexedColors));
                }
            }
            CTBorders borders = styleSheet.getBorders();
            if (borders != null) {
                for (CTBorder cTBorder : borders.getBorderArray()) {
                    this.borders.add(new XSSFCellBorder(cTBorder, this.indexedColors));
                }
            }
            CTCellXfs cellXfs = styleSheet.getCellXfs();
            if (cellXfs != null) {
                this.xfs.addAll(Arrays.asList(cellXfs.getXfArray()));
            }
            CTCellStyleXfs cellStyleXfs = styleSheet.getCellStyleXfs();
            if (cellStyleXfs != null) {
                this.styleXfs.addAll(Arrays.asList(cellStyleXfs.getXfArray()));
            }
            CTDxfs dxfs = styleSheet.getDxfs();
            if (dxfs != null) {
                this.dxfs.addAll(Arrays.asList(dxfs.getDxfArray()));
            }
            CTTableStyles tableStyles = styleSheet.getTableStyles();
            if (tableStyles == null || dxfs == null) {
                return;
            }
            int i2 = 0;
            for (CTTableStyle cTTableStyle : tableStyles.getTableStyleArray()) {
                this.tableStyles.put(cTTableStyle.getName(), new XSSFTableStyle(i2, dxfs, cTTableStyle, this.indexedColors));
                i2++;
            }
        } catch (XmlException e) {
            throw new IOException(e.getLocalizedMessage());
        }
    }

    @Override // org.apache.poi.xssf.model.Styles
    public boolean removeNumberFormat(short s) {
        boolean z = this.numberFormats.remove(Short.valueOf(s)) != null;
        if (z) {
            for (CTXf cTXf : this.xfs) {
                if (cTXf.isSetNumFmtId() && cTXf.getNumFmtId() == s) {
                    cTXf.unsetApplyNumberFormat();
                    cTXf.unsetNumFmtId();
                }
            }
        }
        return z;
    }

    @Internal
    public void replaceCellStyleXfAt(int i, CTXf cTXf) {
        this.styleXfs.set(i, cTXf);
    }

    @Internal
    public void replaceCellXfAt(int i, CTXf cTXf) {
        this.xfs.set(i, cTXf);
    }

    public void setMaxNumberOfDataFormats(int i) {
        if (i >= getNumDataFormats()) {
            this.MAXIMUM_NUMBER_OF_DATA_FORMATS = i;
        } else {
            if (i >= 0) {
                throw new IllegalStateException("Cannot set the maximum number of data formats less than the current quantity. Data formats must be explicitly removed (via StylesTable.removeNumberFormat) before the limit can be decreased.");
            }
            throw new IllegalArgumentException("Maximum Number of Data Formats must be greater than or equal to 0");
        }
    }

    public void setTheme(ThemesTable themesTable) {
        this.theme = themesTable;
        if (themesTable != null) {
            themesTable.setColorMap(getIndexedColors());
        }
        Iterator<XSSFFont> it2 = this.fonts.iterator();
        while (it2.hasNext()) {
            it2.next().setThemesTable(themesTable);
        }
        Iterator<XSSFCellBorder> it3 = this.borders.iterator();
        while (it3.hasNext()) {
            it3.next().setThemesTable(themesTable);
        }
    }

    public void setWorkbook(XSSFWorkbook xSSFWorkbook) {
        this.workbook = xSSFWorkbook;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        CTStylesheet styleSheet = this.doc.getStyleSheet();
        CTNumFmts newInstance = CTNumFmts.Factory.newInstance();
        newInstance.setCount(this.numberFormats.size());
        for (Map.Entry<Short, String> entry : this.numberFormats.entrySet()) {
            CTNumFmt addNewNumFmt = newInstance.addNewNumFmt();
            addNewNumFmt.setNumFmtId(entry.getKey().shortValue());
            addNewNumFmt.setFormatCode(entry.getValue());
        }
        styleSheet.setNumFmts(newInstance);
        CTFonts fonts = styleSheet.getFonts();
        if (fonts == null) {
            fonts = CTFonts.Factory.newInstance();
        }
        fonts.setCount(this.fonts.size());
        CTFont[] cTFontArr = new CTFont[this.fonts.size()];
        Iterator<XSSFFont> it2 = this.fonts.iterator();
        int i = 0;
        while (it2.hasNext()) {
            cTFontArr[i] = it2.next().getCTFont();
            i++;
        }
        fonts.setFontArray(cTFontArr);
        styleSheet.setFonts(fonts);
        CTFills fills = styleSheet.getFills();
        if (fills == null) {
            fills = CTFills.Factory.newInstance();
        }
        fills.setCount(this.fills.size());
        CTFill[] cTFillArr = new CTFill[this.fills.size()];
        Iterator<XSSFCellFill> it3 = this.fills.iterator();
        int i2 = 0;
        while (it3.hasNext()) {
            cTFillArr[i2] = it3.next().getCTFill();
            i2++;
        }
        fills.setFillArray(cTFillArr);
        styleSheet.setFills(fills);
        CTBorders borders = styleSheet.getBorders();
        if (borders == null) {
            borders = CTBorders.Factory.newInstance();
        }
        borders.setCount(this.borders.size());
        CTBorder[] cTBorderArr = new CTBorder[this.borders.size()];
        Iterator<XSSFCellBorder> it4 = this.borders.iterator();
        int i3 = 0;
        while (it4.hasNext()) {
            cTBorderArr[i3] = it4.next().getCTBorder();
            i3++;
        }
        borders.setBorderArray(cTBorderArr);
        styleSheet.setBorders(borders);
        if (!this.xfs.isEmpty()) {
            CTCellXfs cellXfs = styleSheet.getCellXfs();
            if (cellXfs == null) {
                cellXfs = CTCellXfs.Factory.newInstance();
            }
            cellXfs.setCount(this.xfs.size());
            cellXfs.setXfArray((CTXf[]) this.xfs.toArray(new CTXf[0]));
            styleSheet.setCellXfs(cellXfs);
        }
        if (!this.styleXfs.isEmpty()) {
            CTCellStyleXfs cellStyleXfs = styleSheet.getCellStyleXfs();
            if (cellStyleXfs == null) {
                cellStyleXfs = CTCellStyleXfs.Factory.newInstance();
            }
            cellStyleXfs.setCount(this.styleXfs.size());
            cellStyleXfs.setXfArray((CTXf[]) this.styleXfs.toArray(new CTXf[0]));
            styleSheet.setCellStyleXfs(cellStyleXfs);
        }
        if (!this.dxfs.isEmpty()) {
            CTDxfs dxfs = styleSheet.getDxfs();
            if (dxfs == null) {
                dxfs = CTDxfs.Factory.newInstance();
            }
            dxfs.setCount(this.dxfs.size());
            dxfs.setDxfArray((CTDxf[]) this.dxfs.toArray(new CTDxf[0]));
            styleSheet.setDxfs(dxfs);
        }
        this.doc.save(outputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
    }

    @Override // org.apache.poi.xssf.model.Styles
    public int putFont(XSSFFont xSSFFont) {
        return putFont(xSSFFont, false);
    }

    @Override // org.apache.poi.xssf.model.Styles
    public boolean removeNumberFormat(String str) {
        return removeNumberFormat(getNumberFormatId(str));
    }

    public XSSFFont findFont(boolean z, Color color, short s, String str, boolean z2, boolean z3, short s2, byte b) {
        for (XSSFFont xSSFFont : this.fonts) {
            if (xSSFFont.getBold() == z && xSSFFont.getXSSFColor().equals(color) && xSSFFont.getFontHeight() == s && xSSFFont.getFontName().equals(str) && xSSFFont.getItalic() == z2 && xSSFFont.getStrikeout() == z3 && xSSFFont.getTypeOffset() == s2 && xSSFFont.getUnderline() == b) {
                return xSSFFont;
            }
        }
        return null;
    }

    @Override // org.apache.poi.xssf.model.Styles
    public void putNumberFormat(short s, String str) {
        this.numberFormats.put(Short.valueOf(s), str);
    }

    public StylesTable(PackagePart packagePart) throws IOException {
        super(packagePart);
        this.numberFormats = new TreeMap();
        this.fonts = new ArrayList();
        this.fills = new ArrayList();
        this.borders = new ArrayList();
        this.styleXfs = new ArrayList();
        this.xfs = new ArrayList();
        this.dxfs = new ArrayList();
        this.tableStyles = new HashMap();
        this.indexedColors = new DefaultIndexedColorMap();
        this.MAXIMUM_NUMBER_OF_DATA_FORMATS = 250;
        InputStream inputStream = packagePart.getInputStream();
        try {
            readFrom(inputStream);
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public StylesTable(InputStream inputStream) throws IOException {
        this.numberFormats = new TreeMap();
        this.fonts = new ArrayList();
        this.fills = new ArrayList();
        this.borders = new ArrayList();
        this.styleXfs = new ArrayList();
        this.xfs = new ArrayList();
        this.dxfs = new ArrayList();
        this.tableStyles = new HashMap();
        this.indexedColors = new DefaultIndexedColorMap();
        this.MAXIMUM_NUMBER_OF_DATA_FORMATS = 250;
        readFrom(inputStream);
    }
}
