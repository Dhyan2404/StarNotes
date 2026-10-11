package com.sun.org.apache.xml.internal.dtm.ref.dom2dtm;

import com.sun.org.apache.xml.internal.dtm.DTMManager;
import com.sun.org.apache.xml.internal.dtm.DTMWSFilter;
import com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators;
import com.sun.org.apache.xml.internal.dtm.ref.DTMManagerDefault;
import com.sun.org.apache.xml.internal.dtm.ref.ExpandedNameTable;
import com.sun.org.apache.xml.internal.dtm.ref.IncrementalSAXSource;
import com.sun.org.apache.xml.internal.res.XMLMessages;
import com.sun.org.apache.xml.internal.utils.FastStringBuffer;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xml.internal.utils.StringBufferPool;
import com.sun.org.apache.xml.internal.utils.SuballocatedIntVector;
import com.sun.org.apache.xml.internal.utils.TreeWalker;
import com.sun.org.apache.xml.internal.utils.XMLCharacterRecognizer;
import com.sun.org.apache.xml.internal.utils.XMLString;
import com.sun.org.apache.xml.internal.utils.XMLStringFactory;
import java.util.Vector;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.dom.DOMSource;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.Entity;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.ext.DeclHandler;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes10.dex */
public class DOM2DTM extends DTMDefaultBaseIterators {
    static final boolean JJK_DEBUG = false;
    static final boolean JJK_NEWCODE = true;
    static final String NAMESPACE_DECL_NS = "http://www.w3.org/XML/1998/namespace";
    private int m_last_kid;
    private int m_last_parent;
    protected Vector m_nodes;
    private transient boolean m_nodesAreProcessed;
    private transient Node m_pos;
    boolean m_processedFirstElement;
    private transient Node m_root;
    TreeWalker m_walker;

    /* loaded from: classes10.dex */
    public interface CharacterNodeHandler {
        void characters(Node node) throws SAXException;
    }

    public DOM2DTM(DTMManager dTMManager, DOMSource dOMSource, int i, DTMWSFilter dTMWSFilter, XMLStringFactory xMLStringFactory, boolean z) {
        super(dTMManager, dOMSource, i, dTMWSFilter, xMLStringFactory, z);
        this.m_last_parent = 0;
        this.m_last_kid = -1;
        this.m_processedFirstElement = false;
        this.m_nodes = new Vector();
        this.m_walker = new TreeWalker(null);
        Node node = dOMSource.getNode();
        this.m_root = node;
        this.m_pos = node;
        this.m_last_kid = -1;
        this.m_last_parent = -1;
        this.m_last_kid = addNode(node, -1, -1, -1);
        if (1 == this.m_root.getNodeType()) {
            NamedNodeMap attributes = this.m_root.getAttributes();
            int length = attributes == null ? 0 : attributes.getLength();
            if (length > 0) {
                int i2 = -1;
                for (int i3 = 0; i3 < length; i3++) {
                    i2 = addNode(attributes.item(i3), 0, i2, -1);
                    this.m_firstch.setElementAt(-1, i2);
                }
                this.m_nextsib.setElementAt(-1, i2);
            }
        }
        this.m_nodesAreProcessed = false;
    }

