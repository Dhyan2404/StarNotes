package org.apache.poi.hwpf.converter;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.twelvemonkeys.imageio.metadata.xmp.XMP;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;

/* loaded from: classes12.dex */
public class FoDocumentFacade {
    private static final String NS_RDF = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
    private static final String NS_XSLFO = "http://www.w3.org/1999/XSL/Format";
    protected final Element declarations;
    protected final Document document;
    protected final Element layoutMasterSet;
    protected Element propertiesRoot;
    protected final Element root;

    public FoDocumentFacade(Document document) {
        this.document = document;
        Element createElementNS = document.createElementNS(NS_XSLFO, "fo:root");
        this.root = createElementNS;
        document.appendChild(createElementNS);
        Element createElementNS2 = document.createElementNS(NS_XSLFO, "fo:layout-master-set");
        this.layoutMasterSet = createElementNS2;
        createElementNS.appendChild(createElementNS2);
        Element createElementNS3 = document.createElementNS(NS_XSLFO, "fo:declarations");
        this.declarations = createElementNS3;
        createElementNS.appendChild(createElementNS3);
    }

    public Element addFlowToPageSequence(Element element, String str) {
        Element createElementNS = this.document.createElementNS(NS_XSLFO, "fo:flow");
        createElementNS.setAttribute("flow-name", str);
        element.appendChild(createElementNS);
        return createElementNS;
    }

    public Element addListItem(Element element) {
        Element createListItem = createListItem();
        element.appendChild(createListItem);
        return createListItem;
    }

    public Element addListItemBody(Element element) {
        Element createListItemBody = createListItemBody();
        element.appendChild(createListItemBody);
        return createListItemBody;
    }

    public Element addListItemLabel(Element element, String str) {
        Element createListItemLabel = createListItemLabel(str);
        element.appendChild(createListItemLabel);
        return createListItemLabel;
    }

    public void addPageSequence(Element element) {
        this.root.appendChild(element);
    }

    public Element addRegionBody(Element element) {
        Element createElementNS = this.document.createElementNS(NS_XSLFO, "fo:region-body");
        element.appendChild(createElementNS);
        return createElementNS;
    }

    public Element addSimplePageMaster(String str) {
        Element createElementNS = this.document.createElementNS(NS_XSLFO, "fo:simple-page-master");
        createElementNS.setAttribute("master-name", str);
        this.layoutMasterSet.appendChild(createElementNS);
        return createElementNS;
    }

    public Element createBasicLinkExternal(String str) {
        Element createElementNS = this.document.createElementNS(NS_XSLFO, "fo:basic-link");
        createElementNS.setAttribute("external-destination", str);
        return createElementNS;
    }

    public Element createBasicLinkInternal(String str) {
        Element createElementNS = this.document.createElementNS(NS_XSLFO, "fo:basic-link");
        createElementNS.setAttribute("internal-destination", str);
        return createElementNS;
    }

    public Element createBlock() {
        return this.document.createElementNS(NS_XSLFO, "fo:block");
    }

    public Element createExternalGraphic(String str) {
        Element createElementNS = this.document.createElementNS(NS_XSLFO, "fo:external-graphic");
        createElementNS.setAttribute(Constant.SRC_TAG, "url('" + str + "')");
        return createElementNS;
    }

    public Element createFootnote() {
        return this.document.createElementNS(NS_XSLFO, "fo:footnote");
    }

    public Element createFootnoteBody() {
        return this.document.createElementNS(NS_XSLFO, "fo:footnote-body");
    }

    public Element createInline() {
        return this.document.createElementNS(NS_XSLFO, "fo:inline");
    }

    public Element createLeader() {
        return this.document.createElementNS(NS_XSLFO, "fo:leader");
    }

    public Element createListBlock() {
        return this.document.createElementNS(NS_XSLFO, "fo:list-block");
    }

    public Element createListItem() {
        return this.document.createElementNS(NS_XSLFO, "fo:list-item");
    }

    public Element createListItemBody() {
        return this.document.createElementNS(NS_XSLFO, "fo:list-item-body");
    }

    public Element createListItemLabel(String str) {
        Element createElementNS = this.document.createElementNS(NS_XSLFO, "fo:list-item-label");
        Element createBlock = createBlock();
        createBlock.appendChild(this.document.createTextNode(str));
        createElementNS.appendChild(createBlock);
        return createElementNS;
    }

