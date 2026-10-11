package org.apache.poi.xssf.extractor;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.xml.parsers.ParserConfigurationException;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ooxml.POIXMLDocument;
import org.apache.poi.ooxml.POIXMLProperties;
import org.apache.poi.ooxml.extractor.POIXMLTextExtractor;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.ss.extractor.ExcelExtractor;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.util.XMLHelper;
import org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable;
import org.apache.poi.xssf.eventusermodel.XSSFReader;
import org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler;
import org.apache.poi.xssf.model.Comments;
import org.apache.poi.xssf.model.SharedStrings;
import org.apache.poi.xssf.model.Styles;
import org.apache.poi.xssf.model.StylesTable;
import org.apache.poi.xssf.usermodel.XSSFComment;
import org.apache.poi.xssf.usermodel.XSSFShape;
import org.apache.poi.xssf.usermodel.XSSFSimpleShape;
import org.apache.xmlbeans.XmlException;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

/* loaded from: classes13.dex */
public class XSSFEventBasedExcelExtractor implements POIXMLTextExtractor, ExcelExtractor {
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) XSSFEventBasedExcelExtractor.class);
    protected boolean concatenatePhoneticRuns;
    protected final OPCPackage container;
    private boolean doCloseFilesystem;
    protected boolean formulasNotResults;
    protected boolean includeCellComments;
    protected boolean includeHeadersFooters;
    protected boolean includeSheetNames;
    protected boolean includeTextBoxes;
    protected Locale locale;
    protected final POIXMLProperties properties;

    /* loaded from: classes13.dex */
    public class SheetTextExtractor implements XSSFSheetXMLHandler.SheetContentsHandler {
        private final Map<String, String> headerFooterMap;
        private final StringBuilder output = new StringBuilder(64);
        private boolean firstCellOfRow = true;

        public SheetTextExtractor() {
            this.headerFooterMap = XSSFEventBasedExcelExtractor.this.includeHeadersFooters ? new HashMap() : null;
        }

        private void appendHeaderFooterText(StringBuilder sb, String str) {
            String str2 = this.headerFooterMap.get(str);
            if (str2 == null || str2.length() <= 0) {
                return;
            }
            sb.append(handleHeaderFooterDelimiter(handleHeaderFooterDelimiter(handleHeaderFooterDelimiter(str2, "&L"), "&C"), "&R"));
            sb.append('\n');
        }

        private String handleHeaderFooterDelimiter(String str, String str2) {
            int indexOf = str.indexOf(str2);
            if (indexOf == 0) {
                return str.substring(2);
            }
            if (indexOf <= 0) {
                return str;
            }
            return str.substring(0, indexOf) + "\t" + str.substring(indexOf + 2);
        }

        public void appendCellText(StringBuilder sb) {
            XSSFEventBasedExcelExtractor.this.checkMaxTextSize(sb, this.output.toString());
            sb.append((CharSequence) this.output);
        }

        public void appendFooterText(StringBuilder sb) {
            appendHeaderFooterText(sb, "firstFooter");
            appendHeaderFooterText(sb, "oddFooter");
            appendHeaderFooterText(sb, "evenFooter");
        }

        public void appendHeaderText(StringBuilder sb) {
            appendHeaderFooterText(sb, "firstHeader");
            appendHeaderFooterText(sb, "oddHeader");
            appendHeaderFooterText(sb, "evenHeader");
        }

        @Override // org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler.SheetContentsHandler
        public void cell(String str, String str2, XSSFComment xSSFComment) {
            if (this.firstCellOfRow) {
                this.firstCellOfRow = false;
            } else {
                this.output.append('\t');
            }
            if (str2 != null) {
                XSSFEventBasedExcelExtractor.this.checkMaxTextSize(this.output, str2);
                this.output.append(str2);
            }
            if (!XSSFEventBasedExcelExtractor.this.includeCellComments || xSSFComment == null) {
                return;
            }
            String replace = xSSFComment.getString().getString().replace('\n', ' ');
            this.output.append(str2 != null ? " Comment by " : "Comment by ");
            XSSFEventBasedExcelExtractor.this.checkMaxTextSize(this.output, replace);
            if (replace.startsWith(xSSFComment.getAuthor() + ": ")) {
                this.output.append(replace);
                return;
            }
            StringBuilder sb = this.output;
            sb.append(xSSFComment.getAuthor());
            sb.append(": ");
            sb.append(replace);
        }

        @Override // org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler.SheetContentsHandler
        public void endRow(int i) {
            this.output.append('\n');
        }

        @Override // org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler.SheetContentsHandler
        public void headerFooter(String str, boolean z, String str2) {
            Map<String, String> map = this.headerFooterMap;
            if (map != null) {
                map.put(str2, str);
            }
        }

        public void reset() {
            this.output.setLength(0);
            this.firstCellOfRow = true;
            Map<String, String> map = this.headerFooterMap;
            if (map != null) {
                map.clear();
            }
        }

        @Override // org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler.SheetContentsHandler
        public void startRow(int i) {
            this.firstCellOfRow = true;
        }
    }

    public XSSFEventBasedExcelExtractor(String str) throws XmlException, OpenXML4JException, IOException {
        this(OPCPackage.open(str));
    }

    public SharedStrings createSharedStringsTable(XSSFReader xSSFReader, OPCPackage oPCPackage) throws IOException, SAXException {
        return new ReadOnlySharedStringsTable(oPCPackage, this.concatenatePhoneticRuns);
    }

    @Override // org.apache.poi.ooxml.extractor.POIXMLTextExtractor
    public POIXMLProperties.CoreProperties getCoreProperties() {
        return this.properties.getCoreProperties();
    }

    @Override // org.apache.poi.ooxml.extractor.POIXMLTextExtractor
    public POIXMLProperties.CustomProperties getCustomProperties() {
        return this.properties.getCustomProperties();
    }

    @Override // org.apache.poi.ooxml.extractor.POIXMLTextExtractor, org.apache.poi.extractor.POITextExtractor
    public POIXMLDocument getDocument() {
        return null;
    }

    @Override // org.apache.poi.ooxml.extractor.POIXMLTextExtractor
    public POIXMLProperties.ExtendedProperties getExtendedProperties() {
        return this.properties.getExtendedProperties();
    }

    public boolean getFormulasNotResults() {
        return this.formulasNotResults;
    }

    public boolean getIncludeCellComments() {
        return this.includeCellComments;
    }

    public boolean getIncludeHeadersFooters() {
        return this.includeHeadersFooters;
    }

    public boolean getIncludeSheetNames() {
        return this.includeSheetNames;
    }

    public boolean getIncludeTextBoxes() {
        return this.includeTextBoxes;
    }

    public Locale getLocale() {
        return this.locale;
    }

    @Override // org.apache.poi.ooxml.extractor.POIXMLTextExtractor
    public OPCPackage getPackage() {
        return this.container;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public String getText() {
        try {
            XSSFReader xSSFReader = new XSSFReader(this.container);
            SharedStrings createSharedStringsTable = createSharedStringsTable(xSSFReader, this.container);
            StylesTable stylesTable = xSSFReader.getStylesTable();
            XSSFReader.SheetIterator sheetIterator = (XSSFReader.SheetIterator) xSSFReader.getSheetsData();
            StringBuilder sb = new StringBuilder(64);
            SheetTextExtractor sheetTextExtractor = new SheetTextExtractor();
            while (sheetIterator.hasNext()) {
                InputStream next = sheetIterator.next();
                try {
                    if (this.includeSheetNames) {
                        sb.append(sheetIterator.getSheetName());
                        sb.append('\n');
                    }
                    processSheet(sheetTextExtractor, stylesTable, this.includeCellComments ? sheetIterator.getSheetComments() : null, createSharedStringsTable, next);
                    if (this.includeHeadersFooters) {
                        sheetTextExtractor.appendHeaderText(sb);
                    }
                    sheetTextExtractor.appendCellText(sb);
                    if (this.includeTextBoxes) {
                        processShapes(sheetIterator.getShapes(), sb);
                    }
                    if (this.includeHeadersFooters) {
                        sheetTextExtractor.appendFooterText(sb);
                    }
                    sheetTextExtractor.reset();
                    if (next != null) {
                        next.close();
                    }
                } finally {
                }
            }
            return sb.toString();
        } catch (IOException | OpenXML4JException | SAXException e) {
            LOGGER.atWarn().withThrowable(e).log("Failed to load text");
            return "";
        }
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public boolean isCloseFilesystem() {
        return this.doCloseFilesystem;
    }

    public void processShapes(List<XSSFShape> list, StringBuilder sb) {
        String text;
        if (list == null) {
            return;
        }
        for (XSSFShape xSSFShape : list) {
            if ((xSSFShape instanceof XSSFSimpleShape) && (text = ((XSSFSimpleShape) xSSFShape).getText()) != null && text.length() > 0) {
                sb.append(text);
                sb.append('\n');
            }
        }
    }

    public void processSheet(XSSFSheetXMLHandler.SheetContentsHandler sheetContentsHandler, Styles styles, Comments comments, SharedStrings sharedStrings, InputStream inputStream) throws IOException, SAXException {
        DataFormatter dataFormatter = this.locale == null ? new DataFormatter() : new DataFormatter(this.locale);
        InputSource inputSource = new InputSource(inputStream);
        try {
            XMLReader newXMLReader = XMLHelper.newXMLReader();
            newXMLReader.setContentHandler(new XSSFSheetXMLHandler(styles, comments, sharedStrings, sheetContentsHandler, dataFormatter, this.formulasNotResults));
            newXMLReader.parse(inputSource);
        } catch (ParserConfigurationException e) {
            throw new IllegalStateException("SAX parser appears to be broken - " + e.getMessage());
        }
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public void setCloseFilesystem(boolean z) {
        this.doCloseFilesystem = z;
    }

    public void setConcatenatePhoneticRuns(boolean z) {
        this.concatenatePhoneticRuns = z;
    }

    public void setFormulasNotResults(boolean z) {
        this.formulasNotResults = z;
    }

    @Override // org.apache.poi.ss.extractor.ExcelExtractor
    public void setIncludeCellComments(boolean z) {
        this.includeCellComments = z;
    }

    @Override // org.apache.poi.ss.extractor.ExcelExtractor
    public void setIncludeHeadersFooters(boolean z) {
        this.includeHeadersFooters = z;
    }

    @Override // org.apache.poi.ss.extractor.ExcelExtractor
    public void setIncludeSheetNames(boolean z) {
        this.includeSheetNames = z;
    }

    public void setIncludeTextBoxes(boolean z) {
        this.includeTextBoxes = z;
    }

    public void setLocale(Locale locale) {
        this.locale = locale;
    }

    public XSSFEventBasedExcelExtractor(OPCPackage oPCPackage) throws XmlException, OpenXML4JException, IOException {
        this.includeTextBoxes = true;
        this.includeSheetNames = true;
        this.includeHeadersFooters = true;
        this.concatenatePhoneticRuns = true;
        this.doCloseFilesystem = true;
        this.container = oPCPackage;
        this.properties = new POIXMLProperties(oPCPackage);
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public OPCPackage getFilesystem() {
        return this.container;
    }
}