    public static void dispatchNodeData(Node node, ContentHandler contentHandler, int i) throws SAXException {
        short nodeType = node.getNodeType();
        if (nodeType != 1) {
            if (nodeType != 2 && nodeType != 3 && nodeType != 4) {
                if (nodeType == 7 || nodeType == 8) {
                    if (i != 0) {
                        return;
                    }
                } else if (nodeType != 9 && nodeType != 11) {
                    return;
                }
            }
            String nodeValue = node.getNodeValue();
            if (contentHandler instanceof CharacterNodeHandler) {
                ((CharacterNodeHandler) contentHandler).characters(node);
                return;
            } else {
                contentHandler.characters(nodeValue.toCharArray(), 0, nodeValue.length());
                return;
            }
        }
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            dispatchNodeData(firstChild, contentHandler, i + 1);
        }
    }

    private int getHandleFromNode(Node node) {
        if (node == null) {
            return -1;
        }
        int size = this.m_nodes.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                boolean nextNode = nextNode();
                int size2 = this.m_nodes.size();
                if (!nextNode && i >= size2) {
                    return -1;
                }
                size = size2;
            } else {
                if (this.m_nodes.elementAt(i) == node) {
                    return makeNodeHandle(i);
                }
                i++;
            }
        }
    }

    public static void getNodeData(Node node, FastStringBuffer fastStringBuffer) {
        short nodeType = node.getNodeType();
        if (nodeType != 1) {
            if (nodeType == 2 || nodeType == 3 || nodeType == 4) {
                fastStringBuffer.append(node.getNodeValue());
                return;
            } else if (nodeType != 9 && nodeType != 11) {
                return;
            }
        }
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            getNodeData(firstChild, fastStringBuffer);
        }
    }

    private static boolean isSpace(char c) {
        return XMLCharacterRecognizer.isWhiteSpace(c);
    }

    private Node logicalNextDOMTextNode(Node node) {
        short nodeType;
        Node nextSibling = node.getNextSibling();
        if (nextSibling == null) {
            for (Node parentNode = node.getParentNode(); parentNode != null && 5 == parentNode.getNodeType(); parentNode = parentNode.getParentNode()) {
                nextSibling = parentNode.getNextSibling();
                if (nextSibling != null) {
                    break;
                }
            }
        }
        while (nextSibling != null && 5 == nextSibling.getNodeType()) {
            nextSibling = nextSibling.hasChildNodes() ? nextSibling.getFirstChild() : nextSibling.getNextSibling();
        }
        if (nextSibling == null || 3 == (nodeType = nextSibling.getNodeType()) || 4 == nodeType) {
            return nextSibling;
        }
        return null;
    }

    public int addNode(Node node, int i, int i2, int i3) {
        int size = this.m_nodes.size();
        if (this.m_dtmIdent.size() == (size >>> 16)) {
            try {
                DTMManager dTMManager = this.m_mgr;
                if (dTMManager == null) {
                    throw new ClassCastException();
                }
                DTMManagerDefault dTMManagerDefault = (DTMManagerDefault) dTMManager;
                int firstFreeDTMID = dTMManagerDefault.getFirstFreeDTMID();
                dTMManagerDefault.addDTM(this, firstFreeDTMID, size);
                this.m_dtmIdent.addElement(firstFreeDTMID << 16);
            } catch (ClassCastException unused) {
                error(XMLMessages.createXMLMessage("ER_NO_DTMIDS_AVAIL", null));
            }
        }
        this.m_size++;
        if (-1 == i3) {
            i3 = node.getNodeType();
        }
        if (2 == i3) {
            String nodeName = node.getNodeName();
            if (nodeName.startsWith("xmlns:") || nodeName.equals("xmlns")) {
                i3 = 13;
            }
        }
        this.m_nodes.addElement(node);
        this.m_firstch.setElementAt(-2, size);
        this.m_nextsib.setElementAt(-2, size);
        this.m_prevsib.setElementAt(i2, size);
        this.m_parent.setElementAt(i, size);
        if (-1 != i && i3 != 2 && i3 != 13 && -2 == this.m_firstch.elementAt(i)) {
            this.m_firstch.setElementAt(size, i);
        }
        String namespaceURI = node.getNamespaceURI();
        String nodeName2 = i3 == 7 ? node.getNodeName() : node.getLocalName();
        if ((i3 == 1 || i3 == 2) && nodeName2 == null) {
            nodeName2 = node.getNodeName();
        }
        ExpandedNameTable expandedNameTable = this.m_expandedNameTable;
        node.getLocalName();
        int expandedTypeID = nodeName2 != null ? expandedNameTable.getExpandedTypeID(namespaceURI, nodeName2, i3) : expandedNameTable.getExpandedTypeID(i3);
        this.m_exptype.setElementAt(expandedTypeID, size);
        indexNode(expandedTypeID, size);
        if (-1 != i2) {
            this.m_nextsib.setElementAt(size, i2);
        }
        if (i3 == 13) {
            declareNamespaceInContext(i, size);
        }
        return size;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public void dispatchCharactersEvents(int i, ContentHandler contentHandler, boolean z) throws SAXException {
        if (z) {
            getStringValue(i).fixWhiteSpace(true, true, false).dispatchCharactersEvents(contentHandler);
            return;
        }
        short nodeType = getNodeType(i);
        Node node = getNode(i);
        dispatchNodeData(node, contentHandler, 0);
        if (3 != nodeType && 4 != nodeType) {
            return;
        }
        while (true) {
            node = logicalNextDOMTextNode(node);
            if (node == null) {
                return;
            } else {
                dispatchNodeData(node, contentHandler, 0);
            }
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public void dispatchToEvents(int i, ContentHandler contentHandler) throws SAXException {
        TreeWalker treeWalker = this.m_walker;
        if (treeWalker.getContentHandler() != null) {
            treeWalker = new TreeWalker(null);
        }
        treeWalker.setContentHandler(contentHandler);
        try {
            treeWalker.traverse(getNode(i));
        } finally {
            treeWalker.setContentHandler(null);
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getAttributeNode(int i, String str, String str2) {
        short _type;
        if (str == null) {
            str = "";
        }
        if (1 == getNodeType(i)) {
            int makeNodeIdentity = makeNodeIdentity(i);
            while (true) {
                makeNodeIdentity = getNextNodeIdentity(makeNodeIdentity);
                if (-1 == makeNodeIdentity || ((_type = _type(makeNodeIdentity)) != 2 && _type != 13)) {
                    break;
                }
                Node lookupNode = lookupNode(makeNodeIdentity);
                String namespaceURI = lookupNode.getNamespaceURI();
                if (namespaceURI == null) {
                    namespaceURI = "";
                }
                String localName = lookupNode.getLocalName();
                if (namespaceURI.equals(str) && str2.equals(localName)) {
                    return makeNodeHandle(makeNodeIdentity);
                }
            }
        }
        return -1;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public ContentHandler getContentHandler() {
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public DTDHandler getDTDHandler() {
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public DeclHandler getDeclHandler() {
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getDocumentTypeDeclarationPublicIdentifier() {
        DocumentType doctype;
        Document ownerDocument = this.m_root.getNodeType() == 9 ? (Document) this.m_root : this.m_root.getOwnerDocument();
        if (ownerDocument == null || (doctype = ownerDocument.getDoctype()) == null) {
            return null;
        }
        return doctype.getPublicId();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getDocumentTypeDeclarationSystemIdentifier() {
        DocumentType doctype;
        Document ownerDocument = this.m_root.getNodeType() == 9 ? (Document) this.m_root : this.m_root.getOwnerDocument();
        if (ownerDocument == null || (doctype = ownerDocument.getDoctype()) == null) {
            return null;
        }
        return doctype.getSystemId();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getElementById(String str) {
        Element elementById;
        Document ownerDocument = this.m_root.getNodeType() == 9 ? (Document) this.m_root : this.m_root.getOwnerDocument();
        if (ownerDocument == null || (elementById = ownerDocument.getElementById(str)) == null) {
            return -1;
        }
        int handleFromNode = getHandleFromNode(elementById);
        if (-1 != handleFromNode) {
            return handleFromNode;
        }
        int size = this.m_nodes.size() - 1;
        do {
            size = getNextNodeIdentity(size);
            if (-1 == size) {
                return handleFromNode;
            }
        } while (getNode(size) != elementById);
        return getHandleFromNode(elementById);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public EntityResolver getEntityResolver() {
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public ErrorHandler getErrorHandler() {
        return null;
    }

    public int getHandleOfNode(Node node) {
        if (node == null) {
            return -1;
        }
        Node node2 = this.m_root;
        if (node2 != node && ((node2.getNodeType() != 9 || this.m_root != node.getOwnerDocument()) && (this.m_root.getNodeType() == 9 || this.m_root.getOwnerDocument() != node.getOwnerDocument()))) {
            return -1;
        }
        Node node3 = node;
        while (node3 != null) {
            if (node3 == this.m_root) {
                return getHandleFromNode(node);
            }
            node3 = node3.getNodeType() != 2 ? node3.getParentNode() : ((Attr) node3).getOwnerElement();
        }
        return -1;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public LexicalHandler getLexicalHandler() {
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getLocalName(int i) {
        int makeNodeIdentity = makeNodeIdentity(i);
        if (-1 == makeNodeIdentity) {
            return null;
        }
        Node node = (Node) this.m_nodes.elementAt(makeNodeIdentity);
        String localName = node.getLocalName();
        if (localName != null) {
            return localName;
        }
        String nodeName = node.getNodeName();
        if ('#' == nodeName.charAt(0)) {
            return "";
        }
        int indexOf = nodeName.indexOf(58);
        if (indexOf >= 0) {
            nodeName = nodeName.substring(indexOf + 1);
        }
        return nodeName;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getNamespaceURI(int i) {
        int makeNodeIdentity = makeNodeIdentity(i);
        if (makeNodeIdentity == -1) {
            return null;
        }
        return ((Node) this.m_nodes.elementAt(makeNodeIdentity)).getNamespaceURI();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public int getNextNodeIdentity(int i) {
        int i2 = i + 1;
        if (i2 < this.m_nodes.size() || nextNode()) {
            return i2;
        }
        return -1;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public Node getNode(int i) {
        return (Node) this.m_nodes.elementAt(makeNodeIdentity(i));
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getNodeName(int i) {
        return getNode(i).getNodeName();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getNodeNameX(int i) {
        short nodeType = getNodeType(i);
        if (nodeType == 1 || nodeType == 2 || nodeType == 5 || nodeType == 7) {
            return getNode(i).getNodeName();
        }
        if (nodeType != 13) {
            return "";
        }
        String nodeName = getNode(i).getNodeName();
        if (nodeName.startsWith("xmlns:")) {
            nodeName = QName.getLocalPart(nodeName);
        } else if (nodeName.equals("xmlns")) {
            return "";
        }
        return nodeName;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getNodeValue(int i) {
        short nodeType = -1 != _exptype(makeNodeIdentity(i)) ? getNodeType(i) : (short) -1;
        if (3 != nodeType && 4 != nodeType) {
            return getNode(i).getNodeValue();
        }
        Node node = getNode(i);
        Node logicalNextDOMTextNode = logicalNextDOMTextNode(node);
        if (logicalNextDOMTextNode == null) {
            return node.getNodeValue();
        }
        FastStringBuffer fastStringBuffer = StringBufferPool.get();
        fastStringBuffer.append(node.getNodeValue());
        while (logicalNextDOMTextNode != null) {
            fastStringBuffer.append(logicalNextDOMTextNode.getNodeValue());
            logicalNextDOMTextNode = logicalNextDOMTextNode(logicalNextDOMTextNode);
        }
        String fastStringBuffer2 = fastStringBuffer.length() > 0 ? fastStringBuffer.toString() : "";
        StringBufferPool.free(fastStringBuffer);
        return fastStringBuffer2;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public int getNumberOfNodes() {
        return this.m_nodes.size();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getPrefix(int i) {
        String substring;
        String nodeName;
        int indexOf;
        short nodeType = getNodeType(i);
        if (nodeType == 1 || nodeType == 2) {
            String nodeName2 = getNode(i).getNodeName();
            int indexOf2 = nodeName2.indexOf(58);
            if (indexOf2 < 0) {
                return "";
            }
            substring = nodeName2.substring(0, indexOf2);
        } else {
            if (nodeType != 13 || (indexOf = (nodeName = getNode(i).getNodeName()).indexOf(58)) < 0) {
                return "";
            }
            substring = nodeName.substring(indexOf + 1);
        }
        return substring;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public SourceLocator getSourceLocatorFor(int i) {
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public XMLString getStringValue(int i) {
        String fastStringBuffer;
        short nodeType = getNodeType(i);
        Node node = getNode(i);
        if (1 == nodeType || 9 == nodeType || 11 == nodeType) {
            FastStringBuffer fastStringBuffer2 = StringBufferPool.get();
            try {
                getNodeData(node, fastStringBuffer2);
                fastStringBuffer = fastStringBuffer2.length() > 0 ? fastStringBuffer2.toString() : "";
                StringBufferPool.free(fastStringBuffer2);
                return this.m_xstrf.newstr(fastStringBuffer);
            } catch (Throwable th) {
                StringBufferPool.free(fastStringBuffer2);
                throw th;
            }
        }
        if (3 != nodeType && 4 != nodeType) {
            return this.m_xstrf.newstr(node.getNodeValue());
        }
        FastStringBuffer fastStringBuffer3 = StringBufferPool.get();
        while (node != null) {
            fastStringBuffer3.append(node.getNodeValue());
            node = logicalNextDOMTextNode(node);
        }
        fastStringBuffer = fastStringBuffer3.length() > 0 ? fastStringBuffer3.toString() : "";
        StringBufferPool.free(fastStringBuffer3);
        return this.m_xstrf.newstr(fastStringBuffer);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getUnparsedEntityURI(String str) {
        DocumentType doctype;
        NamedNodeMap entities;
        Entity entity;
        short nodeType = this.m_root.getNodeType();
        Node node = this.m_root;
        Document ownerDocument = nodeType == 9 ? (Document) node : node.getOwnerDocument();
        if (ownerDocument == null || (doctype = ownerDocument.getDoctype()) == null || (entities = doctype.getEntities()) == null || (entity = (Entity) entities.getNamedItem(str)) == null || entity.getNotationName() == null) {
            return "";
        }
        String systemId = entity.getSystemId();
        return systemId == null ? entity.getPublicId() : systemId;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public boolean isAttributeSpecified(int i) {
        if (2 == getNodeType(i)) {
            return ((Attr) getNode(i)).getSpecified();
        }
        return false;
    }

    public boolean isWhitespace(int i) {
        short nodeType = getNodeType(i);
        Node node = getNode(i);
        if (3 != nodeType && 4 != nodeType) {
            return false;
        }
        FastStringBuffer fastStringBuffer = StringBufferPool.get();
        while (node != null) {
            fastStringBuffer.append(node.getNodeValue());
            node = logicalNextDOMTextNode(node);
        }
        boolean isWhitespace = fastStringBuffer.isWhitespace(0, fastStringBuffer.length());
        StringBufferPool.free(fastStringBuffer);
        return isWhitespace;
    }

    public Node lookupNode(int i) {
        return (Node) this.m_nodes.elementAt(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public boolean needsTwoThreads() {
        return false;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public boolean nextNode() {
        boolean z;
        if (this.m_nodesAreProcessed) {
            return false;
        }
        Node node = this.m_pos;
        Node node2 = null;
        Node node3 = null;
        short s = -1;
        do {
            if (node.hasChildNodes()) {
                node3 = node.getFirstChild();
                if (node3 != null && 10 == node3.getNodeType()) {
                    node3 = node3.getNextSibling();
                }
                if (5 != node.getNodeType()) {
                    int i = this.m_last_kid;
                    this.m_last_parent = i;
                    this.m_last_kid = -1;
                    DTMWSFilter dTMWSFilter = this.m_wsfilter;
                    if (dTMWSFilter != null) {
                        short shouldStripSpace = dTMWSFilter.getShouldStripSpace(makeNodeHandle(i), this);
                        pushShouldStripWhitespace(3 == shouldStripSpace ? getShouldStripWhitespace() : 2 == shouldStripSpace);
                    }
                }
            } else {
                int i2 = this.m_last_kid;
                if (i2 != -1 && this.m_firstch.elementAt(i2) == -2) {
                    this.m_firstch.setElementAt(-1, this.m_last_kid);
                }
                while (this.m_last_parent != -1) {
                    node3 = node.getNextSibling();
                    if (node3 != null && 10 == node3.getNodeType()) {
                        node3 = node3.getNextSibling();
                    }
                    if (node3 != null) {
                        break;
                    }
                    node = node.getParentNode();
                    if (node == null || 5 != node.getNodeType()) {
                        popShouldStripWhitespace();
                        int i3 = this.m_last_kid;
                        if (i3 == -1) {
                            this.m_firstch.setElementAt(-1, this.m_last_parent);
                        } else {
                            this.m_nextsib.setElementAt(-1, i3);
                        }
                        SuballocatedIntVector suballocatedIntVector = this.m_parent;
                        int i4 = this.m_last_parent;
                        this.m_last_kid = i4;
                        this.m_last_parent = suballocatedIntVector.elementAt(i4);
                    }
                }
                if (this.m_last_parent == -1) {
                    node3 = null;
                }
            }
            if (node3 != null) {
                s = node3.getNodeType();
            }
            if (5 == s) {
                node = node3;
            }
        } while (5 == s);
        if (node3 == null) {
            this.m_nextsib.setElementAt(-1, 0);
            this.m_nodesAreProcessed = true;
            this.m_pos = null;
            return false;
        }
        short nodeType = node3.getNodeType();
        if (3 == nodeType || 4 == nodeType) {
            z = this.m_wsfilter != null && getShouldStripWhitespace();
            short s2 = nodeType;
            Node node4 = null;
            Node node5 = node3;
            while (node5 != null) {
                if (3 == node5.getNodeType()) {
                    s2 = 3;
                }
                z &= XMLCharacterRecognizer.isWhiteSpace(node5.getNodeValue());
                node4 = node5;
                node5 = logicalNextDOMTextNode(node5);
            }
            node2 = node4;
            nodeType = s2;
        } else {
            z = 7 == nodeType ? node.getNodeName().toLowerCase().equals("xml") : false;
        }
        if (!z) {
            int addNode = addNode(node3, this.m_last_parent, this.m_last_kid, nodeType);
            this.m_last_kid = addNode;
            if (1 == nodeType) {
                NamedNodeMap attributes = node3.getAttributes();
                int length = attributes == null ? 0 : attributes.getLength();
                int i5 = -1;
                if (length > 0) {
                    for (int i6 = 0; i6 < length; i6++) {
                        i5 = addNode(attributes.item(i6), addNode, i5, -1);
                        this.m_firstch.setElementAt(-1, i5);
                        if (!this.m_processedFirstElement && "xmlns:xml".equals(attributes.item(i6).getNodeName())) {
                            this.m_processedFirstElement = true;
                        }
                    }
                }
                if (!this.m_processedFirstElement) {
                    i5 = addNode(new DOM2DTMdefaultNamespaceDeclarationNode((Element) node3, "xml", "http://www.w3.org/XML/1998/namespace", makeNodeHandle((i5 == -1 ? addNode : i5) + 1)), addNode, i5, -1);
                    this.m_firstch.setElementAt(-1, i5);
                    this.m_processedFirstElement = true;
                }
                if (i5 != -1) {
                    this.m_nextsib.setElementAt(-1, i5);
                }
            }
        }
        if (3 == nodeType || 4 == nodeType) {
            node3 = node2;
        }
        this.m_pos = node3;
        return true;
    }

    public void setIncrementalSAXSource(IncrementalSAXSource incrementalSAXSource) {
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public void setProperty(String str, Object obj) {
    }
}