    public Element createPageSequence(String str) {
        Element createElementNS = this.document.createElementNS(NS_XSLFO, "fo:page-sequence");
        createElementNS.setAttribute("master-reference", str);
        return createElementNS;
    }

    public Element createTable() {
        return this.document.createElementNS(NS_XSLFO, "fo:table");
    }

    public Element createTableBody() {
        return this.document.createElementNS(NS_XSLFO, "fo:table-body");
    }

    public Element createTableCell() {
        return this.document.createElementNS(NS_XSLFO, "fo:table-cell");
    }

    public Element createTableColumn() {
        return this.document.createElementNS(NS_XSLFO, "fo:table-column");
    }

    public Element createTableHeader() {
        return this.document.createElementNS(NS_XSLFO, "fo:table-header");
    }

    public Element createTableRow() {
        return this.document.createElementNS(NS_XSLFO, "fo:table-row");
    }

    public Text createText(String str) {
        return this.document.createTextNode(str);
    }

    public Document getDocument() {
        return this.document;
    }

    public Element getOrCreatePropertiesRoot() {
        Element element = this.propertiesRoot;
        if (element != null) {
            return element;
        }
        Element createElementNS = this.document.createElementNS(XMP.NS_X, "x:xmpmeta");
        this.declarations.appendChild(createElementNS);
        Element createElementNS2 = this.document.createElementNS("http://www.w3.org/1999/02/22-rdf-syntax-ns#", "rdf:RDF");
        createElementNS.appendChild(createElementNS2);
        Element createElementNS3 = this.document.createElementNS("http://www.w3.org/1999/02/22-rdf-syntax-ns#", "rdf:Description");
        this.propertiesRoot = createElementNS3;
        createElementNS3.setAttributeNS("http://www.w3.org/1999/02/22-rdf-syntax-ns#", "rdf:about", "");
        createElementNS2.appendChild(this.propertiesRoot);
        return this.propertiesRoot;
    }

    public void setCreator(String str) {
        setDublinCoreProperty("creator", str);
    }

    public void setCreatorTool(String str) {
        setXmpProperty("CreatorTool", str);
    }

    public void setDescription(String str) {
        Element dublinCoreProperty = setDublinCoreProperty("description", str);
        if (dublinCoreProperty != null) {
            dublinCoreProperty.setAttributeNS("http://www.w3.org/XML/1998/namespace", "xml:lang", "x-default");
        }
    }

    public Element setDublinCoreProperty(String str, String str2) {
        return setProperty("http://purl.org/dc/elements/1.1/", "dc", str, str2);
    }

    public void setKeywords(String str) {
        setPdfProperty("Keywords", str);
    }

    public Element setPdfProperty(String str, String str2) {
        return setProperty("http://ns.adobe.com/pdf/1.3/", "pdf", str, str2);
    }

    public void setProducer(String str) {
        setPdfProperty("Producer", str);
    }

    public Element setProperty(String str, String str2, String str3, String str4) {
        Element orCreatePropertiesRoot = getOrCreatePropertiesRoot();
        NodeList childNodes = orCreatePropertiesRoot.getChildNodes();
        int i = 0;
        while (true) {
            if (i >= childNodes.getLength()) {
                break;
            }
            Node item = childNodes.item(i);
            if (item.getNodeType() == 1) {
                Element element = (Element) item;
                if (AbstractWordUtils.isNotEmpty(element.getNamespaceURI()) && AbstractWordUtils.isNotEmpty(element.getLocalName()) && str.equals(element.getNamespaceURI()) && str3.equals(element.getLocalName())) {
                    orCreatePropertiesRoot.removeChild(element);
                    break;
                }
            }
            i++;
        }
        if (!AbstractWordUtils.isNotEmpty(str4)) {
            return null;
        }
        Element createElementNS = this.document.createElementNS(str, str2 + ":" + str3);
        createElementNS.appendChild(this.document.createTextNode(str4));
        orCreatePropertiesRoot.appendChild(createElementNS);
        return createElementNS;
    }

    public void setSubject(String str) {
        setDublinCoreProperty("title", str);
    }

    public void setTitle(String str) {
        setDublinCoreProperty("title", str);
    }

    public Element setXmpProperty(String str, String str2) {
        return setProperty("http://ns.adobe.com/xap/1.0/", "xmp", str, str2);
    }

    public Element addPageSequence(String str) {
        Element createPageSequence = createPageSequence(str);
        this.root.appendChild(createPageSequence);
        return createPageSequence;
    }
}
