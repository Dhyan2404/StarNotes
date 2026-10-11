package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xml.internal.utils.UnImplNode;
import com.sun.org.apache.xpath.internal.ExpressionNode;
import com.sun.org.apache.xpath.internal.WhitespaceStrippingElementMatcher;
import com.sun.org.apache.xpath.internal.XPathContext;
import java.io.Serializable;
import java.util.Enumeration;
import java.util.Vector;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.TransformerException;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.NamespaceSupport;

/* loaded from: classes10.dex */
public class ElemTemplateElement extends UnImplNode implements PrefixResolver, Serializable, ExpressionNode, WhitespaceStrippingElementMatcher, XSLTVisitable {
    static final long serialVersionUID = 4440018597841834447L;
    private transient Node m_DOMBackPointer;
    private int m_columnNumber;
    private Vector m_declaredPrefixes;
    private int m_endColumnNumber;
    private int m_endLineNumber;
    ElemTemplateElement m_firstChild;
    private int m_lineNumber;
    ElemTemplateElement m_nextSibling;
    protected ElemTemplateElement m_parentNode;
    Vector m_prefixTable;
    private boolean m_defaultSpace = true;
    private boolean m_hasTextLitOnly = false;
    protected boolean m_hasVariableDecl = false;
    protected int m_docOrderNumber = -1;

    private boolean excludeResultNSDecl(String str, String str2) throws TransformerException {
        if (str2 != null) {
            return str2.equals("http://www.w3.org/1999/XSL/Transform") || getStylesheet().containsExtensionElementURI(str2) || containsExcludeResultPrefix(str, str2);
        }
        return false;
    }

    public boolean accept(XSLTVisitor xSLTVisitor) {
        return xSLTVisitor.visitInstruction(this);
    }

