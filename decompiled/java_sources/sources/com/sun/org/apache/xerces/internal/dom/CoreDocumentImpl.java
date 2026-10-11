package com.sun.org.apache.xerces.internal.dom;

import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import com.sun.org.apache.xerces.internal.dom.ParentNode;
import com.sun.org.apache.xerces.internal.util.URI;
import com.sun.org.apache.xerces.internal.util.XML11Char;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.lang.reflect.Constructor;
import java.util.Enumeration;
import java.util.Hashtable;
import net.p110sf.saxon.query.XQueryParser;
import org.w3c.dom.Attr;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Comment;
import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.Entity;
import org.w3c.dom.EntityReference;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Notation;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;
import org.w3c.dom.UserDataHandler;
import org.w3c.dom.events.Event;
import org.w3c.dom.events.EventListener;
import org.w3c.dom.ls.DOMImplementationLS;
import org.w3c.dom.ls.LSSerializer;

/* loaded from: classes10.dex */
public class CoreDocumentImpl extends ParentNode implements Document {
    private static final int[] kidOK;
    static final long serialVersionUID = 0;
    protected String actualEncoding;
    protected boolean allowGrammarAccess;
    protected int changes;
    protected ElementImpl docElement;
    protected DocumentTypeImpl docType;
    private int documentNumber;
    transient DOMNormalizer domNormalizer;
    protected String encoding;
    protected boolean errorChecking;
    transient DOMConfigurationImpl fConfiguration;
    protected String fDocumentURI;
    transient NodeListCache fFreeNLCache;
    transient Object fXPathEvaluator;
    protected Hashtable identifiers;
    private int nodeCounter;
    private Hashtable nodeTable;
    protected boolean standalone;
    protected Hashtable userData;
    protected String version;
    private boolean xml11Version;
    protected boolean xmlVersionChanged;

    static {
        kidOK = r0;
        int[] iArr = {0, 442, 40, 0, 0, 442, 442, 0, 0, 1410, 0, 442, 0};
    }

    public CoreDocumentImpl() {
        this(false);
    }

    public static final boolean isValidQName(String str, String str2, boolean z) {
        if (str2 == null) {
            return false;
        }
        if (z) {
            if ((str != null && !XML11Char.isXML11ValidNCName(str)) || !XML11Char.isXML11ValidNCName(str2)) {
                return false;
            }
        } else if ((str != null && !XMLChar.isValidNCName(str)) || !XMLChar.isValidNCName(str2)) {
            return false;
        }
        return true;
    }

    public static final boolean isXMLName(String str, boolean z) {
        if (str == null) {
            return false;
        }
        return !z ? XMLChar.isValidName(str) : XML11Char.isXML11ValidName(str);
    }

    public void abort() {
    }

    public void addEventListener(NodeImpl nodeImpl, String str, EventListener eventListener, boolean z) {
    }

