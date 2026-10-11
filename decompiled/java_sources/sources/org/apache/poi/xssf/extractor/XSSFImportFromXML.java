package org.apache.poi.xssf.extractor;

import java.io.IOException;
import java.io.StringReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.xml.namespace.NamespaceContext;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.ooxml.util.DocumentHelper;
import org.apache.poi.ooxml.util.XPathHelper;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFMap;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFTable;
import org.apache.poi.xssf.usermodel.XSSFTableColumn;
import org.apache.poi.xssf.usermodel.helpers.XSSFSingleXmlCell;
import org.apache.poi.xssf.usermodel.helpers.XSSFXmlColumnPr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes13.dex */
public class XSSFImportFromXML {
    private static final Logger LOG = LogManager.getLogger((Class<?>) XSSFImportFromXML.class);
    private final XSSFMap _map;

    /* renamed from: org.apache.poi.xssf.extractor.XSSFImportFromXML$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199541 {

        /* renamed from: $SwitchMap$org$apache$poi$xssf$extractor$XSSFImportFromXML$DataType */
        static final /* synthetic */ int[] f111826xb4d06b94;

        static {
            int[] iArr = new int[DataType.values().length];
            f111826xb4d06b94 = iArr;
            try {
                iArr[DataType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111826xb4d06b94[DataType.DOUBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f111826xb4d06b94[DataType.INTEGER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f111826xb4d06b94[DataType.DATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f111826xb4d06b94[DataType.STRING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public enum DataType {
        BOOLEAN("boolean"),
        DOUBLE("double"),
        INTEGER("int", "unsignedInt", "integer"),
        STRING("string"),
        DATE("date");

        private Set<String> xmlDataTypes;

        DataType(String... strArr) {
            this.xmlDataTypes = new HashSet(Arrays.asList(strArr));
        }

        public static DataType getDataType(String str) {
            for (DataType dataType : values()) {
                if (dataType.xmlDataTypes.contains(str)) {
                    return dataType;
                }
            }
            return null;
        }
    }

    /* loaded from: classes13.dex */
    public static final class DefaultNamespaceContext implements NamespaceContext {
        private final Element _docElem;

        public DefaultNamespaceContext(Document document) {
            this._docElem = document.getDocumentElement();
        }

        private String getNamespaceForPrefix(String str) {
            if (str.equals("xml")) {
                return "http://www.w3.org/XML/1998/namespace";
            }
            Node node = this._docElem;
            while (node != null) {
                short nodeType = node.getNodeType();
                if (nodeType == 1) {
                    if (node.getNodeName().startsWith(str + ":")) {
                        return node.getNamespaceURI();
                    }
                    NamedNodeMap attributes = node.getAttributes();
                    for (int i = 0; i < attributes.getLength(); i++) {
                        Node item = attributes.item(i);
                        String nodeName = item.getNodeName();
                        boolean startsWith = nodeName.startsWith("xmlns:");
                        if (startsWith || nodeName.equals("xmlns")) {
                            if ((startsWith ? nodeName.substring(nodeName.indexOf(58) + 1) : "").equals(str)) {
                                return item.getNodeValue();
                            }
                        }
                    }
                    node = node.getParentNode();
                } else if (nodeType != 5) {
                    return null;
                }
            }
            return null;
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getNamespaceURI(String str) {
            return getNamespaceForPrefix(str);
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getPrefix(String str) {
            return null;
        }

        @Override // javax.xml.namespace.NamespaceContext
        public Iterator<String> getPrefixes(String str) {
            return null;
        }
    }

    public XSSFImportFromXML(XSSFMap xSSFMap) {
        this._map = xSSFMap;
    }

    private void setCellValue(String str, XSSFCell xSSFCell, String str2) {
        DataType dataType = DataType.getDataType(str2);
        try {
            if (!str.isEmpty() && dataType != null) {
                int i = C199541.f111826xb4d06b94[dataType.ordinal()];
                if (i == 1) {
                    xSSFCell.setCellValue(Boolean.parseBoolean(str));
                    return;
                }
                if (i == 2) {
                    xSSFCell.setCellValue(Double.parseDouble(str));
                    return;
                }
                if (i == 3) {
                    xSSFCell.setCellValue(Integer.parseInt(str));
                    return;
                }
                if (i != 4) {
                    xSSFCell.setCellValue(str.trim());
                    return;
                }
                xSSFCell.setCellValue(new SimpleDateFormat("yyyy-MM-dd", LocaleUtil.getUserLocale()).parse(str));
                if (DateUtil.isValidExcelDate(xSSFCell.getNumericCellValue())) {
                    return;
                }
                xSSFCell.setCellValue(str);
                return;
            }
            xSSFCell.setCellValue((String) null);
        } catch (IllegalArgumentException | ParseException unused) {
            throw new IllegalArgumentException(String.format(LocaleUtil.getUserLocale(), "Unable to format value '%s' as %s for cell %s", str, dataType, new CellReference(xSSFCell).formatAsString()));
        }
    }

    public void importFromXML(String str) throws SAXException, XPathExpressionException, IOException {
        Document parse = DocumentHelper.newDocumentBuilder().parse(new InputSource(new StringReader(str.trim())));
        List<XSSFSingleXmlCell> relatedSingleXMLCell = this._map.getRelatedSingleXMLCell();
        List<XSSFTable> relatedTables = this._map.getRelatedTables();
        XPath newXPath = XPathHelper.getFactory().newXPath();
        newXPath.setNamespaceContext(new DefaultNamespaceContext(parse));
        for (XSSFSingleXmlCell xSSFSingleXmlCell : relatedSingleXMLCell) {
            String xmlDataType = xSSFSingleXmlCell.getXmlDataType();
            String xpath = xSSFSingleXmlCell.getXpath();
            Node node = (Node) newXPath.evaluate(xpath, parse, XPathConstants.NODE);
            if (node != null) {
                String textContent = node.getTextContent();
                Logger logger = LOG;
                logger.atDebug().log("Extracting with xpath {} : value is '{}'", xpath, textContent);
                XSSFCell referencedCell = xSSFSingleXmlCell.getReferencedCell();
                logger.atDebug().log("Setting '{}' to cell {}-{} in sheet {}", textContent, Unbox.box(referencedCell.getColumnIndex()), Unbox.box(referencedCell.getRowIndex()), referencedCell.getSheet().getSheetName());
                setCellValue(textContent, referencedCell, xmlDataType);
            }
        }
        Iterator<XSSFTable> it2 = relatedTables.iterator();
        while (it2.hasNext()) {
            XSSFTable next = it2.next();
            NodeList nodeList = (NodeList) newXPath.evaluate(next.getCommonXpath(), parse, XPathConstants.NODESET);
            int row = next.getStartCellReference().getRow() + next.getHeaderRowCount();
            short col = next.getStartCellReference().getCol();
            next.setDataRowCount(nodeList.getLength());
            for (int i = 0; i < nodeList.getLength(); i++) {
                int i2 = 1;
                Node cloneNode = nodeList.item(i).cloneNode(true);
                for (XSSFTableColumn xSSFTableColumn : next.getColumns()) {
                    XSSFXmlColumnPr xmlColumnPr = xSSFTableColumn.getXmlColumnPr();
                    if (xmlColumnPr != null) {
                        int i3 = row + i;
                        int columnIndex = xSSFTableColumn.getColumnIndex() + col;
                        Document document = parse;
                        String localXPath = xmlColumnPr.getLocalXPath();
                        Iterator<XSSFTable> it3 = it2;
                        String substring = localXPath.substring(localXPath.indexOf(47, i2) + i2);
                        String str2 = (String) newXPath.evaluate(substring, cloneNode, XPathConstants.STRING);
                        Logger logger2 = LOG;
                        logger2.atDebug().log("Extracting with xpath {} : value is '{}'", substring, str2);
                        XSSFRow row2 = next.getXSSFSheet().getRow(i3);
                        if (row2 == null) {
                            row2 = next.getXSSFSheet().createRow(i3);
                        }
                        XSSFCell cell = row2.getCell(columnIndex);
                        if (cell == null) {
                            cell = row2.createCell(columnIndex);
                        }
                        logger2.atDebug().log("Setting '{}' to cell {}-{} in sheet {}", str2, Unbox.box(cell.getColumnIndex()), Unbox.box(cell.getRowIndex()), next.getXSSFSheet().getSheetName());
                        setCellValue(str2, cell, xmlColumnPr.getXmlDataType());
                        parse = document;
                        it2 = it3;
                        i2 = 1;
                    }
                }
            }
        }
    }
}
