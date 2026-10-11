package org.apache.poi.xssf.extractor;

import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Vector;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ooxml.util.DocumentHelper;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.util.XMLHelper;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFMap;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFTable;
import org.apache.poi.xssf.usermodel.XSSFTableColumn;
import org.apache.poi.xssf.usermodel.helpers.XSSFSingleXmlCell;
import org.apache.poi.xssf.usermodel.helpers.XSSFXmlColumnPr;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/* loaded from: classes13.dex */
public class XSSFExportToXml implements Comparator<String> {
    private static final Logger LOG = LogManager.getLogger((Class<?>) XSSFExportToXml.class);
    private final HashMap<String, Integer> indexMap = new HashMap<>();
    private XSSFMap map;

    /* renamed from: org.apache.poi.xssf.extractor.XSSFExportToXml$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199531 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType;

        static {
            int[] iArr = new int[CellType.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$CellType = iArr;
            try {
                iArr[CellType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.FORMULA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.NUMERIC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @FunctionalInterface
    /* loaded from: classes13.dex */
    public interface SecurityFeature {
        void accept(String str) throws SAXException;
    }

    public XSSFExportToXml(XSSFMap xSSFMap) {
        this.map = xSSFMap;
    }

    private Node createAttribute(Document document, Node node, String str) {
        String substring = str.substring(1);
        NamedNodeMap attributes = node.getAttributes();
        Node namedItem = attributes.getNamedItem(substring);
        if (namedItem != null) {
            return namedItem;
        }
        Attr createAttributeNS = document.createAttributeNS("", substring);
        attributes.setNamedItem(createAttributeNS);
        return createAttributeNS;
    }

    private Node createElement(Document document, Node node, String str) {
        Element createElementNS = isNamespaceDeclared() ? document.createElementNS(getNamespace(), str) : document.createElementNS("", str);
        node.appendChild(createElementNS);
        return createElementNS;
    }

    private int getAndStoreIndex(String str, String str2) {
        return this.indexMap.getOrDefault(str + "/" + str2, -1).intValue();
    }

    private Node getComplexTypeForElement(String str, Node node, Node node2) {
        String complexTypeNameFromChildren = getComplexTypeNameFromChildren(node2, removeNamespace(str));
        if ("".equals(complexTypeNameFromChildren)) {
            return null;
        }
        return getComplexTypeNodeFromSchemaChildren(node, null, complexTypeNameFromChildren);
    }