    @Override // org.w3c.dom.Document
    public Node adoptNode(Node node) {
        Hashtable userDataRecord;
        Node namedItem;
        DOMImplementation implementation;
        DOMImplementation implementation2;
        try {
            NodeImpl nodeImpl = (NodeImpl) node;
            if (node == null) {
                return null;
            }
            if (node.getOwnerDocument() != null && (implementation = getImplementation()) != (implementation2 = node.getOwnerDocument().getImplementation())) {
                if ((implementation instanceof DOMImplementationImpl) && (implementation2 instanceof DeferredDOMImplementationImpl)) {
                    undeferChildren(nodeImpl);
                } else if (!(implementation instanceof DeferredDOMImplementationImpl) || !(implementation2 instanceof DOMImplementationImpl)) {
                    return null;
                }
            }
            short nodeType = nodeImpl.getNodeType();
            if (nodeType == 1) {
                userDataRecord = nodeImpl.getUserDataRecord();
                Node parentNode = nodeImpl.getParentNode();
                if (parentNode != null) {
                    parentNode.removeChild(node);
                }
                nodeImpl.setOwnerDocument(this);
                if (userDataRecord != null) {
                    setUserDataTable(nodeImpl, userDataRecord);
                }
                ((ElementImpl) nodeImpl).reconcileDefaultAttributes();
            } else if (nodeType == 2) {
                AttrImpl attrImpl = (AttrImpl) nodeImpl;
                if (attrImpl.getOwnerElement() != null) {
                    attrImpl.getOwnerElement().removeAttributeNode(attrImpl);
                }
                attrImpl.isSpecified(true);
                Hashtable userDataRecord2 = nodeImpl.getUserDataRecord();
                attrImpl.setOwnerDocument(this);
                if (userDataRecord2 != null) {
                    setUserDataTable(nodeImpl, userDataRecord2);
                }
                userDataRecord = userDataRecord2;
            } else {
                if (nodeType != 5) {
                    if (nodeType != 6) {
                        if (nodeType == 9 || nodeType == 10) {
                            throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
                        }
                        if (nodeType != 12) {
                            userDataRecord = nodeImpl.getUserDataRecord();
                            Node parentNode2 = nodeImpl.getParentNode();
                            if (parentNode2 != null) {
                                parentNode2.removeChild(node);
                            }
                            nodeImpl.setOwnerDocument(this);
                            if (userDataRecord != null) {
                                setUserDataTable(nodeImpl, userDataRecord);
                            }
                        }
                    }
                    throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
                }
                userDataRecord = nodeImpl.getUserDataRecord();
                Node parentNode3 = nodeImpl.getParentNode();
                if (parentNode3 != null) {
                    parentNode3.removeChild(node);
                }
                while (true) {
                    Node firstChild = nodeImpl.getFirstChild();
                    if (firstChild == null) {
                        break;
                    }
                    nodeImpl.removeChild(firstChild);
                }
                nodeImpl.setOwnerDocument(this);
                if (userDataRecord != null) {
                    setUserDataTable(nodeImpl, userDataRecord);
                }
                DocumentTypeImpl documentTypeImpl = this.docType;
                if (documentTypeImpl != null && (namedItem = documentTypeImpl.getEntities().getNamedItem(nodeImpl.getNodeName())) != null) {
                    for (Node firstChild2 = namedItem.getFirstChild(); firstChild2 != null; firstChild2 = firstChild2.getNextSibling()) {
                        nodeImpl.appendChild(firstChild2.cloneNode(true));
                    }
                }
            }
            if (userDataRecord != null) {
                callUserDataHandlers(node, null, (short) 5, userDataRecord);
            }
            return nodeImpl;
        } catch (ClassCastException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void callUserDataHandlers(Node node, Node node2, short s) {
        Hashtable userDataRecord;
        if (this.userData == null || !(node instanceof NodeImpl) || (userDataRecord = ((NodeImpl) node).getUserDataRecord()) == null || userDataRecord.isEmpty()) {
            return;
        }
        callUserDataHandlers(node, node2, s, userDataRecord);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl
    public void changed() {
        this.changes++;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl
    public int changes() {
        return this.changes;
    }

    public final void checkDOMNSErr(String str, String str2) {
        if (this.errorChecking) {
            if (str2 == null) {
                throw new DOMException((short) 14, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NAMESPACE_ERR", null));
            }
            if (str.equals("xml") && !str2.equals(NamespaceContext.XML_URI)) {
                throw new DOMException((short) 14, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NAMESPACE_ERR", null));
            }
            if ((str.equals("xmlns") && !str2.equals(NamespaceContext.XMLNS_URI)) || (!str.equals("xmlns") && str2.equals(NamespaceContext.XMLNS_URI))) {
                throw new DOMException((short) 14, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NAMESPACE_ERR", null));
            }
        }
    }

    public final void checkNamespaceWF(String str, int i, int i2) {
        if (this.errorChecking) {
            if (i == 0 || i == str.length() - 1 || i2 != i) {
                throw new DOMException((short) 14, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NAMESPACE_ERR", null));
            }
        }
    }

    public final void checkQName(String str, String str2) {
        if (this.errorChecking) {
            boolean z = true;
            if (this.xml11Version ? !((str == null || XML11Char.isXML11ValidNCName(str)) && XML11Char.isXML11ValidNCName(str2)) : !((str == null || XMLChar.isValidNCName(str)) && XMLChar.isValidNCName(str2))) {
                z = false;
            }
            if (!z) {
                throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
            }
        }
    }

    public final void clearIdentifiers() {
        Hashtable hashtable = this.identifiers;
        if (hashtable != null) {
            hashtable.clear();
        }
    }

    public Object clone() throws CloneNotSupportedException {
        CoreDocumentImpl coreDocumentImpl = (CoreDocumentImpl) super.clone();
        coreDocumentImpl.docType = null;
        coreDocumentImpl.docElement = null;
        return coreDocumentImpl;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.ChildNode, com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public Node cloneNode(boolean z) {
        CoreDocumentImpl coreDocumentImpl = new CoreDocumentImpl();
        callUserDataHandlers(this, coreDocumentImpl, (short) 1);
        cloneNode(coreDocumentImpl, z);
        return coreDocumentImpl;
    }

    public void copyEventListeners(NodeImpl nodeImpl, NodeImpl nodeImpl2) {
    }

    public Attr createAttribute(String str) throws DOMException {
        if (!this.errorChecking || isXMLName(str, this.xml11Version)) {
            return new AttrImpl(this, str);
        }
        throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
    }

    @Override // org.w3c.dom.Document
    public Attr createAttributeNS(String str, String str2) throws DOMException {
        return new AttrNSImpl(this, str, str2);
    }

    @Override // org.w3c.dom.Document
    public CDATASection createCDATASection(String str) throws DOMException {
        return new CDATASectionImpl(this, str);
    }

    @Override // org.w3c.dom.Document
    public Comment createComment(String str) {
        return new CommentImpl(this, str);
    }

    @Override // org.w3c.dom.Document
    public DocumentFragment createDocumentFragment() {
        return new DocumentFragmentImpl(this);
    }

    public DocumentType createDocumentType(String str, String str2, String str3) throws DOMException {
        return new DocumentTypeImpl(this, str, str2, str3);
    }

    public Element createElement(String str) throws DOMException {
        if (!this.errorChecking || isXMLName(str, this.xml11Version)) {
            return new ElementImpl(this, str);
        }
        throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
    }

    public ElementDefinitionImpl createElementDefinition(String str) throws DOMException {
        if (!this.errorChecking || isXMLName(str, this.xml11Version)) {
            return new ElementDefinitionImpl(this, str);
        }
        throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
    }

    public Element createElementNS(String str, String str2) throws DOMException {
        return new ElementNSImpl(this, str, str2);
    }

    public Entity createEntity(String str) throws DOMException {
        if (!this.errorChecking || isXMLName(str, this.xml11Version)) {
            return new EntityImpl(this, str);
        }
        throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
    }

    @Override // org.w3c.dom.Document
    public EntityReference createEntityReference(String str) throws DOMException {
        if (!this.errorChecking || isXMLName(str, this.xml11Version)) {
            return new EntityReferenceImpl(this, str);
        }
        throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
    }

    public Notation createNotation(String str) throws DOMException {
        if (!this.errorChecking || isXMLName(str, this.xml11Version)) {
            return new NotationImpl(this, str);
        }
        throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
    }

    @Override // org.w3c.dom.Document
    public ProcessingInstruction createProcessingInstruction(String str, String str2) throws DOMException {
        if (!this.errorChecking || isXMLName(str, this.xml11Version)) {
            return new ProcessingInstructionImpl(this, str, str2);
        }
        throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
    }

    @Override // org.w3c.dom.Document
    public Text createTextNode(String str) {
        return new TextImpl(this, str);
    }

    public void deletedText(NodeImpl nodeImpl, int i, int i2) {
    }

    public boolean dispatchEvent(NodeImpl nodeImpl, Event event) {
        return false;
    }

    public void freeNodeListCache(NodeListCache nodeListCache) {
        nodeListCache.next = this.fFreeNLCache;
        this.fFreeNLCache = nodeListCache;
    }

    public boolean getAsync() {
        return false;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public String getBaseURI() {
        String str = this.fDocumentURI;
        if (str == null || str.length() == 0) {
            return this.fDocumentURI;
        }
        try {
            return new URI(this.fDocumentURI).toString();
        } catch (URI.MalformedURIException unused) {
            return null;
        }
    }

    @Override // org.w3c.dom.Document
    public DocumentType getDoctype() {
        if (needsSyncChildren()) {
            synchronizeChildren();
        }
        return this.docType;
    }

    public Element getDocumentElement() {
        if (needsSyncChildren()) {
            synchronizeChildren();
        }
        return this.docElement;
    }

    @Override // org.w3c.dom.Document
    public String getDocumentURI() {
        return this.fDocumentURI;
    }

    @Override // org.w3c.dom.Document
    public DOMConfiguration getDomConfig() {
        if (this.fConfiguration == null) {
            this.fConfiguration = new DOMConfigurationImpl();
        }
        return this.fConfiguration;
    }

    public Element getElementById(String str) {
        return getIdentifier(str);
    }

    public NodeList getElementsByTagName(String str) {
        return new DeepNodeListImpl(this, str);
    }

    public NodeList getElementsByTagNameNS(String str, String str2) {
        return new DeepNodeListImpl(this, str, str2);
    }

    public String getEncoding() {
        return getXmlEncoding();
    }

    public boolean getErrorChecking() {
        return this.errorChecking;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public Object getFeature(String str, String str2) {
        boolean z = str2 == null || str2.length() == 0;
        if (!str.equalsIgnoreCase("+XPath") || (!z && !str2.equals(XQueryParser.XQUERY30))) {
            return super.getFeature(str, str2);
        }
        Object obj = this.fXPathEvaluator;
        if (obj != null) {
            return obj;
        }
        try {
            Class findProviderClass = ObjectFactory.findProviderClass("com.sun.org.apache.xpath.internal.domapi.XPathEvaluatorImpl", ObjectFactory.findClassLoader(), true);
            Constructor constructor = findProviderClass.getConstructor(Document.class);
            for (Class<?> cls : findProviderClass.getInterfaces()) {
                if (cls.getName().equals("org.w3c.dom.xpath.XPathEvaluator")) {
                    Object newInstance = constructor.newInstance(this);
                    this.fXPathEvaluator = newInstance;
                    return newInstance;
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public Element getIdentifier(String str) {
        Element element;
        if (needsSyncData()) {
            synchronizeData();
        }
        Hashtable hashtable = this.identifiers;
        if (hashtable != null && (element = (Element) hashtable.get(str)) != null) {
            for (Node parentNode = element.getParentNode(); parentNode != null; parentNode = parentNode.getParentNode()) {
                if (parentNode == this) {
                    return element;
                }
            }
        }
        return null;
    }

    public Enumeration getIdentifiers() {
        if (needsSyncData()) {
            synchronizeData();
        }
        if (this.identifiers == null) {
            this.identifiers = new Hashtable();
        }
        return this.identifiers.keys();
    }

    @Override // org.w3c.dom.Document
    public DOMImplementation getImplementation() {
        return CoreDOMImplementationImpl.getDOMImplementation();
    }

    @Override // org.w3c.dom.Document
    public String getInputEncoding() {
        return this.actualEncoding;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean getMutationEvents() {
        return false;
    }

    public NodeListCache getNodeListCache(ParentNode parentNode) {
        NodeListCache nodeListCache = this.fFreeNLCache;
        if (nodeListCache == null) {
            return new NodeListCache(parentNode);
        }
        this.fFreeNLCache = nodeListCache.next;
        nodeListCache.fChild = null;
        nodeListCache.fChildIndex = -1;
        nodeListCache.fLength = -1;
        ParentNode parentNode2 = nodeListCache.fOwner;
        if (parentNode2 != null) {
            parentNode2.fNodeListCache = null;
        }
        nodeListCache.fOwner = parentNode;
        return nodeListCache;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public String getNodeName() {
        return "#document";
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl
    public int getNodeNumber() {
        if (this.documentNumber == 0) {
            this.documentNumber = ((CoreDOMImplementationImpl) CoreDOMImplementationImpl.getDOMImplementation()).assignDocumentNumber();
        }
        return this.documentNumber;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public short getNodeType() {
        return (short) 9;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public final Document getOwnerDocument() {
        return null;
    }

    public boolean getStandalone() {
        return getXmlStandalone();
    }

    @Override // org.w3c.dom.Document
    public boolean getStrictErrorChecking() {
        return this.errorChecking;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public String getTextContent() throws DOMException {
        return null;
    }

    public Object getUserData(Node node, String str) {
        Hashtable hashtable;
        Object obj;
        Hashtable hashtable2 = this.userData;
        if (hashtable2 == null || (hashtable = (Hashtable) hashtable2.get(node)) == null || (obj = hashtable.get(str)) == null) {
            return null;
        }
        return ((ParentNode.UserDataRecord) obj).fData;
    }

    public Hashtable getUserDataRecord(Node node) {
        Hashtable hashtable;
        Hashtable hashtable2 = this.userData;
        if (hashtable2 == null || (hashtable = (Hashtable) hashtable2.get(node)) == null) {
            return null;
        }
        return hashtable;
    }

    public String getVersion() {
        return getXmlVersion();
    }

    @Override // org.w3c.dom.Document
    public String getXmlEncoding() {
        return this.encoding;
    }

    @Override // org.w3c.dom.Document
    public boolean getXmlStandalone() {
        return this.standalone;
    }

    @Override // org.w3c.dom.Document
    public String getXmlVersion() {
        String str = this.version;
        return str == null ? "1.0" : str;
    }

    @Override // org.w3c.dom.Document
    public Node importNode(Node node, boolean z) throws DOMException {
        return importNode(node, z, false, null);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public Node insertBefore(Node node, Node node2) throws DOMException {
        short nodeType = node.getNodeType();
        if (this.errorChecking && ((nodeType == 1 && this.docElement != null) || (nodeType == 10 && this.docType != null))) {
            throw new DOMException((short) 3, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "HIERARCHY_REQUEST_ERR", null));
        }
        if (node.getOwnerDocument() == null && (node instanceof DocumentTypeImpl)) {
            ((DocumentTypeImpl) node).ownerDocument = this;
        }
        super.insertBefore(node, node2);
        if (nodeType == 1) {
            this.docElement = (ElementImpl) node;
        } else if (nodeType == 10) {
            this.docType = (DocumentTypeImpl) node;
        }
        return node;
    }

    public void insertedNode(NodeImpl nodeImpl, NodeImpl nodeImpl2, boolean z) {
    }

    public void insertedText(NodeImpl nodeImpl, int i, int i2) {
    }

    public void insertingNode(NodeImpl nodeImpl, boolean z) {
    }

    public boolean isKidOK(Node node, Node node2) {
        return (this.allowGrammarAccess && node.getNodeType() == 10) ? node2.getNodeType() == 1 : (kidOK[node.getNodeType()] & (1 << node2.getNodeType())) != 0;
    }

    boolean isNormalizeDocRequired() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isXML11Version() {
        return this.xml11Version;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isXMLVersionChanged() {
        return this.xmlVersionChanged;
    }

    public boolean load(String str) {
        return false;
    }

    public boolean loadXML(String str) {
        return false;
    }

    public void modifiedAttrValue(AttrImpl attrImpl, String str) {
    }

    public void modifiedCharacterData(NodeImpl nodeImpl, String str, String str2, boolean z) {
    }

    public void modifyingCharacterData(NodeImpl nodeImpl, boolean z) {
    }

    @Override // org.w3c.dom.Document
    public void normalizeDocument() {
        if (!isNormalized() || isNormalizeDocRequired()) {
            if (needsSyncChildren()) {
                synchronizeChildren();
            }
            if (this.domNormalizer == null) {
                this.domNormalizer = new DOMNormalizer();
            }
            DOMConfigurationImpl dOMConfigurationImpl = this.fConfiguration;
            if (dOMConfigurationImpl == null) {
                this.fConfiguration = new DOMConfigurationImpl();
            } else {
                dOMConfigurationImpl.reset();
            }
            this.domNormalizer.normalizeDocument(this, this.fConfiguration);
            isNormalized(true);
            this.xmlVersionChanged = false;
        }
    }

    public void putIdentifier(String str, Element element) {
        if (element == null) {
            removeIdentifier(str);
            return;
        }
        if (needsSyncData()) {
            synchronizeData();
        }
        if (this.identifiers == null) {
            this.identifiers = new Hashtable();
        }
        this.identifiers.put(str, element);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public Node removeChild(Node node) throws DOMException {
        super.removeChild(node);
        short nodeType = node.getNodeType();
        if (nodeType == 1) {
            this.docElement = null;
        } else if (nodeType == 10) {
            this.docType = null;
        }
        return node;
    }

    public void removeEventListener(NodeImpl nodeImpl, String str, EventListener eventListener, boolean z) {
    }

    public void removeIdentifier(String str) {
        if (needsSyncData()) {
            synchronizeData();
        }
        Hashtable hashtable = this.identifiers;
        if (hashtable == null) {
            return;
        }
        hashtable.remove(str);
    }

    Hashtable removeUserDataTable(Node node) {
        Hashtable hashtable = this.userData;
        if (hashtable == null) {
            return null;
        }
        return (Hashtable) hashtable.get(node);
    }

    public void removedAttrNode(AttrImpl attrImpl, NodeImpl nodeImpl, String str) {
    }

    public void removedNode(NodeImpl nodeImpl, boolean z) {
    }

    public void removingNode(NodeImpl nodeImpl, NodeImpl nodeImpl2, boolean z) {
    }

    @Override // org.w3c.dom.Document
    public Node renameNode(Node node, String str, String str2) throws DOMException {
        if (this.errorChecking && node.getOwnerDocument() != this && node != this) {
            throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
        }
        short nodeType = node.getNodeType();
        if (nodeType != 1) {
            if (nodeType != 2) {
                throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
            }
            AttrImpl attrImpl = (AttrImpl) node;
            Element ownerElement = attrImpl.getOwnerElement();
            if (ownerElement != null) {
                ownerElement.removeAttributeNode(attrImpl);
            }
            if (node instanceof AttrNSImpl) {
                ((AttrNSImpl) attrImpl).rename(str, str2);
                if (ownerElement != null) {
                    ownerElement.setAttributeNodeNS(attrImpl);
                }
                callUserDataHandlers(attrImpl, null, (short) 4);
            } else if (str == null) {
                attrImpl.rename(str2);
                if (ownerElement != null) {
                    ownerElement.setAttributeNode(attrImpl);
                }
                callUserDataHandlers(attrImpl, null, (short) 4);
            } else {
                AttrNSImpl attrNSImpl = new AttrNSImpl(this, str, str2);
                copyEventListeners(attrImpl, attrNSImpl);
                Hashtable removeUserDataTable = removeUserDataTable(attrImpl);
                for (Node firstChild = attrImpl.getFirstChild(); firstChild != null; firstChild = attrImpl.getFirstChild()) {
                    attrImpl.removeChild(firstChild);
                    attrNSImpl.appendChild(firstChild);
                }
                setUserDataTable(attrNSImpl, removeUserDataTable);
                callUserDataHandlers(attrImpl, attrNSImpl, (short) 4);
                if (ownerElement != null) {
                    ownerElement.setAttributeNode(attrNSImpl);
                }
                attrImpl = attrNSImpl;
            }
            renamedAttrNode((Attr) node, attrImpl);
            return attrImpl;
        }
        ElementImpl elementImpl = (ElementImpl) node;
        if (elementImpl instanceof ElementNSImpl) {
            ((ElementNSImpl) elementImpl).rename(str, str2);
            callUserDataHandlers(elementImpl, null, (short) 4);
        } else if (str == null) {
            if (this.errorChecking) {
                if (str2.indexOf(58) != -1) {
                    throw new DOMException((short) 14, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NAMESPACE_ERR", null));
                }
                if (!isXMLName(str2, this.xml11Version)) {
                    throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
                }
            }
            elementImpl.rename(str2);
            callUserDataHandlers(elementImpl, null, (short) 4);
        } else {
            ElementNSImpl elementNSImpl = new ElementNSImpl(this, str, str2);
            copyEventListeners(elementImpl, elementNSImpl);
            Hashtable removeUserDataTable2 = removeUserDataTable(elementImpl);
            Node parentNode = elementImpl.getParentNode();
            Node nextSibling = elementImpl.getNextSibling();
            if (parentNode != null) {
                parentNode.removeChild(elementImpl);
            }
            for (Node firstChild2 = elementImpl.getFirstChild(); firstChild2 != null; firstChild2 = elementImpl.getFirstChild()) {
                elementImpl.removeChild(firstChild2);
                elementNSImpl.appendChild(firstChild2);
            }
            elementNSImpl.moveSpecifiedAttributes(elementImpl);
            setUserDataTable(elementNSImpl, removeUserDataTable2);
            callUserDataHandlers(elementImpl, elementNSImpl, (short) 4);
            if (parentNode != null) {
                parentNode.insertBefore(elementNSImpl, nextSibling);
            }
            elementImpl = elementNSImpl;
        }
        renamedElement((Element) node, elementImpl);
        return elementImpl;
    }

    void renamedAttrNode(Attr attr, Attr attr2) {
    }

    void renamedElement(Element element, Element element2) {
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public Node replaceChild(Node node, Node node2) throws DOMException {
        if (node.getOwnerDocument() == null && (node instanceof DocumentTypeImpl)) {
            ((DocumentTypeImpl) node).ownerDocument = this;
        }
        if (this.errorChecking && ((this.docType != null && node2.getNodeType() != 10 && node.getNodeType() == 10) || (this.docElement != null && node2.getNodeType() != 1 && node.getNodeType() == 1))) {
            throw new DOMException((short) 3, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "HIERARCHY_REQUEST_ERR", null));
        }
        super.replaceChild(node, node2);
        short nodeType = node2.getNodeType();
        if (nodeType == 1) {
            this.docElement = (ElementImpl) node;
        } else if (nodeType == 10) {
            this.docType = (DocumentTypeImpl) node;
        }
        return node2;
    }

    public void replacedCharacterData(NodeImpl nodeImpl, String str, String str2) {
    }

    public void replacedNode(NodeImpl nodeImpl) {
    }

    public void replacedText(NodeImpl nodeImpl) {
    }

    public void replacingData(NodeImpl nodeImpl) {
    }

    public void replacingNode(NodeImpl nodeImpl) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String saveXML(Node node) throws DOMException {
        if (this.errorChecking && node != 0 && this != node.getOwnerDocument()) {
            throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
        }
        LSSerializer createLSSerializer = ((DOMImplementationLS) DOMImplementationImpl.getDOMImplementation()).createLSSerializer();
        if (node != 0) {
            this = node;
        }
        return createLSSerializer.writeToString(this);
    }

    public void setAsync(boolean z) {
        if (z) {
            throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
        }
    }

    public void setAttrNode(AttrImpl attrImpl, AttrImpl attrImpl2) {
    }

    @Override // org.w3c.dom.Document
    public void setDocumentURI(String str) {
        this.fDocumentURI = str;
    }

    public void setEncoding(String str) {
        setXmlEncoding(str);
    }

    public void setErrorChecking(boolean z) {
        this.errorChecking = z;
    }

    public void setInputEncoding(String str) {
        this.actualEncoding = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMutationEvents(boolean z) {
    }

    public void setStandalone(boolean z) {
        setXmlStandalone(z);
    }

    @Override // org.w3c.dom.Document
    public void setStrictErrorChecking(boolean z) {
        this.errorChecking = z;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public void setTextContent(String str) throws DOMException {
    }

    public Object setUserData(Node node, String str, Object obj, UserDataHandler userDataHandler) {
        Hashtable hashtable;
        Hashtable hashtable2;
        Object remove;
        if (obj == null) {
            Hashtable hashtable3 = this.userData;
            if (hashtable3 == null || (hashtable2 = (Hashtable) hashtable3.get(node)) == null || (remove = hashtable2.remove(str)) == null) {
                return null;
            }
            return ((ParentNode.UserDataRecord) remove).fData;
        }
        Hashtable hashtable4 = this.userData;
        if (hashtable4 == null) {
            this.userData = new Hashtable();
            hashtable = new Hashtable();
            this.userData.put(node, hashtable);
        } else {
            hashtable = (Hashtable) hashtable4.get(node);
            if (hashtable == null) {
                hashtable = new Hashtable();
                this.userData.put(node, hashtable);
            }
        }
        Object put = hashtable.put(str, new ParentNode.UserDataRecord(obj, userDataHandler));
        if (put != null) {
            return ((ParentNode.UserDataRecord) put).fData;
        }
        return null;
    }

    void setUserDataTable(Node node, Hashtable hashtable) {
        if (this.userData == null) {
            this.userData = new Hashtable();
        }
        if (hashtable != null) {
            this.userData.put(node, hashtable);
        }
    }

    public void setVersion(String str) {
        setXmlVersion(str);
    }

    public void setXmlEncoding(String str) {
        this.encoding = str;
    }

    @Override // org.w3c.dom.Document
    public void setXmlStandalone(boolean z) throws DOMException {
        this.standalone = z;
    }

    @Override // org.w3c.dom.Document
    public void setXmlVersion(String str) {
        if (!str.equals("1.0") && !str.equals(SerializerConstants.XMLVERSION11)) {
            throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
        }
        if (!getXmlVersion().equals(str)) {
            this.xmlVersionChanged = true;
            isNormalized(false);
            this.version = str;
        }
        if (getXmlVersion().equals(SerializerConstants.XMLVERSION11)) {
            this.xml11Version = true;
        } else {
            this.xml11Version = false;
        }
    }

    public void undeferChildren(Node node) {
        Node node2 = node;
        while (node2 != null) {
            NodeImpl nodeImpl = (NodeImpl) node2;
            if (nodeImpl.needsSyncData()) {
                nodeImpl.synchronizeData();
            }
            NamedNodeMap attributes = node2.getAttributes();
            if (attributes != null) {
                int length = attributes.getLength();
                for (int i = 0; i < length; i++) {
                    undeferChildren(attributes.item(i));
                }
            }
            Node firstChild = node2.getFirstChild();
            while (firstChild == null && !node.equals(node2)) {
                firstChild = node2.getNextSibling();
                if (firstChild == null && ((node2 = node2.getParentNode()) == null || node.equals(node2))) {
                    node2 = null;
                    break;
                }
            }
            node2 = firstChild;
        }
    }

    public CoreDocumentImpl(boolean z) {
        super(null);
        this.domNormalizer = null;
        this.fConfiguration = null;
        this.fXPathEvaluator = null;
        this.changes = 0;
        this.errorChecking = true;
        this.xmlVersionChanged = false;
        this.documentNumber = 0;
        this.nodeCounter = 0;
        this.xml11Version = false;
        this.ownerDocument = this;
        this.allowGrammarAccess = z;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001e. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01fc  */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.sun.org.apache.xerces.internal.dom.NodeImpl, com.sun.org.apache.xerces.internal.dom.EntityImpl] */
    /* JADX WARN: Type inference failed for: r2v16, types: [org.w3c.dom.ProcessingInstruction] */
    /* JADX WARN: Type inference failed for: r2v17, types: [org.w3c.dom.Comment] */
    /* JADX WARN: Type inference failed for: r2v20, types: [com.sun.org.apache.xerces.internal.dom.DocumentTypeImpl] */
    /* JADX WARN: Type inference failed for: r2v21, types: [org.w3c.dom.DocumentFragment] */
    /* JADX WARN: Type inference failed for: r2v22, types: [org.w3c.dom.Node] */
    /* JADX WARN: Type inference failed for: r2v25, types: [com.sun.org.apache.xerces.internal.dom.NotationImpl] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v3, types: [org.w3c.dom.Element, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v7, types: [org.w3c.dom.Node] */
    /* JADX WARN: Type inference failed for: r2v8, types: [org.w3c.dom.Text] */
    /* JADX WARN: Type inference failed for: r2v9, types: [org.w3c.dom.CDATASection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.w3c.dom.Node importNode(org.w3c.dom.Node r11, boolean r12, boolean r13, java.util.Hashtable r14) throws org.w3c.dom.DOMException {
        /*
            Method dump skipped, instructions count: 544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl.importNode(org.w3c.dom.Node, boolean, boolean, java.util.Hashtable):org.w3c.dom.Node");
    }

    public Attr createAttributeNS(String str, String str2, String str3) throws DOMException {
        return new AttrNSImpl(this, str, str2, str3);
    }

    public Element createElementNS(String str, String str2, String str3) throws DOMException {
        return new ElementNSImpl(this, str, str2, str3);
    }

    public void cloneNode(CoreDocumentImpl coreDocumentImpl, boolean z) {
        Hashtable hashtable;
        if (needsSyncChildren()) {
            synchronizeChildren();
        }
        if (z) {
            if (this.identifiers != null) {
                hashtable = new Hashtable();
                Enumeration keys = this.identifiers.keys();
                while (keys.hasMoreElements()) {
                    Object nextElement = keys.nextElement();
                    hashtable.put(this.identifiers.get(nextElement), nextElement);
                }
            } else {
                hashtable = null;
            }
            for (ChildNode childNode = this.firstChild; childNode != null; childNode = childNode.nextSibling) {
                coreDocumentImpl.appendChild(coreDocumentImpl.importNode(childNode, true, true, hashtable));
            }
        }
        coreDocumentImpl.allowGrammarAccess = this.allowGrammarAccess;
        coreDocumentImpl.errorChecking = this.errorChecking;
    }

    public int getNodeNumber(Node node) {
        Hashtable hashtable = this.nodeTable;
        if (hashtable == null) {
            Hashtable hashtable2 = new Hashtable();
            this.nodeTable = hashtable2;
            int i = this.nodeCounter - 1;
            this.nodeCounter = i;
            hashtable2.put(node, new Integer(i));
            return i;
        }
        Integer num = (Integer) hashtable.get(node);
        if (num == null) {
            int i2 = this.nodeCounter - 1;
            this.nodeCounter = i2;
            this.nodeTable.put(node, new Integer(i2));
            return i2;
        }
        return num.intValue();
    }

    void callUserDataHandlers(Node node, Node node2, short s, Hashtable hashtable) {
        if (hashtable == null || hashtable.isEmpty()) {
            return;
        }
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            String str = (String) keys.nextElement();
            ParentNode.UserDataRecord userDataRecord = (ParentNode.UserDataRecord) hashtable.get(str);
            UserDataHandler userDataHandler = userDataRecord.fHandler;
            if (userDataHandler != null) {
                userDataHandler.handle(s, str, userDataRecord.fData, node, node2);
            }
        }
    }

    public Object getUserData(NodeImpl nodeImpl) {
        return getUserData(nodeImpl, "XERCES1DOMUSERDATA");
    }

    public CoreDocumentImpl(DocumentType documentType) {
        this(documentType, false);
    }

    public CoreDocumentImpl(DocumentType documentType, boolean z) {
        this(z);
        if (documentType != null) {
            try {
                ((DocumentTypeImpl) documentType).ownerDocument = this;
                appendChild(documentType);
            } catch (ClassCastException unused) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
    }

    public void setUserData(NodeImpl nodeImpl, Object obj) {
        setUserData(nodeImpl, "XERCES1DOMUSERDATA", obj, null);
    }
}