    public void addOrReplaceDecls(XMLNSDecl xMLNSDecl) {
        for (int size = this.m_prefixTable.size() - 1; size >= 0; size--) {
            if (((XMLNSDecl) this.m_prefixTable.elementAt(size)).getPrefix().equals(xMLNSDecl.getPrefix())) {
                return;
            }
        }
        this.m_prefixTable.addElement(xMLNSDecl);
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public Node appendChild(Node node) throws DOMException {
        if (node == null) {
            error("ER_NULL_CHILD", null);
        }
        ElemTemplateElement elemTemplateElement = (ElemTemplateElement) node;
        if (this.m_firstChild == null) {
            this.m_firstChild = elemTemplateElement;
        } else {
            ((ElemTemplateElement) getLastChild()).m_nextSibling = elemTemplateElement;
        }
        elemTemplateElement.m_parentNode = this;
        return node;
    }

    public void callChildVisitors(XSLTVisitor xSLTVisitor, boolean z) {
        for (ElemTemplateElement elemTemplateElement = this.m_firstChild; elemTemplateElement != null; elemTemplateElement = elemTemplateElement.m_nextSibling) {
            elemTemplateElement.callVisitors(xSLTVisitor);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.XSLTVisitable
    public void callVisitors(XSLTVisitor xSLTVisitor) {
        if (accept(xSLTVisitor)) {
            callChildVisitors(xSLTVisitor);
        }
    }

    public boolean canAcceptVariables() {
        return true;
    }

    @Override // com.sun.org.apache.xpath.internal.WhitespaceStrippingElementMatcher
    public boolean canStripWhiteSpace() {
        StylesheetRoot stylesheetRoot = getStylesheetRoot();
        if (stylesheetRoot != null) {
            return stylesheetRoot.canStripWhiteSpace();
        }
        return false;
    }

    public int compareTo(Object obj) throws ClassCastException {
        ElemTemplateElement elemTemplateElement = (ElemTemplateElement) obj;
        int importCountComposed = elemTemplateElement.getStylesheetComposed().getImportCountComposed();
        int importCountComposed2 = getStylesheetComposed().getImportCountComposed();
        if (importCountComposed2 < importCountComposed) {
            return -1;
        }
        if (importCountComposed2 > importCountComposed) {
            return 1;
        }
        return getUid() - elemTemplateElement.getUid();
    }

    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        resolvePrefixTables();
        ElemTemplateElement firstChildElem = getFirstChildElem();
        this.m_hasTextLitOnly = firstChildElem != null && firstChildElem.getXSLToken() == 78 && firstChildElem.getNextSiblingElem() == null;
        stylesheetRoot.getComposeState().pushStackMark();
    }

    public boolean containsExcludeResultPrefix(String str, String str2) {
        ElemTemplateElement parentElem = getParentElem();
        if (parentElem != null) {
            return parentElem.containsExcludeResultPrefix(str, str2);
        }
        return false;
    }

    public void endCompose(StylesheetRoot stylesheetRoot) throws TransformerException {
        stylesheetRoot.getComposeState().popStackMark();
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode
    public void error(String str, Object[] objArr) {
        throw new RuntimeException(XSLMessages.createMessage("ER_ELEMTEMPLATEELEM_ERR", new Object[]{XSLMessages.createMessage(str, objArr)}));
    }

    public void execute(TransformerImpl transformerImpl) throws TransformerException {
    }

    public void executeNSDecls(TransformerImpl transformerImpl) throws TransformerException {
        executeNSDecls(transformerImpl, null);
    }

    @Override // com.sun.org.apache.xpath.internal.ExpressionNode
    public void exprAddChild(ExpressionNode expressionNode, int i) {
        appendChild((ElemTemplateElement) expressionNode);
    }

    @Override // com.sun.org.apache.xpath.internal.ExpressionNode
    public ExpressionNode exprGetChild(int i) {
        return (ExpressionNode) item(i);
    }

    @Override // com.sun.org.apache.xpath.internal.ExpressionNode
    public int exprGetNumChildren() {
        return getLength();
    }

    @Override // com.sun.org.apache.xpath.internal.ExpressionNode
    public ExpressionNode exprGetParent() {
        return getParentElem();
    }

    @Override // com.sun.org.apache.xpath.internal.ExpressionNode
    public void exprSetParent(ExpressionNode expressionNode) {
        setParentElem((ElemTemplateElement) expressionNode);
    }

    @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
    public String getBaseIdentifier() {
        return getSystemId();
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public NodeList getChildNodes() {
        return this;
    }

    @Override // javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        return this.m_columnNumber;
    }

    public Node getDOMBackPointer() {
        return this.m_DOMBackPointer;
    }

    public Vector getDeclaredPrefixes() {
        return this.m_declaredPrefixes;
    }

    public int getEndColumnNumber() {
        return this.m_endColumnNumber;
    }

    public int getEndLineNumber() {
        return this.m_endLineNumber;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public Node getFirstChild() {
        return this.m_firstChild;
    }

    public ElemTemplateElement getFirstChildElem() {
        return this.m_firstChild;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public Node getLastChild() {
        ElemTemplateElement elemTemplateElement = null;
        for (ElemTemplateElement elemTemplateElement2 = this.m_firstChild; elemTemplateElement2 != null; elemTemplateElement2 = elemTemplateElement2.m_nextSibling) {
            elemTemplateElement = elemTemplateElement2;
        }
        return elemTemplateElement;
    }

    public ElemTemplateElement getLastChildElem() {
        ElemTemplateElement elemTemplateElement = null;
        for (ElemTemplateElement elemTemplateElement2 = this.m_firstChild; elemTemplateElement2 != null; elemTemplateElement2 = elemTemplateElement2.m_nextSibling) {
            elemTemplateElement = elemTemplateElement2;
        }
        return elemTemplateElement;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.NodeList
    public int getLength() {
        int i = 0;
        for (ElemTemplateElement elemTemplateElement = this.m_firstChild; elemTemplateElement != null; elemTemplateElement = elemTemplateElement.m_nextSibling) {
            i++;
        }
        return i;
    }

    @Override // javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return this.m_lineNumber;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getLocalName() {
        return getNodeName();
    }

    @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
    public String getNamespaceForPrefix(String str, Node node) {
        error("ER_CANT_RESOLVE_NSPREFIX", null);
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public Node getNextSibling() {
        return this.m_nextSibling;
    }

    public ElemTemplateElement getNextSiblingElem() {
        return this.m_nextSibling;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return "Unknown XSLT Element";
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public short getNodeType() {
        return (short) 1;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public Document getOwnerDocument() {
        return getStylesheet();
    }

    public ElemTemplate getOwnerXSLTemplate() {
        int xSLToken = getXSLToken();
        while (this != null && xSLToken != 19) {
            this = this.getParentElem();
            if (this != null) {
                xSLToken = this.getXSLToken();
            }
        }
        return (ElemTemplate) this;
    }

    public ElemTemplateElement getParentElem() {
        return this.m_parentNode;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public Node getParentNode() {
        return this.m_parentNode;
    }

    public ElemTemplateElement getParentNodeElem() {
        return this.m_parentNode;
    }

    public Vector getPrefixes() {
        return this.m_prefixTable;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public Node getPreviousSibling() {
        Node parentNode = getParentNode();
        if (parentNode != null) {
            Node node = null;
            for (Node firstChild = parentNode.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
                if (firstChild == this) {
                    return node;
                }
                node = firstChild;
            }
        }
        return null;
    }

    public ElemTemplateElement getPreviousSiblingElem() {
        ElemTemplateElement parentNodeElem = getParentNodeElem();
        if (parentNodeElem != null) {
            ElemTemplateElement elemTemplateElement = null;
            for (ElemTemplateElement firstChildElem = parentNodeElem.getFirstChildElem(); firstChildElem != null; firstChildElem = firstChildElem.getNextSiblingElem()) {
                if (firstChildElem == this) {
                    return elemTemplateElement;
                }
                elemTemplateElement = firstChildElem;
            }
        }
        return null;
    }

    public String getPublicId() {
        ElemTemplateElement elemTemplateElement = this.m_parentNode;
        if (elemTemplateElement != null) {
            return elemTemplateElement.getPublicId();
        }
        return null;
    }

    public Stylesheet getStylesheet() {
        ElemTemplateElement elemTemplateElement = this.m_parentNode;
        if (elemTemplateElement == null) {
            return null;
        }
        return elemTemplateElement.getStylesheet();
    }

    public StylesheetComposed getStylesheetComposed() {
        return this.m_parentNode.getStylesheetComposed();
    }

    public StylesheetRoot getStylesheetRoot() {
        return this.m_parentNode.getStylesheetRoot();
    }

    public String getSystemId() {
        Stylesheet stylesheet = getStylesheet();
        if (stylesheet == null) {
            return null;
        }
        return stylesheet.getHref();
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Element
    public String getTagName() {
        return getNodeName();
    }

    public int getUid() {
        return this.m_docOrderNumber;
    }

    public int getXSLToken() {
        return -1;
    }

    public boolean getXmlSpace() {
        return this.m_defaultSpace;
    }

    @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
    public boolean handlesNullPrefixes() {
        return false;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public boolean hasChildNodes() {
        return this.m_firstChild != null;
    }

    public boolean hasTextLitOnly() {
        return this.m_hasTextLitOnly;
    }

    public boolean hasVariableDecl() {
        return this.m_hasVariableDecl;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public Node insertBefore(Node node, Node node2) throws DOMException {
        if (node2 == null) {
            appendChild(node);
            return node;
        }
        if (node == node2) {
            return node;
        }
        Node node3 = this.m_firstChild;
        Node node4 = null;
        boolean z = false;
        while (node3 != null) {
            if (node == node3) {
                if (node4 != null) {
                    ((ElemTemplateElement) node4).m_nextSibling = (ElemTemplateElement) node3.getNextSibling();
                } else {
                    this.m_firstChild = (ElemTemplateElement) node3.getNextSibling();
                }
                node3 = node3.getNextSibling();
            } else if (node2 == node3) {
                if (node4 != null) {
                    ((ElemTemplateElement) node4).m_nextSibling = (ElemTemplateElement) node;
                } else {
                    this.m_firstChild = (ElemTemplateElement) node;
                }
                ElemTemplateElement elemTemplateElement = (ElemTemplateElement) node;
                elemTemplateElement.m_nextSibling = (ElemTemplateElement) node2;
                elemTemplateElement.setParentElem(this);
                node3 = node3.getNextSibling();
                z = true;
                node4 = node;
            } else {
                node4 = node3;
                node3 = node3.getNextSibling();
            }
        }
        if (z) {
            return node;
        }
        throw new DOMException((short) 8, "refChild was not found in insertBefore method!");
    }

    public boolean isCompiledTemplate() {
        return false;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.NodeList
    public Node item(int i) {
        ElemTemplateElement elemTemplateElement = this.m_firstChild;
        for (int i2 = 0; i2 < i && elemTemplateElement != null; i2++) {
            elemTemplateElement = elemTemplateElement.m_nextSibling;
        }
        return elemTemplateElement;
    }

    public boolean needToCheckExclude() {
        return false;
    }

    public void recompose(StylesheetRoot stylesheetRoot) throws TransformerException {
    }

    public ElemTemplateElement removeChild(ElemTemplateElement elemTemplateElement) {
        if (elemTemplateElement == null || elemTemplateElement.m_parentNode != this) {
            return null;
        }
        if (elemTemplateElement == this.m_firstChild) {
            this.m_firstChild = elemTemplateElement.m_nextSibling;
        } else {
            elemTemplateElement.getPreviousSiblingElem().m_nextSibling = elemTemplateElement.m_nextSibling;
        }
        elemTemplateElement.m_parentNode = null;
        elemTemplateElement.m_nextSibling = null;
        return elemTemplateElement;
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public Node replaceChild(Node node, Node node2) throws DOMException {
        if (node2 == null || node2.getParentNode() != this) {
            return null;
        }
        ElemTemplateElement elemTemplateElement = (ElemTemplateElement) node;
        ElemTemplateElement elemTemplateElement2 = (ElemTemplateElement) node2;
        ElemTemplateElement elemTemplateElement3 = (ElemTemplateElement) elemTemplateElement2.getPreviousSibling();
        if (elemTemplateElement3 != null) {
            elemTemplateElement3.m_nextSibling = elemTemplateElement;
        }
        if (this.m_firstChild == elemTemplateElement2) {
            this.m_firstChild = elemTemplateElement;
        }
        elemTemplateElement.m_parentNode = this;
        elemTemplateElement2.m_parentNode = null;
        elemTemplateElement.m_nextSibling = elemTemplateElement2.m_nextSibling;
        elemTemplateElement2.m_nextSibling = null;
        return elemTemplateElement;
    }

    public void resolvePrefixTables() throws TransformerException {
        this.m_prefixTable = null;
        if (this.m_declaredPrefixes != null) {
            StylesheetRoot stylesheetRoot = getStylesheetRoot();
            int size = this.m_declaredPrefixes.size();
            for (int i = 0; i < size; i++) {
                XMLNSDecl xMLNSDecl = (XMLNSDecl) this.m_declaredPrefixes.elementAt(i);
                String prefix = xMLNSDecl.getPrefix();
                String uri = xMLNSDecl.getURI();
                if (uri == null) {
                    uri = "";
                }
                boolean excludeResultNSDecl = excludeResultNSDecl(prefix, uri);
                if (this.m_prefixTable == null) {
                    this.m_prefixTable = new Vector();
                }
                NamespaceAlias namespaceAliasComposed = stylesheetRoot.getNamespaceAliasComposed(uri);
                this.m_prefixTable.addElement(namespaceAliasComposed != null ? new XMLNSDecl(namespaceAliasComposed.getStylesheetPrefix(), namespaceAliasComposed.getResultNamespace(), excludeResultNSDecl) : new XMLNSDecl(prefix, uri, excludeResultNSDecl));
            }
        }
        ElemTemplateElement parentNodeElem = getParentNodeElem();
        if (parentNodeElem == null) {
            if (this.m_prefixTable == null) {
                this.m_prefixTable = new Vector();
                return;
            }
            return;
        }
        Vector vector = parentNodeElem.m_prefixTable;
        if (this.m_prefixTable == null && !needToCheckExclude()) {
            this.m_prefixTable = parentNodeElem.m_prefixTable;
            return;
        }
        int size2 = vector.size();
        for (int i2 = 0; i2 < size2; i2++) {
            XMLNSDecl xMLNSDecl2 = (XMLNSDecl) vector.elementAt(i2);
            boolean excludeResultNSDecl2 = excludeResultNSDecl(xMLNSDecl2.getPrefix(), xMLNSDecl2.getURI());
            if (excludeResultNSDecl2 != xMLNSDecl2.getIsExcluded()) {
                xMLNSDecl2 = new XMLNSDecl(xMLNSDecl2.getPrefix(), xMLNSDecl2.getURI(), excludeResultNSDecl2);
            }
            addOrReplaceDecls(xMLNSDecl2);
        }
    }

    public void runtimeInit(TransformerImpl transformerImpl) throws TransformerException {
    }

    public void setDOMBackPointer(Node node) {
        this.m_DOMBackPointer = node;
    }

    public void setEndLocaterInfo(SourceLocator sourceLocator) {
        this.m_endLineNumber = sourceLocator.getLineNumber();
        this.m_endColumnNumber = sourceLocator.getColumnNumber();
    }

    public void setLocaterInfo(SourceLocator sourceLocator) {
        this.m_lineNumber = sourceLocator.getLineNumber();
        this.m_columnNumber = sourceLocator.getColumnNumber();
    }

    public void setParentElem(ElemTemplateElement elemTemplateElement) {
        this.m_parentNode = elemTemplateElement;
    }

    public void setPrefixes(NamespaceSupport namespaceSupport) throws TransformerException {
        setPrefixes(namespaceSupport, false);
    }

    public void setUid(int i) {
        this.m_docOrderNumber = i;
    }

    public void setXmlSpace(int i) {
        this.m_defaultSpace = 2 == i;
    }

    @Override // com.sun.org.apache.xpath.internal.WhitespaceStrippingElementMatcher
    public boolean shouldStripWhiteSpace(XPathContext xPathContext, Element element) throws TransformerException {
        StylesheetRoot stylesheetRoot = getStylesheetRoot();
        if (stylesheetRoot != null) {
            return stylesheetRoot.shouldStripWhiteSpace(xPathContext, element);
        }
        return false;
    }

    public void unexecuteNSDecls(TransformerImpl transformerImpl) throws TransformerException {
        unexecuteNSDecls(transformerImpl, null);
    }

    public void executeNSDecls(TransformerImpl transformerImpl, String str) throws TransformerException {
        try {
            if (this.m_prefixTable != null) {
                SerializationHandler resultTreeHandler = transformerImpl.getResultTreeHandler();
                for (int size = this.m_prefixTable.size() - 1; size >= 0; size--) {
                    XMLNSDecl xMLNSDecl = (XMLNSDecl) this.m_prefixTable.elementAt(size);
                    if (!xMLNSDecl.getIsExcluded() && (str == null || !xMLNSDecl.getPrefix().equals(str))) {
                        resultTreeHandler.startPrefixMapping(xMLNSDecl.getPrefix(), xMLNSDecl.getURI(), true);
                    }
                }
            }
        } catch (SAXException e) {
            throw new TransformerException(e);
        }
    }

    @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
    public String getNamespaceForPrefix(String str) {
        Vector vector = this.m_declaredPrefixes;
        if (vector != null) {
            int size = vector.size();
            if (str.equals("#default")) {
                str = "";
            }
            for (int i = 0; i < size; i++) {
                XMLNSDecl xMLNSDecl = (XMLNSDecl) vector.elementAt(i);
                if (str.equals(xMLNSDecl.getPrefix())) {
                    return xMLNSDecl.getURI();
                }
            }
        }
        ElemTemplateElement elemTemplateElement = this.m_parentNode;
        if (elemTemplateElement != null) {
            return elemTemplateElement.getNamespaceForPrefix(str);
        }
        if ("xml".equals(str)) {
            return "http://www.w3.org/XML/1998/namespace";
        }
        return null;
    }

    public void setPrefixes(NamespaceSupport namespaceSupport, boolean z) throws TransformerException {
        Enumeration declaredPrefixes = namespaceSupport.getDeclaredPrefixes();
        while (declaredPrefixes.hasMoreElements()) {
            String str = (String) declaredPrefixes.nextElement();
            if (this.m_declaredPrefixes == null) {
                this.m_declaredPrefixes = new Vector();
            }
            String uri = namespaceSupport.getURI(str);
            if (!z || !uri.equals("http://www.w3.org/1999/XSL/Transform")) {
                this.m_declaredPrefixes.addElement(new XMLNSDecl(str, uri, false));
            }
        }
    }

    public void unexecuteNSDecls(TransformerImpl transformerImpl, String str) throws TransformerException {
        try {
            if (this.m_prefixTable != null) {
                SerializationHandler resultTreeHandler = transformerImpl.getResultTreeHandler();
                int size = this.m_prefixTable.size();
                for (int i = 0; i < size; i++) {
                    XMLNSDecl xMLNSDecl = (XMLNSDecl) this.m_prefixTable.elementAt(i);
                    if (!xMLNSDecl.getIsExcluded() && (str == null || !xMLNSDecl.getPrefix().equals(str))) {
                        resultTreeHandler.endPrefixMapping(xMLNSDecl.getPrefix());
                    }
                }
            }
        } catch (SAXException e) {
            throw new TransformerException(e);
        }
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode
    public void error(String str) {
        error(str, null);
    }

    public void callChildVisitors(XSLTVisitor xSLTVisitor) {
        callChildVisitors(xSLTVisitor, true);
    }

    public ElemTemplateElement appendChild(ElemTemplateElement elemTemplateElement) {
        if (elemTemplateElement == null) {
            error("ER_NULL_CHILD", null);
        }
        if (this.m_firstChild == null) {
            this.m_firstChild = elemTemplateElement;
        } else {
            getLastChildElem().m_nextSibling = elemTemplateElement;
        }
        elemTemplateElement.setParentElem(this);
        return elemTemplateElement;
    }

    public ElemTemplateElement replaceChild(ElemTemplateElement elemTemplateElement, ElemTemplateElement elemTemplateElement2) {
        if (elemTemplateElement2 == null || elemTemplateElement2.getParentElem() != this) {
            return null;
        }
        ElemTemplateElement previousSiblingElem = elemTemplateElement2.getPreviousSiblingElem();
        if (previousSiblingElem != null) {
            previousSiblingElem.m_nextSibling = elemTemplateElement;
        }
        if (this.m_firstChild == elemTemplateElement2) {
            this.m_firstChild = elemTemplateElement;
        }
        elemTemplateElement.m_parentNode = this;
        elemTemplateElement2.m_parentNode = null;
        elemTemplateElement.m_nextSibling = elemTemplateElement2.m_nextSibling;
        elemTemplateElement2.m_nextSibling = null;
        return elemTemplateElement;
    }
}
