package com.sun.org.apache.xalan.internal.lib.sql;

import com.google.android.material.motion.MotionUtils;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
import com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
import com.sun.org.apache.xml.internal.dtm.DTMManager;
import com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators;
import com.sun.org.apache.xml.internal.utils.FastStringBuffer;
import com.sun.org.apache.xml.internal.utils.StringBufferPool;
import com.sun.org.apache.xml.internal.utils.SuballocatedIntVector;
import com.sun.org.apache.xml.internal.utils.XMLString;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import javax.xml.transform.SourceLocator;
import org.apache.commons.collections4.IteratorUtils;
import org.w3c.dom.Node;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.ext.DeclHandler;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes10.dex */
public class DTMDocument extends DTMDefaultBaseIterators {
    protected static final String S_ATTRIB_NOT_SUPPORTED = "Not Supported";
    protected static final String S_DOCUMENT = "#root";
    protected static final String S_ELEMENT_NODE = "#element";
    protected static final String S_ISFALSE = "false";
    protected static final String S_ISTRUE = "true";
    protected static final String S_NAMESPACE = "http://xml.apache.org/xalan/SQLExtension";
    protected static final String S_TEXT_NODE = "#text";
    private boolean DEBUG;
    protected int m_DocumentIdx;
    protected int m_Document_TypeID;
    protected ObjectArray m_ObjectArray;
    protected int m_TextNode_TypeID;
    protected SuballocatedIntVector m_attribute;

    /* loaded from: classes10.dex */
    public interface CharacterNodeHandler {
        void characters(Node node) throws SAXException;
    }

    public DTMDocument(DTMManager dTMManager, int i) {
        super(dTMManager, null, i, null, dTMManager.getXMLStringFactory(), true);
        this.DEBUG = false;
        this.m_Document_TypeID = 0;
        this.m_TextNode_TypeID = 0;
        this.m_ObjectArray = new ObjectArray();
        this.m_attribute = new SuballocatedIntVector(512);
    }