    private String getComplexTypeNameFromChildren(Node node, String str) {
        Node namedItem;
        if (node == null) {
            return "";
        }
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if ((firstChild instanceof Element) && "element".equals(firstChild.getLocalName()) && getNameOrRefElement(firstChild).getNodeValue().equals(str) && (namedItem = firstChild.getAttributes().getNamedItem("type")) != null) {
                return namedItem.getNodeValue();
            }
        }
        return "";
    }

    private Node getComplexTypeNodeFromSchemaChildren(Node node, Node node2, String str) {
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if ((firstChild instanceof Element) && "complexType".equals(firstChild.getLocalName()) && getNameOrRefElement(firstChild).getNodeValue().equals(str)) {
                for (Node firstChild2 = firstChild.getFirstChild(); firstChild2 != null; firstChild2 = firstChild2.getNextSibling()) {
                    if (firstChild2 instanceof Element) {
                        String localName = firstChild2.getLocalName();
                        if ("sequence".equals(localName) || "all".equals(localName)) {
                            node2 = firstChild2;
                            break;
                        }
                    }
                }
                if (node2 != null) {
                    break;
                }
            }
        }
        return node2;
    }

    private String getFormattedDate(XSSFCell xSSFCell) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ROOT);
        simpleDateFormat.setTimeZone(LocaleUtil.getUserTimeZone());
        return simpleDateFormat.format(xSSFCell.getDateCellValue());
    }

    private Node getNameOrRefElement(Node node) {
        Node namedItem = node.getAttributes().getNamedItem("ref");
        return namedItem != null ? namedItem : node.getAttributes().getNamedItem("name");
    }

    private String getNamespace() {
        return this.map.getCTSchema().getNamespace();
    }

    private Node getNodeByXPath(String str, Node node, Document document, boolean z) {
        String[] split = str.split("/");
        int i = 2;
        while (i < split.length) {
            String removeNamespace = removeNamespace(split[i]);
            if (removeNamespace.startsWith("@")) {
                node = createAttribute(document, node, removeNamespace);
            } else {
                Node selectNode = (z && i == split.length + (-1)) ? null : selectNode(removeNamespace, node.getChildNodes());
                if (selectNode == null) {
                    selectNode = createElement(document, node, removeNamespace);
                }
                node = selectNode;
            }
            i++;
        }
        return node;
    }

    private int indexOfElementInComplexType(String str, String str2, String str3, Node node) {
        if (node == null) {
            return 0;
        }
        String removeNamespace = removeNamespace(str2);
        int andStoreIndex = getAndStoreIndex(str, removeNamespace);
        String removeNamespace2 = removeNamespace(str3);
        int andStoreIndex2 = getAndStoreIndex(str, removeNamespace2);
        int i = 0;
        for (Node firstChild = node.getFirstChild(); firstChild != null && (andStoreIndex2 == -1 || andStoreIndex == -1); firstChild = firstChild.getNextSibling()) {
            if ((firstChild instanceof Element) && "element".equals(firstChild.getLocalName())) {
                String nodeValue = getNameOrRefElement(firstChild).getNodeValue();
                if (nodeValue.equals(removeNamespace)) {
                    this.indexMap.put(str + "/" + removeNamespace, Integer.valueOf(i));
                    andStoreIndex = i;
                }
                if (nodeValue.equals(removeNamespace2)) {
                    this.indexMap.put(str + "/" + removeNamespace2, Integer.valueOf(i));
                    andStoreIndex2 = i;
                }
            }
            i++;
        }
        if (andStoreIndex == -1 || andStoreIndex2 == -1) {
            return 0;
        }
        return Integer.compare(andStoreIndex, andStoreIndex2);
    }

    private boolean isNamespaceDeclared() {
        String namespace = getNamespace();
        return (namespace == null || namespace.isEmpty()) ? false : true;
    }

    private boolean isValid(Document document) throws SAXException {
        try {
            XMLHelper.getSchemaFactory().newSchema(new DOMSource(this.map.getSchema())).newValidator().validate(new DOMSource(document));
            return true;
        } catch (IOException e) {
            LOG.atError().withThrowable(e).log("document is not valid");
            return false;
        }
    }

    private void mapCellOnNode(XSSFCell xSSFCell, Node node) {
        String stringCellValue;
        int i = C199531.$SwitchMap$org$apache$poi$ss$usermodel$CellType[xSSFCell.getCellType().ordinal()];
        if (i != 1) {
            stringCellValue = "";
            if (i == 2) {
                stringCellValue = "" + xSSFCell.getBooleanCellValue();
            } else if (i == 3) {
                stringCellValue = xSSFCell.getErrorCellString();
            } else if (i != 4) {
                if (i == 5) {
                    if (DateUtil.isCellDateFormatted(xSSFCell)) {
                        stringCellValue = getFormattedDate(xSSFCell);
                    } else {
                        stringCellValue = "" + xSSFCell.getRawValue();
                    }
                }
            } else if (xSSFCell.getCachedFormulaResultType() == CellType.STRING) {
                stringCellValue = xSSFCell.getStringCellValue();
            } else if (xSSFCell.getCachedFormulaResultType() == CellType.BOOLEAN) {
                stringCellValue = "" + xSSFCell.getBooleanCellValue();
            } else if (xSSFCell.getCachedFormulaResultType() == CellType.ERROR) {
                stringCellValue = xSSFCell.getErrorCellString();
            } else if (xSSFCell.getCachedFormulaResultType() == CellType.NUMERIC) {
                if (DateUtil.isCellDateFormatted(xSSFCell)) {
                    stringCellValue = getFormattedDate(xSSFCell);
                } else {
                    stringCellValue = "" + xSSFCell.getNumericCellValue();
                }
            }
        } else {
            stringCellValue = xSSFCell.getStringCellValue();
        }
        if (node instanceof Element) {
            ((Element) node).setTextContent(stringCellValue);
        } else {
            node.setNodeValue(stringCellValue);
        }
    }

    private String removeNamespace(String str) {
        return str.matches(".*:.*") ? str.split(":")[1] : str;
    }

    private Node selectNode(String str, NodeList nodeList) {
        for (int i = 0; i < nodeList.getLength(); i++) {
            Node item = nodeList.item(i);
            if (item.getNodeName().equals(str)) {
                return item;
            }
        }
        return null;
    }

    private static void trySet(String str, SecurityFeature securityFeature) {
        try {
            securityFeature.accept(str);
        } catch (AbstractMethodError e) {
            LOG.atWarn().withThrowable(e).log("Cannot set SchemaFactory feature ({}) because outdated XML parser in classpath", str);
        } catch (Exception e2) {
            LOG.atWarn().withThrowable(e2).log("SchemaFactory feature ({}) unsupported", str);
        }
    }

    public void exportToXML(OutputStream outputStream, boolean z) throws SAXException, TransformerException {
        exportToXML(outputStream, "UTF-8", z);
    }

    @Override // java.util.Comparator
    public int compare(String str, String str2) {
        Node schema = this.map.getSchema();
        String[] split = str.split("/");
        String[] split2 = str2.split("/");
        int min = Math.min(split.length, split2.length);
        String str3 = "";
        Node node = schema;
        for (int i = 1; i < min; i++) {
            String str4 = split[i];
            String str5 = split2[i];
            if (str4.equals(str5)) {
                str3 = str3 + "/" + str4;
                node = getComplexTypeForElement(str4, schema, node);
            } else {
                return indexOfElementInComplexType(str3, str4, str5, node);
            }
        }
        return 0;
    }

    public void exportToXML(OutputStream outputStream, String str, boolean z) throws SAXException, TransformerException {
        Element createElementNS;
        Iterator it2;
        XSSFXmlColumnPr xmlColumnPr;
        XSSFCell referencedCell;
        List<XSSFSingleXmlCell> relatedSingleXMLCell = this.map.getRelatedSingleXMLCell();
        List<XSSFTable> relatedTables = this.map.getRelatedTables();
        String rootElement = this.map.getCtMap().getRootElement();
        Document createDocument = DocumentHelper.createDocument();
        if (isNamespaceDeclared()) {
            createElementNS = createDocument.createElementNS(getNamespace(), rootElement);
        } else {
            createElementNS = createDocument.createElementNS("", rootElement);
        }
        createDocument.appendChild(createElementNS);
        Vector vector = new Vector();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        for (XSSFSingleXmlCell xSSFSingleXmlCell : relatedSingleXMLCell) {
            vector.add(xSSFSingleXmlCell.getXpath());
            hashMap.put(xSSFSingleXmlCell.getXpath(), xSSFSingleXmlCell);
        }
        for (XSSFTable xSSFTable : relatedTables) {
            String commonXpath = xSSFTable.getCommonXpath();
            vector.add(commonXpath);
            hashMap2.put(commonXpath, xSSFTable);
        }
        this.indexMap.clear();
        vector.sort(this);
        this.indexMap.clear();
        Iterator it3 = vector.iterator();
        while (true) {
            boolean z2 = true;
            if (!it3.hasNext()) {
                break;
            }
            String str2 = (String) it3.next();
            XSSFSingleXmlCell xSSFSingleXmlCell2 = (XSSFSingleXmlCell) hashMap.get(str2);
            XSSFTable xSSFTable2 = (XSSFTable) hashMap2.get(str2);
            if (!str2.matches(".*\\[.*")) {
                if (xSSFSingleXmlCell2 != null && (referencedCell = xSSFSingleXmlCell2.getReferencedCell()) != null) {
                    Node nodeByXPath = getNodeByXPath(str2, createDocument.getFirstChild(), createDocument, false);
                    mapCellOnNode(referencedCell, nodeByXPath);
                    if ("".equals(nodeByXPath.getTextContent()) && nodeByXPath.getParentNode() != null) {
                        nodeByXPath.getParentNode().removeChild(nodeByXPath);
                    }
                }
                if (xSSFTable2 != null) {
                    List<XSSFTableColumn> columns = xSSFTable2.getColumns();
                    XSSFSheet xSSFSheet = xSSFTable2.getXSSFSheet();
                    int row = xSSFTable2.getStartCellReference().getRow() + xSSFTable2.getHeaderRowCount();
                    int row2 = xSSFTable2.getEndCellReference().getRow();
                    while (row <= row2) {
                        XSSFRow row3 = xSSFSheet.getRow(row);
                        Node nodeByXPath2 = getNodeByXPath(xSSFTable2.getCommonXpath(), createDocument.getFirstChild(), createDocument, z2);
                        short col = xSSFTable2.getStartCellReference().getCol();
                        for (XSSFTableColumn xSSFTableColumn : columns) {
                            XSSFCell cell = row3.getCell(col + xSSFTableColumn.getColumnIndex());
                            if (cell == null || (xmlColumnPr = xSSFTableColumn.getXmlColumnPr()) == null) {
                                it2 = it3;
                            } else {
                                it2 = it3;
                                mapCellOnNode(cell, getNodeByXPath(xmlColumnPr.getLocalXPath(), nodeByXPath2, createDocument, false));
                            }
                            it3 = it2;
                        }
                        row++;
                        z2 = true;
                    }
                }
            }
            it3 = it3;
        }
        if (z ? isValid(createDocument) : true) {
            Transformer newTransformer = XMLHelper.newTransformer();
            newTransformer.setOutputProperty("omit-xml-declaration", "yes");
            newTransformer.setOutputProperty("indent", "yes");
            newTransformer.setOutputProperty("encoding", str);
            newTransformer.transform(new DOMSource(createDocument), new StreamResult(outputStream));
        }
    }
}
