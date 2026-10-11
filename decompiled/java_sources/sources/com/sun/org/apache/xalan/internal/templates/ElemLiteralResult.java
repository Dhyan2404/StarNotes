package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import com.sun.org.apache.xalan.internal.templates.StylesheetRoot;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import com.sun.org.apache.xml.internal.utils.StringVector;
import com.sun.org.apache.xpath.internal.XPathContext;
import java.util.Enumeration;
import java.util.Vector;
import javax.xml.transform.TransformerException;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.TypeInfo;
import org.w3c.dom.UserDataHandler;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ElemLiteralResult extends ElemUse {
    private static final String EMPTYSTRING = "";
    static final long serialVersionUID = -8703409074421657260L;
    private StringVector m_ExtensionElementURIs;
    private StringVector m_excludeResultPrefixes;
    private String m_localName;
    private String m_namespace;
    private String m_rawName;
    private String m_version;
    private boolean isLiteralResultAsStylesheet = false;
    private Vector m_avts = null;
    private Vector m_xslAttr = null;

    /* loaded from: classes10.dex */
    public class Attribute implements Attr {
        private AVT m_attribute;
        private Element m_owner;

        public Attribute(AVT avt, Element element) {
            this.m_attribute = avt;
            this.m_owner = element;
        }

        @Override // org.w3c.dom.Node
        public Node appendChild(Node node) throws DOMException {
            ElemLiteralResult.this.throwDOMException((short) 7, XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR);
            return null;
        }

        @Override // org.w3c.dom.Node
        public Node cloneNode(boolean z) {
            return new Attribute(this.m_attribute, this.m_owner);
        }

        @Override // org.w3c.dom.Node
        public short compareDocumentPosition(Node node) throws DOMException {
            return (short) 0;
        }

        @Override // org.w3c.dom.Node
        public NamedNodeMap getAttributes() {
            return null;
        }

        @Override // org.w3c.dom.Node
        public String getBaseURI() {
            return null;
        }

        @Override // org.w3c.dom.Node
        public NodeList getChildNodes() {
            return new NodeList() { // from class: com.sun.org.apache.xalan.internal.templates.ElemLiteralResult.Attribute.1
                @Override // org.w3c.dom.NodeList
                public int getLength() {
                    return 0;
                }

                @Override // org.w3c.dom.NodeList
                public Node item(int i) {
                    return null;
                }
            };
        }

        @Override // org.w3c.dom.Node
        public Object getFeature(String str, String str2) {
            if (isSupported(str, str2)) {
                return this;
            }
            return null;
        }

        @Override // org.w3c.dom.Node
        public Node getFirstChild() {
            return null;
        }

        @Override // org.w3c.dom.Node
        public Node getLastChild() {
            return null;
        }

        @Override // org.w3c.dom.Node
        public String getLocalName() {
            return this.m_attribute.getName();
        }

        @Override // org.w3c.dom.Attr
        public String getName() {
            return this.m_attribute.getName();
        }

        @Override // org.w3c.dom.Node
        public String getNamespaceURI() {
            String uri = this.m_attribute.getURI();
            if (uri.equals("")) {
                return null;
            }
            return uri;
        }

        @Override // org.w3c.dom.Node
        public Node getNextSibling() {
            return null;
        }

        @Override // org.w3c.dom.Node
        public String getNodeName() {
            String uri = this.m_attribute.getURI();
            String localName = getLocalName();
            if (uri.equals("")) {
                return localName;
            }
            return uri + ":" + localName;
        }

        @Override // org.w3c.dom.Node
        public short getNodeType() {
            return (short) 2;
        }

        @Override // org.w3c.dom.Node
        public String getNodeValue() throws DOMException {
            return this.m_attribute.getSimpleString();
        }

        @Override // org.w3c.dom.Node
        public Document getOwnerDocument() {
            return this.m_owner.getOwnerDocument();
        }

        @Override // org.w3c.dom.Attr
        public Element getOwnerElement() {
            return this.m_owner;
        }

        @Override // org.w3c.dom.Node
        public Node getParentNode() {
            return this.m_owner;
        }

        @Override // org.w3c.dom.Node
        public String getPrefix() {
            String uri = this.m_attribute.getURI();
            String rawName = this.m_attribute.getRawName();
            if (uri.equals("")) {
                return null;
            }
            return rawName.substring(0, rawName.indexOf(":"));
        }

        @Override // org.w3c.dom.Node
        public Node getPreviousSibling() {
            return null;
        }

        @Override // org.w3c.dom.Attr
        public TypeInfo getSchemaTypeInfo() {
            return null;
        }

        @Override // org.w3c.dom.Attr
        public boolean getSpecified() {
            return true;
        }

        @Override // org.w3c.dom.Node
        public String getTextContent() throws DOMException {
            return getNodeValue();
        }

        @Override // org.w3c.dom.Node
        public Object getUserData(String str) {
            return getOwnerDocument().getUserData(str);
        }

        @Override // org.w3c.dom.Attr
        public String getValue() {
            return this.m_attribute.getSimpleString();
        }

        @Override // org.w3c.dom.Node
        public boolean hasAttributes() {
            return false;
        }

        @Override // org.w3c.dom.Node
        public boolean hasChildNodes() {
            return false;
        }

        @Override // org.w3c.dom.Node
        public Node insertBefore(Node node, Node node2) throws DOMException {
            ElemLiteralResult.this.throwDOMException((short) 7, XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR);
            return null;
        }

        @Override // org.w3c.dom.Node
        public boolean isDefaultNamespace(String str) {
            return false;
        }

        @Override // org.w3c.dom.Node
        public boolean isEqualNode(Node node) {
            return node == this;
        }

        @Override // org.w3c.dom.Attr
        public boolean isId() {
            return false;
        }

        @Override // org.w3c.dom.Node
        public boolean isSameNode(Node node) {
            return this == node;
        }

        @Override // org.w3c.dom.Node
        public boolean isSupported(String str, String str2) {
            return false;
        }

        @Override // org.w3c.dom.Node
        public String lookupNamespaceURI(String str) {
            return null;
        }

        @Override // org.w3c.dom.Node
        public String lookupPrefix(String str) {
            return null;
        }

        @Override // org.w3c.dom.Node
        public void normalize() {
        }

        @Override // org.w3c.dom.Node
        public Node removeChild(Node node) throws DOMException {
            ElemLiteralResult.this.throwDOMException((short) 7, XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR);
            return null;
        }

        @Override // org.w3c.dom.Node
        public Node replaceChild(Node node, Node node2) throws DOMException {
            ElemLiteralResult.this.throwDOMException((short) 7, XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR);
            return null;
        }

        @Override // org.w3c.dom.Node
        public void setNodeValue(String str) throws DOMException {
            ElemLiteralResult.this.throwDOMException((short) 7, XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR);
        }

        @Override // org.w3c.dom.Node
        public void setPrefix(String str) throws DOMException {
            ElemLiteralResult.this.throwDOMException((short) 7, XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR);
        }

        @Override // org.w3c.dom.Node
        public void setTextContent(String str) throws DOMException {
            setNodeValue(str);
        }

        @Override // org.w3c.dom.Node
        public Object setUserData(String str, Object obj, UserDataHandler userDataHandler) {
            return getOwnerDocument().setUserData(str, obj, userDataHandler);
        }

        @Override // org.w3c.dom.Attr
        public void setValue(String str) throws DOMException {
            ElemLiteralResult.this.throwDOMException((short) 7, XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR);
        }
    }

    /* loaded from: classes10.dex */
    public class LiteralElementAttributes implements NamedNodeMap {
        private int m_count = -1;

        public LiteralElementAttributes() {
        }

        @Override // org.w3c.dom.NamedNodeMap
        public int getLength() {
            if (this.m_count == -1) {
                if (ElemLiteralResult.this.m_avts != null) {
                    this.m_count = ElemLiteralResult.this.m_avts.size();
                } else {
                    this.m_count = 0;
                }
            }
            return this.m_count;
        }

        @Override // org.w3c.dom.NamedNodeMap
        public Node getNamedItem(String str) {
            String str2;
            if (getLength() == 0) {
                return null;
            }
            int indexOf = str.indexOf(":");
            if (-1 != indexOf) {
                str2 = str.substring(0, indexOf);
                str = str.substring(indexOf + 1);
            } else {
                str2 = null;
            }
            Enumeration elements = ElemLiteralResult.this.m_avts.elements();
            while (elements.hasMoreElements()) {
                AVT avt = (AVT) elements.nextElement();
                if (str.equals(avt.getName())) {
                    String uri = avt.getURI();
                    if ((str2 == null && uri == null) || (str2 != null && str2.equals(uri))) {
                        ElemLiteralResult elemLiteralResult = ElemLiteralResult.this;
                        return new Attribute(avt, elemLiteralResult);
                    }
                }
            }
            return null;
        }

        @Override // org.w3c.dom.NamedNodeMap
        public Node getNamedItemNS(String str, String str2) {
            if (getLength() == 0) {
                return null;
            }
            Enumeration elements = ElemLiteralResult.this.m_avts.elements();
            while (elements.hasMoreElements()) {
                AVT avt = (AVT) elements.nextElement();
                if (str2.equals(avt.getName())) {
                    String uri = avt.getURI();
                    if ((str == null && uri == null) || (str != null && str.equals(uri))) {
                        ElemLiteralResult elemLiteralResult = ElemLiteralResult.this;
                        return new Attribute(avt, elemLiteralResult);
                    }
                }
            }
            return null;
        }

        @Override // org.w3c.dom.NamedNodeMap
        public Node item(int i) {
            if (getLength() == 0 || i >= ElemLiteralResult.this.m_avts.size()) {
                return null;
            }
            ElemLiteralResult elemLiteralResult = ElemLiteralResult.this;
            return new Attribute((AVT) elemLiteralResult.m_avts.elementAt(i), ElemLiteralResult.this);
        }

        @Override // org.w3c.dom.NamedNodeMap
        public Node removeNamedItem(String str) throws DOMException {
            ElemLiteralResult.this.throwDOMException((short) 7, XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR);
            return null;
        }

        @Override // org.w3c.dom.NamedNodeMap
        public Node removeNamedItemNS(String str, String str2) throws DOMException {
            ElemLiteralResult.this.throwDOMException((short) 7, XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR);
            return null;
        }

        @Override // org.w3c.dom.NamedNodeMap
        public Node setNamedItem(Node node) throws DOMException {
            ElemLiteralResult.this.throwDOMException((short) 7, XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR);
            return null;
        }

        @Override // org.w3c.dom.NamedNodeMap
        public Node setNamedItemNS(Node node) throws DOMException {
            ElemLiteralResult.this.throwDOMException((short) 7, XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR);
            return null;
        }
    }

    private boolean excludeResultNSDecl(String str, String str2) throws TransformerException {
        if (this.m_excludeResultPrefixes != null) {
            return containsExcludeResultPrefix(str, str2);
        }
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public boolean accept(XSLTVisitor xSLTVisitor) {
        return xSLTVisitor.visitLiteralResultElement(this);
    }

    public void addLiteralResultAttribute(AVT avt) {
        if (this.m_avts == null) {
            this.m_avts = new Vector();
        }
        this.m_avts.addElement(avt);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void callChildVisitors(XSLTVisitor xSLTVisitor, boolean z) {
        Vector vector;
        if (z && (vector = this.m_avts) != null) {
            for (int size = vector.size() - 1; size >= 0; size--) {
                ((AVT) this.m_avts.elementAt(size)).callVisitors(xSLTVisitor);
            }
        }
        super.callChildVisitors(xSLTVisitor, z);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        super.compose(stylesheetRoot);
        StylesheetRoot.ComposeState composeState = stylesheetRoot.getComposeState();
        Vector variableNames = composeState.getVariableNames();
        Vector vector = this.m_avts;
        if (vector != null) {
            for (int size = vector.size() - 1; size >= 0; size--) {
                ((AVT) this.m_avts.elementAt(size)).fixupVariables(variableNames, composeState.getGlobalsSize());
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public boolean containsExcludeResultPrefix(String str, String str2) {
        if (str2 == null || (this.m_excludeResultPrefixes == null && this.m_ExtensionElementURIs == null)) {
            return super.containsExcludeResultPrefix(str, str2);
        }
        if (str.length() == 0) {
            str = "#default";
        }
        if (this.m_excludeResultPrefixes != null) {
            for (int i = 0; i < this.m_excludeResultPrefixes.size(); i++) {
                if (str2.equals(getNamespaceForPrefix(this.m_excludeResultPrefixes.elementAt(i)))) {
                    return true;
                }
            }
        }
        StringVector stringVector = this.m_ExtensionElementURIs;
        if (stringVector == null || !stringVector.contains(str2)) {
            return super.containsExcludeResultPrefix(str, str2);
        }
        return true;
    }

    public boolean containsExtensionElementURI(String str) {
        StringVector stringVector = this.m_ExtensionElementURIs;
        if (stringVector == null) {
            return false;
        }
        return stringVector.contains(str);
    }

    public Enumeration enumerateLiteralResultAttributes() {
        Vector vector = this.m_avts;
        if (vector == null) {
            return null;
        }
        return vector.elements();
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemUse, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        TransformerException e;
        SerializationHandler serializationHandler = transformerImpl.getSerializationHandler();
        try {
            if (transformerImpl.getDebug()) {
                serializationHandler.flushPending();
                transformerImpl.getTraceManager().fireTraceEvent(this);
            }
            serializationHandler.startPrefixMapping(getPrefix(), getNamespace());
            executeNSDecls(transformerImpl);
            serializationHandler.startElement(getNamespace(), getLocalName(), getRawName());
            try {
                super.execute(transformerImpl);
                Vector vector = this.m_avts;
                if (vector != null) {
                    for (int size = vector.size() - 1; size >= 0; size--) {
                        AVT avt = (AVT) this.m_avts.elementAt(size);
                        XPathContext xPathContext = transformerImpl.getXPathContext();
                        String evaluate = avt.evaluate(xPathContext, xPathContext.getCurrentNode(), this);
                        if (evaluate != null) {
                            serializationHandler.addAttribute(avt.getURI(), avt.getName(), avt.getRawName(), "CDATA", evaluate, false);
                        }
                    }
                }
                transformerImpl.executeChildTemplates((ElemTemplateElement) this, true);
                e = null;
            } catch (TransformerException e2) {
                e = e2;
            } catch (SAXException e3) {
                e = new TransformerException(e3);
            }
            try {
                if (transformerImpl.getDebug()) {
                    transformerImpl.getTraceManager().fireTraceEndEvent(this);
                }
                serializationHandler.endElement(getNamespace(), getLocalName(), getRawName());
                if (e != null) {
                    throw e;
                }
                unexecuteNSDecls(transformerImpl);
                try {
                    serializationHandler.endPrefixMapping(getPrefix());
                } catch (SAXException e4) {
                    throw new TransformerException(e4);
                }
            } catch (SAXException e5) {
                if (e == null) {
                    throw new TransformerException(e5);
                }
                throw e;
            }
        } catch (SAXException e6) {
            throw new TransformerException(e6);
        }
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Element
    public String getAttribute(String str) {
        AVT literalResultAttribute = getLiteralResultAttribute(str);
        return literalResultAttribute != null ? literalResultAttribute.getSimpleString() : "";
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Element
    public String getAttributeNS(String str, String str2) {
        AVT literalResultAttributeNS = getLiteralResultAttributeNS(str, str2);
        return literalResultAttributeNS != null ? literalResultAttributeNS.getSimpleString() : "";
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public NamedNodeMap getAttributes() {
        return new LiteralElementAttributes();
    }

    public String getExtensionElementPrefix(int i) throws ArrayIndexOutOfBoundsException {
        StringVector stringVector = this.m_ExtensionElementURIs;
        if (stringVector != null) {
            return stringVector.elementAt(i);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getExtensionElementPrefixCount() {
        StringVector stringVector = this.m_ExtensionElementURIs;
        if (stringVector != null) {
            return stringVector.size();
        }
        return 0;
    }

    public boolean getIsLiteralResultAsStylesheet() {
        return this.isLiteralResultAsStylesheet;
    }

    public AVT getLiteralResultAttribute(String str) {
        Vector vector = this.m_avts;
        if (vector == null) {
            return null;
        }
        for (int size = vector.size() - 1; size >= 0; size--) {
            AVT avt = (AVT) this.m_avts.elementAt(size);
            String uri = avt.getURI();
            if (uri != null && !uri.equals("")) {
                if ((uri + ":" + avt.getName()).equals(str)) {
                    return avt;
                }
            }
            if ((uri == null || uri.equals("")) && avt.getRawName().equals(str)) {
                return avt;
            }
        }
        return null;
    }

    public AVT getLiteralResultAttributeNS(String str, String str2) {
        Vector vector = this.m_avts;
        if (vector == null) {
            return null;
        }
        for (int size = vector.size() - 1; size >= 0; size--) {
            AVT avt = (AVT) this.m_avts.elementAt(size);
            if (avt.getName().equals(str2) && avt.getURI().equals(str)) {
                return avt;
            }
        }
        return null;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getLocalName() {
        return this.m_localName;
    }

    public String getNamespace() {
        return this.m_namespace;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return this.m_rawName;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getPrefix() {
        int length = (this.m_rawName.length() - this.m_localName.length()) - 1;
        return length > 0 ? this.m_rawName.substring(0, length) : "";
    }

    public String getRawName() {
        return this.m_rawName;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode
    public String getVersion() {
        return this.m_version;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 77;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public boolean needToCheckExclude() {
        if (this.m_excludeResultPrefixes == null && this.m_prefixTable == null && this.m_ExtensionElementURIs == null) {
            return false;
        }
        if (this.m_prefixTable != null) {
            return true;
        }
        this.m_prefixTable = new Vector();
        return true;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void resolvePrefixTables() throws TransformerException {
        NamespaceAlias namespaceAliasComposed;
        NamespaceAlias namespaceAliasComposed2;
        super.resolvePrefixTables();
        StylesheetRoot stylesheetRoot = getStylesheetRoot();
        String str = this.m_namespace;
        if (str != null && str.length() > 0 && (namespaceAliasComposed2 = stylesheetRoot.getNamespaceAliasComposed(this.m_namespace)) != null) {
            this.m_namespace = namespaceAliasComposed2.getResultNamespace();
            String stylesheetPrefix = namespaceAliasComposed2.getStylesheetPrefix();
            if (stylesheetPrefix == null || stylesheetPrefix.length() <= 0) {
                this.m_rawName = this.m_localName;
            } else {
                this.m_rawName = stylesheetPrefix + ":" + this.m_localName;
            }
        }
        Vector vector = this.m_avts;
        if (vector != null) {
            int size = vector.size();
            for (int i = 0; i < size; i++) {
                AVT avt = (AVT) this.m_avts.elementAt(i);
                String uri = avt.getURI();
                if (uri != null && uri.length() > 0 && (namespaceAliasComposed = stylesheetRoot.getNamespaceAliasComposed(this.m_namespace)) != null) {
                    String resultNamespace = namespaceAliasComposed.getResultNamespace();
                    String stylesheetPrefix2 = namespaceAliasComposed.getStylesheetPrefix();
                    String name = avt.getName();
                    if (stylesheetPrefix2 != null && stylesheetPrefix2.length() > 0) {
                        name = stylesheetPrefix2 + ":" + name;
                    }
                    avt.setURI(resultNamespace);
                    avt.setRawName(name);
                }
            }
        }
    }

    public void setExcludeResultPrefixes(StringVector stringVector) {
        this.m_excludeResultPrefixes = stringVector;
    }

    public void setExtensionElementPrefixes(StringVector stringVector) {
        this.m_ExtensionElementURIs = stringVector;
    }

    public void setIsLiteralResultAsStylesheet(boolean z) {
        this.isLiteralResultAsStylesheet = z;
    }

    public void setLocalName(String str) {
        this.m_localName = str;
    }

    public void setNamespace(String str) {
        if (str == null) {
            str = "";
        }
        this.m_namespace = str;
    }

    public void setRawName(String str) {
        this.m_rawName = str;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode
    public void setVersion(String str) {
        this.m_version = str;
    }

    public void setXmlSpace(AVT avt) {
        addLiteralResultAttribute(avt);
        String simpleString = avt.getSimpleString();
        if (simpleString.equals("default")) {
            super.setXmlSpace(2);
        } else if (simpleString.equals("preserve")) {
            super.setXmlSpace(1);
        }
    }

    public void throwDOMException(short s, String str) {
        throw new DOMException(s, XSLMessages.createMessage(str, null));
    }

    public void addLiteralResultAttribute(String str) {
        if (this.m_xslAttr == null) {
            this.m_xslAttr = new Vector();
        }
        this.m_xslAttr.addElement(str);
    }
}