    private int allocateNodeObject(Object obj) {
        this.m_size++;
        return this.m_ObjectArray.append(obj);
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

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public int _exptype(int i) {
        if (this.DEBUG) {
            System.out.println("_exptype(" + i + MotionUtils.f31762d);
        }
        return super._exptype(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public int _firstch(int i) {
        if (this.DEBUG) {
            System.out.println("_firstch(" + i + MotionUtils.f31762d);
        }
        return super._firstch(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public int _level(int i) {
        if (this.DEBUG) {
            System.out.println("_level(" + i + MotionUtils.f31762d);
        }
        return super._level(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public int _nextsib(int i) {
        if (this.DEBUG) {
            System.out.println("_nextSib(" + i + MotionUtils.f31762d);
        }
        return super._nextsib(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public int _parent(int i) {
        if (this.DEBUG) {
            System.out.println("_parent(" + i + MotionUtils.f31762d);
        }
        return super._parent(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public int _prevsib(int i) {
        if (this.DEBUG) {
            System.out.println("_prevsib(" + i + MotionUtils.f31762d);
        }
        return super._prevsib(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public short _type(int i) {
        if (this.DEBUG) {
            System.out.println("_type(" + i + MotionUtils.f31762d);
        }
        return super._type(i);
    }

    public int addAttributeToNode(Object obj, int i, int i2) {
        int allocateNodeObject;
        int i3 = -1;
        try {
            allocateNodeObject = allocateNodeObject(obj);
        } catch (Exception e) {
            e = e;
        }
        try {
            this.m_attribute.setElementAt(-1, allocateNodeObject);
            this.m_exptype.setElementAt(i, allocateNodeObject);
            this.m_nextsib.setElementAt(-1, allocateNodeObject);
            this.m_prevsib.setElementAt(-1, allocateNodeObject);
            this.m_parent.setElementAt(i2, allocateNodeObject);
            this.m_firstch.setElementAt(-1, allocateNodeObject);
            if (this.m_attribute.elementAt(i2) != -1) {
                int elementAt = this.m_attribute.elementAt(i2);
                this.m_nextsib.setElementAt(elementAt, allocateNodeObject);
                this.m_prevsib.setElementAt(allocateNodeObject, elementAt);
            }
            this.m_attribute.setElementAt(allocateNodeObject, i2);
            return allocateNodeObject;
        } catch (Exception e2) {
            e = e2;
            i3 = allocateNodeObject;
            error("Error in addAttributeToNode: " + e.getMessage());
            return i3;
        }
    }

    public int addElement(int i, int i2, int i3, int i4) {
        int i5;
        Exception e;
        try {
            i5 = allocateNodeObject(S_ELEMENT_NODE);
        } catch (Exception e2) {
            i5 = -1;
            e = e2;
        }
        try {
            this.m_exptype.setElementAt(i2, i5);
            this.m_nextsib.setElementAt(-1, i5);
            this.m_prevsib.setElementAt(i4, i5);
            this.m_parent.setElementAt(i3, i5);
            this.m_firstch.setElementAt(-1, i5);
            this.m_attribute.setElementAt(-1, i5);
            if (i4 != -1) {
                if (this.m_nextsib.elementAt(i4) != -1) {
                    SuballocatedIntVector suballocatedIntVector = this.m_nextsib;
                    suballocatedIntVector.setElementAt(suballocatedIntVector.elementAt(i4), i5);
                }
                this.m_nextsib.setElementAt(i5, i4);
            }
            if (i3 != -1 && this.m_prevsib.elementAt(i5) == -1) {
                this.m_firstch.setElementAt(i5, i3);
            }
        } catch (Exception e3) {
            e = e3;
            error("Error in addElement: " + e.getMessage());
            return i5;
        }
        return i5;
    }

    public int addElementWithData(Object obj, int i, int i2, int i3, int i4) {
        int addElement = addElement(i, i2, i3, i4);
        int allocateNodeObject = allocateNodeObject(obj);
        this.m_firstch.setElementAt(allocateNodeObject, addElement);
        this.m_exptype.setElementAt(this.m_TextNode_TypeID, allocateNodeObject);
        this.m_parent.setElementAt(addElement, allocateNodeObject);
        this.m_prevsib.setElementAt(-1, allocateNodeObject);
        this.m_nextsib.setElementAt(-1, allocateNodeObject);
        this.m_attribute.setElementAt(-1, allocateNodeObject);
        this.m_firstch.setElementAt(-1, allocateNodeObject);
        return addElement;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public void appendChild(int i, boolean z, boolean z2) {
        if (this.DEBUG) {
            System.out.println("appendChild(" + i + "," + z + "," + z2 + MotionUtils.f31762d);
        }
        super.appendChild(i, z, z2);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public void appendTextChild(String str) {
        if (this.DEBUG) {
            System.out.println("appendTextChild(" + str + MotionUtils.f31762d);
        }
        super.appendTextChild(str);
    }

    public void cloneAttributeFromNode(int i, int i2) {
        try {
            if (this.m_attribute.elementAt(i) != -1) {
                error("Cloneing Attributes, where from Node already had addtibures assigned");
            }
            SuballocatedIntVector suballocatedIntVector = this.m_attribute;
            suballocatedIntVector.setElementAt(suballocatedIntVector.elementAt(i2), i);
        } catch (Exception unused) {
            error("Cloning attributes");
        }
    }

    public void createExpandedNameTable() {
        this.m_Document_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, S_DOCUMENT, 9);
        this.m_TextNode_TypeID = this.m_expandedNameTable.getExpandedTypeID(S_NAMESPACE, "#text", 3);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public void declareNamespaceInContext(int i, int i2) {
        if (this.DEBUG) {
            System.out.println("declareNamespaceContext(" + i + "," + i2 + MotionUtils.f31762d);
        }
        super.declareNamespaceInContext(i, i2);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public void dispatchCharactersEvents(int i, ContentHandler contentHandler, boolean z) throws SAXException {
        if (this.DEBUG) {
            System.out.println("dispatchCharacterEvents(" + i + "," + contentHandler + "," + z + MotionUtils.f31762d);
        }
        if (z) {
            getStringValue(i).fixWhiteSpace(true, true, false).dispatchCharactersEvents(contentHandler);
        } else {
            getNodeType(i);
            dispatchNodeData(getNode(i), contentHandler, 0);
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public void dispatchToEvents(int i, ContentHandler contentHandler) throws SAXException {
        if (this.DEBUG) {
            System.out.println("dispathcToEvents(" + i + "," + contentHandler + MotionUtils.f31762d);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x011a. Please report as an issue. */
    public void dumpDTM() {
        try {
            File file = new File("DTMDump.txt");
            System.err.println("Dumping... " + file.getAbsolutePath());
            PrintStream printStream = new PrintStream(new FileOutputStream(file));
            do {
            } while (nextNode());
            int i = this.m_size;
            printStream.println("Total nodes: " + i);
            for (int i2 = 0; i2 < i; i2++) {
                printStream.println("=========== " + i2 + " ===========");
                StringBuilder sb = new StringBuilder();
                sb.append("NodeName: ");
                sb.append(getNodeName(makeNodeHandle(i2)));
                printStream.println(sb.toString());
                printStream.println("NodeNameX: " + getNodeNameX(makeNodeHandle(i2)));
                printStream.println("LocalName: " + getLocalName(makeNodeHandle(i2)));
                printStream.println("NamespaceURI: " + getNamespaceURI(makeNodeHandle(i2)));
                printStream.println("Prefix: " + getPrefix(makeNodeHandle(i2)));
                printStream.println("Expanded Type ID: " + Integer.toHexString(getExpandedTypeID(makeNodeHandle(i2))));
                String str = "DOCUMENT_NODE";
                switch (getNodeType(makeNodeHandle(i2))) {
                    case -1:
                        str = "NULL";
                        break;
                    case 0:
                    default:
                        str = "Unknown!";
                        break;
                    case 1:
                        str = "ELEMENT_NODE";
                        break;
                    case 2:
                        str = "ATTRIBUTE_NODE";
                        break;
                    case 3:
                        str = "TEXT_NODE";
                        break;
                    case 4:
                        str = "CDATA_SECTION_NODE";
                        break;
                    case 5:
                        str = "ENTITY_REFERENCE_NODE";
                        break;
                    case 6:
                        str = "ENTITY_NODE";
                        break;
                    case 7:
                        str = "PROCESSING_INSTRUCTION_NODE";
                        break;
                    case 8:
                        str = "COMMENT_NODE";
                        break;
                    case 9:
                    case 10:
                        break;
                    case 11:
                        str = "DOCUMENT_FRAGMENT_NODE";
                        break;
                    case 12:
                        str = "NOTATION_NODE";
                        break;
                    case 13:
                        str = "NAMESPACE_NODE";
                        break;
                }
                printStream.println("Type: " + str);
                int _firstch = _firstch(i2);
                if (-1 == _firstch) {
                    printStream.println("First child: DTM.NULL");
                } else if (-2 == _firstch) {
                    printStream.println("First child: NOTPROCESSED");
                } else {
                    printStream.println("First child: " + _firstch);
                }
                int _prevsib = _prevsib(i2);
                if (-1 == _prevsib) {
                    printStream.println("Prev sibling: DTM.NULL");
                } else if (-2 == _prevsib) {
                    printStream.println("Prev sibling: NOTPROCESSED");
                } else {
                    printStream.println("Prev sibling: " + _prevsib);
                }
                int _nextsib = _nextsib(i2);
                if (-1 == _nextsib) {
                    printStream.println("Next sibling: DTM.NULL");
                } else if (-2 == _nextsib) {
                    printStream.println("Next sibling: NOTPROCESSED");
                } else {
                    printStream.println("Next sibling: " + _nextsib);
                }
                int _parent = _parent(i2);
                if (-1 == _parent) {
                    printStream.println("Parent: DTM.NULL");
                } else if (-2 == _parent) {
                    printStream.println("Parent: NOTPROCESSED");
                } else {
                    printStream.println("Parent: " + _parent);
                }
                printStream.println("Level: " + _level(i2));
                printStream.println("Node Value: " + getNodeValue(i2));
                printStream.println("String Value: " + getStringValue(i2));
                printStream.println("First Attribute Node: " + this.m_attribute.elementAt(i2));
            }
        } catch (IOException e) {
            e.printStackTrace(System.err);
            throw new RuntimeException(e.getMessage());
        }
    }

    public void ensureSize(int i) {
        if (this.DEBUG) {
            System.out.println("ensureSize(" + i + MotionUtils.f31762d);
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public void ensureSizeOfIndex(int i, int i2) {
        if (this.DEBUG) {
            System.out.println("ensureSizeOfIndex(" + i + "," + i2 + MotionUtils.f31762d);
        }
        super.ensureSizeOfIndex(i, i2);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public void error(String str) {
        if (this.DEBUG) {
            System.out.println("error(" + str + MotionUtils.f31762d);
        }
        super.error(str);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public int findGTE(int[] iArr, int i, int i2, int i3) {
        if (this.DEBUG) {
            System.out.println("findGTE(" + iArr + "," + i + "," + i2 + MotionUtils.f31762d);
        }
        return super.findGTE(iArr, i, i2, i3);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public int findInSortedSuballocatedIntVector(SuballocatedIntVector suballocatedIntVector, int i) {
        if (this.DEBUG) {
            System.out.println("findInSortedSubAlloctedVector(" + suballocatedIntVector + "," + i + MotionUtils.f31762d);
        }
        return super.findInSortedSuballocatedIntVector(suballocatedIntVector, i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public SuballocatedIntVector findNamespaceContext(int i) {
        if (this.DEBUG) {
            System.out.println("SuballocatedIntVector(" + i + MotionUtils.f31762d);
        }
        return super.findNamespaceContext(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getAttributeNode(int i, String str, String str2) {
        if (!this.DEBUG) {
            return -1;
        }
        System.out.println("getAttributeNode(" + i + "," + str + "," + str2 + MotionUtils.f31762d);
        return -1;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators, com.sun.org.apache.xml.internal.dtm.DTM
    public DTMAxisIterator getAxisIterator(int i) {
        if (this.DEBUG) {
            System.out.println("getAxisIterator(" + i + MotionUtils.f31762d);
        }
        return super.getAxisIterator(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers, com.sun.org.apache.xml.internal.dtm.DTM
    public DTMAxisTraverser getAxisTraverser(int i) {
        if (this.DEBUG) {
            System.out.println("getAxixTraverser(" + i + MotionUtils.f31762d);
        }
        return super.getAxisTraverser(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public ContentHandler getContentHandler() {
        if (!this.DEBUG) {
            return null;
        }
        System.out.println("getContentHandler()");
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public DTDHandler getDTDHandler() {
        if (!this.DEBUG) {
            return null;
        }
        System.out.println("getDTDHandler()");
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public DeclHandler getDeclHandler() {
        if (!this.DEBUG) {
            return null;
        }
        System.out.println("getDeclHandler()");
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getDocument() {
        if (this.DEBUG) {
            System.out.println("getDocument()");
        }
        return super.getDocument();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public boolean getDocumentAllDeclarationsProcessed() {
        if (this.DEBUG) {
            System.out.println("getDocAllDeclProc()");
        }
        return super.getDocumentAllDeclarationsProcessed();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getDocumentBaseURI() {
        if (this.DEBUG) {
            System.out.println("getDocBaseURI()");
        }
        return super.getDocumentBaseURI();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getDocumentEncoding(int i) {
        if (this.DEBUG) {
            System.out.println("getDocumentEncoding(" + i + MotionUtils.f31762d);
        }
        return super.getDocumentEncoding(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getDocumentStandalone(int i) {
        if (this.DEBUG) {
            System.out.println("getDOcStandAlone(" + i + MotionUtils.f31762d);
        }
        return super.getDocumentStandalone(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getDocumentSystemIdentifier(int i) {
        if (this.DEBUG) {
            System.out.println("getDocSysID(" + i + MotionUtils.f31762d);
        }
        return super.getDocumentSystemIdentifier(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getDocumentTypeDeclarationPublicIdentifier() {
        if (!this.DEBUG) {
            return "";
        }
        System.out.println("get_DTD_PubId()");
        return "";
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getDocumentTypeDeclarationSystemIdentifier() {
        if (!this.DEBUG) {
            return null;
        }
        System.out.println("get_DTD-SID()");
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getDocumentVersion(int i) {
        if (this.DEBUG) {
            System.out.println("getDocVer(" + i + MotionUtils.f31762d);
        }
        return super.getDocumentVersion(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getElementById(String str) {
        if (!this.DEBUG) {
            return -1;
        }
        System.out.println("getElementByID(" + str + MotionUtils.f31762d);
        return -1;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public EntityResolver getEntityResolver() {
        if (!this.DEBUG) {
            return null;
        }
        System.out.println("getEntityResolver()");
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public ErrorHandler getErrorHandler() {
        if (!this.DEBUG) {
            return null;
        }
        System.out.println("getErrorHandler()");
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getExpandedTypeID(int i) {
        if (this.DEBUG) {
            System.out.println("getExpandedTypeID(" + i + MotionUtils.f31762d);
        }
        return super.getExpandedTypeID(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getFirstAttribute(int i) {
        if (this.DEBUG) {
            System.out.println("getFirstAttribute(" + i + MotionUtils.f31762d);
        }
        int makeNodeIdentity = makeNodeIdentity(i);
        if (makeNodeIdentity != -1) {
            return makeNodeHandle(this.m_attribute.elementAt(makeNodeIdentity));
        }
        return -1;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getFirstChild(int i) {
        if (this.DEBUG) {
            System.out.println("getFirstChild(" + i + MotionUtils.f31762d);
        }
        return super.getFirstChild(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getFirstNamespaceNode(int i, boolean z) {
        if (this.DEBUG) {
            System.out.println("getFirstNamespaceNode()");
        }
        return super.getFirstNamespaceNode(i, z);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getLastChild(int i) {
        if (this.DEBUG) {
            System.out.println("getLastChild(" + i + MotionUtils.f31762d);
        }
        return super.getLastChild(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public short getLevel(int i) {
        if (this.DEBUG) {
            System.out.println("getLevel(" + i + MotionUtils.f31762d);
        }
        return super.getLevel(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public LexicalHandler getLexicalHandler() {
        if (!this.DEBUG) {
            return null;
        }
        System.out.println("getLexicalHandler()");
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getLocalName(int i) {
        int expandedTypeID = getExpandedTypeID(i);
        if (this.DEBUG) {
            this.DEBUG = false;
            System.out.print("getLocalName(" + i + ") -> ");
            System.out.println(RemoveAudioAction.f58149k + getLocalNameFromExpandedNameID(expandedTypeID));
            this.DEBUG = true;
        }
        return getLocalNameFromExpandedNameID(expandedTypeID);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getLocalNameFromExpandedNameID(int i) {
        if (this.DEBUG) {
            this.DEBUG = false;
            System.out.print("getLocalNameFromExpandedNameID(" + i + MotionUtils.f31762d);
            System.out.println(RemoveAudioAction.f58149k + super.getLocalNameFromExpandedNameID(i));
            this.DEBUG = true;
        }
        return super.getLocalNameFromExpandedNameID(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getNamespaceFromExpandedNameID(int i) {
        if (this.DEBUG) {
            this.DEBUG = false;
            System.out.print("getNamespaceFromExpandedNameID(" + i + MotionUtils.f31762d);
            System.out.println(RemoveAudioAction.f58149k + super.getNamespaceFromExpandedNameID(i));
            this.DEBUG = true;
        }
        return super.getNamespaceFromExpandedNameID(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public int getNamespaceType(int i) {
        if (this.DEBUG) {
            System.out.println("getNamespaceType(" + i + MotionUtils.f31762d);
        }
        return super.getNamespaceType(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getNamespaceURI(int i) {
        if (!this.DEBUG) {
            return "";
        }
        System.out.println("getNamespaceURI(" + i + MotionUtils.f31762d);
        return "";
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getNextAttribute(int i) {
        int makeNodeIdentity = makeNodeIdentity(i);
        if (this.DEBUG) {
            System.out.println("getNextAttribute(" + makeNodeIdentity + MotionUtils.f31762d);
        }
        if (makeNodeIdentity != -1) {
            return makeNodeHandle(this.m_nextsib.elementAt(makeNodeIdentity));
        }
        return -1;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getNextNamespaceNode(int i, int i2, boolean z) {
        if (this.DEBUG) {
            System.out.println("getNextNamesapceNode(" + i + "," + i2 + "," + z + MotionUtils.f31762d);
        }
        return super.getNextNamespaceNode(i, i2, z);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public int getNextNodeIdentity(int i) {
        if (!this.DEBUG) {
            return -1;
        }
        System.out.println("getNextNodeIdenty(" + i + MotionUtils.f31762d);
        return -1;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getNextSibling(int i) {
        if (this.DEBUG) {
            System.out.println("getNextSibling(" + i + MotionUtils.f31762d);
        }
        return super.getNextSibling(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public Node getNode(int i) {
        if (this.DEBUG) {
            System.out.println("getNode(" + i + MotionUtils.f31762d);
        }
        return super.getNode(i);
    }

    public void getNodeData(int i, FastStringBuffer fastStringBuffer) {
        int _firstch = _firstch(i);
        while (_firstch != -1) {
            Object at = this.m_ObjectArray.getAt(_firstch);
            if (at == S_ELEMENT_NODE) {
                getNodeData(_firstch, fastStringBuffer);
            } else if (at != null) {
                fastStringBuffer.append(at.toString());
            }
            _firstch = _nextsib(_firstch);
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getNodeName(int i) {
        int expandedTypeID = getExpandedTypeID(i);
        if (this.DEBUG) {
            this.DEBUG = false;
            System.out.print("getLocalName(" + i + ") -> ");
            System.out.println(RemoveAudioAction.f58149k + getLocalNameFromExpandedNameID(expandedTypeID));
            this.DEBUG = true;
        }
        return getLocalNameFromExpandedNameID(expandedTypeID);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getNodeNameX(int i) {
        if (this.DEBUG) {
            System.out.println("getNodeNameX(" + i + MotionUtils.f31762d);
        }
        return getNodeName(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public short getNodeType(int i) {
        if (this.DEBUG) {
            this.DEBUG = false;
            System.out.print("getNodeType(" + i + ") ");
            String localNameFromExpandedNameID = getLocalNameFromExpandedNameID(getExpandedTypeID(i));
            System.out.println(".. Node name [" + localNameFromExpandedNameID + IteratorUtils.f104924b + IteratorUtils.f104923a + ((int) getNodeType(i)) + IteratorUtils.f104924b);
            this.DEBUG = true;
        }
        return super.getNodeType(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xalan.internal.lib.sql.DTMDocument] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.sun.org.apache.xalan.internal.lib.sql.DTMDocument] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.String] */
    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getNodeValue(int i) {
        if (this.DEBUG) {
            System.out.println("getNodeValue(" + i + MotionUtils.f31762d);
        }
        try {
            Object at = this.m_ObjectArray.getAt(makeNodeIdentity(i));
            if (at == null || at == S_ELEMENT_NODE) {
                return "";
            }
            this = at.toString();
            return this;
        } catch (Exception unused) {
            this.error("Getting String Value");
            return null;
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public int getNumberOfNodes() {
        if (this.DEBUG) {
            System.out.println("getNumberOfNodes()");
        }
        return this.m_size;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getOwnerDocument(int i) {
        if (this.DEBUG) {
            System.out.println("getOwnerDoc(" + i + MotionUtils.f31762d);
        }
        return super.getOwnerDocument(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getParent(int i) {
        if (this.DEBUG) {
            System.out.println("getParent(" + i + MotionUtils.f31762d);
        }
        return super.getParent(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getPrefix(int i) {
        if (!this.DEBUG) {
            return "";
        }
        System.out.println("getPrefix(" + i + MotionUtils.f31762d);
        return "";
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getPreviousSibling(int i) {
        if (this.DEBUG) {
            System.out.println("getPrevSib(" + i + MotionUtils.f31762d);
        }
        return super.getPreviousSibling(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public boolean getShouldStripWhitespace() {
        if (this.DEBUG) {
            System.out.println("getShouldStripWS()");
        }
        return super.getShouldStripWhitespace();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public SourceLocator getSourceLocatorFor(int i) {
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public XMLString getStringValue(int i) {
        int makeNodeIdentity = makeNodeIdentity(i);
        if (this.DEBUG) {
            System.out.println("getStringValue(" + makeNodeIdentity + MotionUtils.f31762d);
        }
        Object at = this.m_ObjectArray.getAt(makeNodeIdentity);
        if (at != S_ELEMENT_NODE) {
            return at != null ? this.m_xstrf.newstr(at.toString()) : this.m_xstrf.emptystr();
        }
        FastStringBuffer fastStringBuffer = StringBufferPool.get();
        try {
            getNodeData(makeNodeIdentity, fastStringBuffer);
            String fastStringBuffer2 = fastStringBuffer.length() > 0 ? fastStringBuffer.toString() : "";
            StringBufferPool.free(fastStringBuffer);
            return this.m_xstrf.newstr(fastStringBuffer2);
        } catch (Throwable th) {
            StringBufferPool.free(fastStringBuffer);
            throw th;
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public char[] getStringValueChunk(int i, int i2, int[] iArr) {
        if (this.DEBUG) {
            System.out.println("getStringChunkValue(" + i + "," + i2 + MotionUtils.f31762d);
        }
        return super.getStringValueChunk(i, i2, iArr);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getStringValueChunkCount(int i) {
        if (this.DEBUG) {
            System.out.println("getStringChunkCount(" + i + MotionUtils.f31762d);
        }
        return super.getStringValueChunkCount(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators, com.sun.org.apache.xml.internal.dtm.DTM
    public DTMAxisIterator getTypedAxisIterator(int i, int i2) {
        if (this.DEBUG) {
            System.out.println("getTypedAxisIterator(" + i + "," + i2 + MotionUtils.f31762d);
        }
        return super.getTypedAxisIterator(i, i2);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getUnparsedEntityURI(String str) {
        if (!this.DEBUG) {
            return "";
        }
        System.out.println("getUnparsedEntityURI(" + str + MotionUtils.f31762d);
        return "";
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public boolean hasChildNodes(int i) {
        if (this.DEBUG) {
            System.out.println("hasChildNodes(" + i + MotionUtils.f31762d);
        }
        return super.hasChildNodes(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public void indexNode(int i, int i2) {
        if (this.DEBUG) {
            System.out.println("indexNode(" + i + "," + i2 + MotionUtils.f31762d);
        }
        super.indexNode(i, i2);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public boolean isAttributeSpecified(int i) {
        if (!this.DEBUG) {
            return false;
        }
        System.out.println("isAttributeSpecified(" + i + MotionUtils.f31762d);
        return false;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public boolean isCharacterElementContentWhitespace(int i) {
        if (this.DEBUG) {
            System.out.println("isCharacterElementContentWhitespace(" + i + MotionUtils.f31762d);
        }
        return super.isCharacterElementContentWhitespace(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public boolean isDocumentAllDeclarationsProcessed(int i) {
        if (this.DEBUG) {
            System.out.println("isDocumentAllDeclProc(" + i + MotionUtils.f31762d);
        }
        return super.isDocumentAllDeclarationsProcessed(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public boolean isNodeAfter(int i, int i2) {
        if (this.DEBUG) {
            System.out.println("isNodeAfter(" + i + "," + i2 + MotionUtils.f31762d);
        }
        return super.isNodeAfter(i, i2);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public boolean isSupported(String str, String str2) {
        if (this.DEBUG) {
            System.out.println("isSupported(" + str + "," + str2 + MotionUtils.f31762d);
        }
        return super.isSupported(str, str2);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public boolean needsTwoThreads() {
        if (!this.DEBUG) {
            return false;
        }
        System.out.println("needsTwoThreads()");
        return false;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public boolean nextNode() {
        if (!this.DEBUG) {
            return false;
        }
        System.out.println("nextNode()");
        return false;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public void popShouldStripWhitespace() {
        if (this.DEBUG) {
            System.out.println("popShouldStripWS()");
        }
        super.popShouldStripWhitespace();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public void pushShouldStripWhitespace(boolean z) {
        if (this.DEBUG) {
            System.out.println("push_ShouldStripWS(" + z + MotionUtils.f31762d);
        }
        super.pushShouldStripWhitespace(z);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public void setDocumentBaseURI(String str) {
        if (this.DEBUG) {
            System.out.println("setDocBaseURI()");
        }
        super.setDocumentBaseURI(str);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public void setFeature(String str, boolean z) {
        if (this.DEBUG) {
            System.out.println("setFeature(" + str + "," + z + MotionUtils.f31762d);
        }
        super.setFeature(str, z);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public void setProperty(String str, Object obj) {
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public void setShouldStripWhitespace(boolean z) {
        if (this.DEBUG) {
            System.out.println("set_ShouldStripWS(" + z + MotionUtils.f31762d);
        }
        super.setShouldStripWhitespace(z);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public boolean supportsPreStripping() {
        if (this.DEBUG) {
            System.out.println("supportsPreStripping()");
        }
        return super.supportsPreStripping();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public int getExpandedTypeID(String str, String str2, int i) {
        if (this.DEBUG) {
            System.out.println("getExpandedTypeID()");
        }
        return super.getExpandedTypeID(str, str2, i);
    }
}
