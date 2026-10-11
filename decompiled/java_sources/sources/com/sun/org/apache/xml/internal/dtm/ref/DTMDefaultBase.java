package com.sun.org.apache.xml.internal.dtm.ref;

import com.onyx.galaxy.note.utils.LogcatGenerator;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
import com.sun.org.apache.xml.internal.dtm.DTMException;
import com.sun.org.apache.xml.internal.dtm.DTMManager;
import com.sun.org.apache.xml.internal.dtm.DTMWSFilter;
import com.sun.org.apache.xml.internal.res.XMLMessages;
import com.sun.org.apache.xml.internal.utils.BoolStack;
import com.sun.org.apache.xml.internal.utils.SuballocatedIntVector;
import com.sun.org.apache.xml.internal.utils.XMLString;
import com.sun.org.apache.xml.internal.utils.XMLStringFactory;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.Vector;
import javax.xml.transform.Source;
import org.apache.commons.collections4.IteratorUtils;
import org.w3c.dom.Node;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public abstract class DTMDefaultBase implements DTM {
    public static final int DEFAULT_BLOCKSIZE = 512;
    public static final int DEFAULT_NUMBLOCKS = 32;
    public static final int DEFAULT_NUMBLOCKS_SMALL = 4;
    static final boolean JJK_DEBUG = false;
    protected static final int NOTPROCESSED = -2;
    public static final int ROOTNODE = 0;
    protected String m_documentBaseURI;
    protected SuballocatedIntVector m_dtmIdent;
    protected int[][][] m_elemIndexes;
    protected ExpandedNameTable m_expandedNameTable;
    protected SuballocatedIntVector m_exptype;
    protected SuballocatedIntVector m_firstch;
    protected boolean m_indexing;
    public DTMManager m_mgr;
    protected DTMManagerDefault m_mgrDefault;
    protected SuballocatedIntVector m_namespaceDeclSetElements;
    protected Vector m_namespaceDeclSets;
    private Vector m_namespaceLists;
    protected SuballocatedIntVector m_nextsib;
    protected SuballocatedIntVector m_parent;
    protected SuballocatedIntVector m_prevsib;
    protected boolean m_shouldStripWS;
    protected BoolStack m_shouldStripWhitespaceStack;
    protected int m_size;
    protected DTMAxisTraverser[] m_traversers;
    protected DTMWSFilter m_wsfilter;
    protected XMLStringFactory m_xstrf;

    public DTMDefaultBase(DTMManager dTMManager, Source source, int i, DTMWSFilter dTMWSFilter, XMLStringFactory xMLStringFactory, boolean z) {
        this(dTMManager, source, i, dTMWSFilter, xMLStringFactory, z, 512, true, false);
    }

    public int _exptype(int i) {
        if (i == -1) {
            return -1;
        }
        while (i >= this.m_size) {
            if (!nextNode() && i >= this.m_size) {
                return -1;
            }
        }
        return this.m_exptype.elementAt(i);
    }

    public int _firstch(int i) {
        int elementAt = i >= this.m_size ? -2 : this.m_firstch.elementAt(i);
        while (elementAt == -2) {
            boolean nextNode = nextNode();
            if (i >= this.m_size && !nextNode) {
                return -1;
            }
            int elementAt2 = this.m_firstch.elementAt(i);
            if (elementAt2 == -2 && !nextNode) {
                return -1;
            }
            elementAt = elementAt2;
        }
        return elementAt;
    }

    public int _level(int i) {
        while (i >= this.m_size) {
            if (!nextNode() && i >= this.m_size) {
                return -1;
            }
        }
        int i2 = 0;
        while (true) {
            i = _parent(i);
            if (-1 == i) {
                return i2;
            }
            i2++;
        }
    }

    public int _nextsib(int i) {
        int elementAt = i >= this.m_size ? -2 : this.m_nextsib.elementAt(i);
        while (elementAt == -2) {
            boolean nextNode = nextNode();
            if (i >= this.m_size && !nextNode) {
                return -1;
            }
            int elementAt2 = this.m_nextsib.elementAt(i);
            if (elementAt2 == -2 && !nextNode) {
                return -1;
            }
            elementAt = elementAt2;
        }
        return elementAt;
    }

    public int _parent(int i) {
        int i2;
        if (i < this.m_size) {
            return this.m_parent.elementAt(i);
        }
        do {
            boolean nextNode = nextNode();
            i2 = this.m_size;
            if (i >= i2 && !nextNode) {
                return -1;
            }
        } while (i >= i2);
        return this.m_parent.elementAt(i);
    }

    public int _prevsib(int i) {
        int i2;
        if (i < this.m_size) {
            return this.m_prevsib.elementAt(i);
        }
        do {
            boolean nextNode = nextNode();
            i2 = this.m_size;
            if (i >= i2 && !nextNode) {
                return -1;
            }
        } while (i >= i2);
        return this.m_prevsib.elementAt(i);
    }

    public short _type(int i) {
        int _exptype = _exptype(i);
        if (-1 != _exptype) {
            return this.m_expandedNameTable.getType(_exptype);
        }
        return (short) -1;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public void appendChild(int i, boolean z, boolean z2) {
        error(XMLMessages.createXMLMessage("ER_METHOD_NOT_SUPPORTED", null));
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public void appendTextChild(String str) {
        error(XMLMessages.createXMLMessage("ER_METHOD_NOT_SUPPORTED", null));
    }

    public void declareNamespaceInContext(int i, int i2) {
        SuballocatedIntVector suballocatedIntVector;
        if (this.m_namespaceDeclSets == null) {
            SuballocatedIntVector suballocatedIntVector2 = new SuballocatedIntVector(32);
            this.m_namespaceDeclSetElements = suballocatedIntVector2;
            suballocatedIntVector2.addElement(i);
            this.m_namespaceDeclSets = new Vector();
            suballocatedIntVector = new SuballocatedIntVector(32);
            this.m_namespaceDeclSets.addElement(suballocatedIntVector);
        } else {
            int size = this.m_namespaceDeclSetElements.size() - 1;
            suballocatedIntVector = (size < 0 || i != this.m_namespaceDeclSetElements.elementAt(size)) ? null : (SuballocatedIntVector) this.m_namespaceDeclSets.elementAt(size);
        }
        if (suballocatedIntVector == null) {
            this.m_namespaceDeclSetElements.addElement(i);
            SuballocatedIntVector findNamespaceContext = findNamespaceContext(_parent(i));
            if (findNamespaceContext != null) {
                int size2 = findNamespaceContext.size();
                SuballocatedIntVector suballocatedIntVector3 = new SuballocatedIntVector(Math.max(Math.min(size2 + 16, 2048), 32));
                for (int i3 = 0; i3 < size2; i3++) {
                    suballocatedIntVector3.addElement(findNamespaceContext.elementAt(i3));
                }
                suballocatedIntVector = suballocatedIntVector3;
            } else {
                suballocatedIntVector = new SuballocatedIntVector(32);
            }
            this.m_namespaceDeclSets.addElement(suballocatedIntVector);
        }
        int _exptype = _exptype(i2);
        for (int size3 = suballocatedIntVector.size() - 1; size3 >= 0; size3--) {
            if (_exptype == getExpandedTypeID(suballocatedIntVector.elementAt(size3))) {
                suballocatedIntVector.setElementAt(makeNodeHandle(i2), size3);
                return;
            }
        }
        suballocatedIntVector.addElement(makeNodeHandle(i2));
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public abstract void dispatchCharactersEvents(int i, ContentHandler contentHandler, boolean z) throws SAXException;

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public abstract void dispatchToEvents(int i, ContentHandler contentHandler) throws SAXException;

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public void documentRegistration() {
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public void documentRelease() {
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0125. Please report as an issue. */
    public void dumpDTM(OutputStream outputStream) {
        if (outputStream == null) {
            try {
                File file = new File("DTMDump" + hashCode() + LogcatGenerator.OUTPUT_FILE_TXT_EXTENSION);
                System.err.println("Dumping... " + file.getAbsolutePath());
                outputStream = new FileOutputStream(file);
            } catch (IOException e) {
                e.printStackTrace(System.err);
                throw new RuntimeException(e.getMessage());
            }
        }
        PrintStream printStream = new PrintStream(outputStream);
        do {
        } while (nextNode());
        int i = this.m_size;
        printStream.println("Total nodes: " + i);
        for (int i2 = 0; i2 < i; i2++) {
            int makeNodeHandle = makeNodeHandle(i2);
            printStream.println("=========== index=" + i2 + " handle=" + makeNodeHandle + " ===========");
            StringBuilder sb = new StringBuilder();
            sb.append("NodeName: ");
            sb.append(getNodeName(makeNodeHandle));
            printStream.println(sb.toString());
            printStream.println("NodeNameX: " + getNodeNameX(makeNodeHandle));
            printStream.println("LocalName: " + getLocalName(makeNodeHandle));
            printStream.println("NamespaceURI: " + getNamespaceURI(makeNodeHandle));
            printStream.println("Prefix: " + getPrefix(makeNodeHandle));
            printStream.println("Expanded Type ID: " + Integer.toHexString(_exptype(i2)));
            String str = "DOCUMENT_NODE";
            switch (_type(i2)) {
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
            if (this.m_prevsib != null) {
                int _prevsib = _prevsib(i2);
                if (-1 == _prevsib) {
                    printStream.println("Prev sibling: DTM.NULL");
                } else if (-2 == _prevsib) {
                    printStream.println("Prev sibling: NOTPROCESSED");
                } else {
                    printStream.println("Prev sibling: " + _prevsib);
                }
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
            printStream.println("Node Value: " + getNodeValue(makeNodeHandle));
            printStream.println("String Value: " + getStringValue(makeNodeHandle));
        }
    }

    public String dumpNode(int i) {
        String str;
        if (i == -1) {
            return "[null]";
        }
        switch (getNodeType(i)) {
            case -1:
                str = "null";
                break;
            case 0:
            default:
                str = "Unknown!";
                break;
            case 1:
                str = "ELEMENT";
                break;
            case 2:
                str = "ATTR";
                break;
            case 3:
                str = "TEXT";
                break;
            case 4:
                str = "CDATA";
                break;
            case 5:
                str = "ENT_REF";
                break;
            case 6:
                str = "ENTITY";
                break;
            case 7:
                str = "PI";
                break;
            case 8:
                str = "COMMENT";
                break;
            case 9:
                str = "DOC";
                break;
            case 10:
                str = "DOC_TYPE";
                break;
            case 11:
                str = "DOC_FRAG";
                break;
            case 12:
                str = "NOTATION";
                break;
            case 13:
                str = "NAMESPACE";
                break;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(IteratorUtils.f104923a + i + ": " + str + "(0x" + Integer.toHexString(getExpandedTypeID(i)) + ") " + getNodeNameX(i) + " {" + getNamespaceURI(i) + "}=\"" + getNodeValue(i) + "\"]");
        return stringBuffer.toString();
    }

    public void ensureSizeOfIndex(int i, int i2) {
        int[][][] iArr = this.m_elemIndexes;
        if (iArr == null) {
            this.m_elemIndexes = new int[i + 20][];
        } else if (iArr.length <= i) {
            int[][][] iArr2 = new int[i + 20][];
            this.m_elemIndexes = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        }
        int[][][] iArr3 = this.m_elemIndexes;
        int[][] iArr4 = iArr3[i];
        if (iArr4 == null) {
            iArr4 = new int[i2 + 100];
            iArr3[i] = iArr4;
        } else if (iArr4.length <= i2) {
            int[][] iArr5 = new int[i2 + 100];
            System.arraycopy(iArr4, 0, iArr5, 0, iArr4.length);
            this.m_elemIndexes[i] = iArr5;
            iArr4 = iArr5;
        }
        int[] iArr6 = iArr4[i2];
        if (iArr6 == null) {
            int[] iArr7 = new int[128];
            iArr4[i2] = iArr7;
            iArr7[0] = 1;
            return;
        }
        int length = iArr6.length;
        int i3 = iArr6[0];
        if (length <= i3 + 1) {
            int[] iArr8 = new int[i3 + 1024];
            System.arraycopy(iArr6, 0, iArr8, 0, iArr6.length);
            iArr4[i2] = iArr8;
        }
    }

    public void error(String str) {
        throw new DTMException(str);
    }

    public int findElementFromIndex(int i, int i2, int i3) {
        int[][] iArr;
        int[] iArr2;
        int findGTE;
        int[][][] iArr3 = this.m_elemIndexes;
        if (iArr3 == null || i >= iArr3.length || (iArr = iArr3[i]) == null || i2 >= iArr.length || (iArr2 = iArr[i2]) == null || (findGTE = findGTE(iArr2, 1, iArr2[0], i3)) <= -1) {
            return -2;
        }
        return iArr2[findGTE];
    }

    public int findGTE(int[] iArr, int i, int i2, int i3) {
        int i4 = (i2 - 1) + i;
        int i5 = i4;
        while (i <= i5) {
            int i6 = (i + i5) / 2;
            int i7 = iArr[i6];
            if (i7 > i3) {
                i5 = i6 - 1;
            } else {
                if (i7 >= i3) {
                    return i6;
                }
                i = i6 + 1;
            }
        }
        if (i > i4 || iArr[i] <= i3) {
            return -1;
        }
        return i;
    }

    public int findInSortedSuballocatedIntVector(SuballocatedIntVector suballocatedIntVector, int i) {
        int i2 = 0;
        if (suballocatedIntVector != null) {
            int size = suballocatedIntVector.size() - 1;
            int i3 = 0;
            while (i2 <= size) {
                i3 = (i2 + size) / 2;
                int elementAt = i - suballocatedIntVector.elementAt(i3);
                if (elementAt == 0) {
                    return i3;
                }
                if (elementAt < 0) {
                    size = i3 - 1;
                } else {
                    i2 = i3 + 1;
                }
            }
            if (i2 <= i3) {
                i2 = i3;
            }
        }
        return (-1) - i2;
    }

    public SuballocatedIntVector findNamespaceContext(int i) {
        int _firstch;
        SuballocatedIntVector suballocatedIntVector = this.m_namespaceDeclSetElements;
        if (suballocatedIntVector != null) {
            int findInSortedSuballocatedIntVector = findInSortedSuballocatedIntVector(suballocatedIntVector, i);
            if (findInSortedSuballocatedIntVector < 0) {
                if (findInSortedSuballocatedIntVector != -1) {
                    int i2 = ((-1) - findInSortedSuballocatedIntVector) - 1;
                    int elementAt = this.m_namespaceDeclSetElements.elementAt(i2);
                    int _parent = _parent(i);
                    if (i2 == 0 && elementAt < _parent) {
                        int documentRoot = getDocumentRoot(makeNodeHandle(i));
                        int makeNodeIdentity = makeNodeIdentity(documentRoot);
                        if (getNodeType(documentRoot) == 9 && (_firstch = _firstch(makeNodeIdentity)) != -1) {
                            makeNodeIdentity = _firstch;
                        }
                        if (elementAt == makeNodeIdentity) {
                            return (SuballocatedIntVector) this.m_namespaceDeclSets.elementAt(i2);
                        }
                    }
                    while (i2 >= 0 && _parent > 0) {
                        if (elementAt != _parent) {
                            if (elementAt >= _parent) {
                                if (i2 <= 0) {
                                    break;
                                }
                                i2--;
                                elementAt = this.m_namespaceDeclSetElements.elementAt(i2);
                            } else {
                                do {
                                    _parent = _parent(_parent);
                                } while (elementAt < _parent);
                            }
                        } else {
                            return (SuballocatedIntVector) this.m_namespaceDeclSets.elementAt(i2);
                        }
                    }
                } else {
                    return null;
                }
            } else {
                return (SuballocatedIntVector) this.m_namespaceDeclSets.elementAt(findInSortedSuballocatedIntVector);
            }
        }
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public abstract int getAttributeNode(int i, String str, String str2);

    public SuballocatedIntVector getDTMIDs() {
        if (this.m_mgr == null) {
            return null;
        }
        return this.m_dtmIdent;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public int getDocument() {
        return this.m_dtmIdent.elementAt(0);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public boolean getDocumentAllDeclarationsProcessed() {
        return true;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public String getDocumentBaseURI() {
        return this.m_documentBaseURI;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public String getDocumentEncoding(int i) {
        return "UTF-8";
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public int getDocumentRoot(int i) {
        return getDocument();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public String getDocumentStandalone(int i) {
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public String getDocumentSystemIdentifier(int i) {
        return this.m_documentBaseURI;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public abstract String getDocumentTypeDeclarationPublicIdentifier();

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public abstract String getDocumentTypeDeclarationSystemIdentifier();

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public String getDocumentVersion(int i) {
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public abstract int getElementById(String str);

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public int getExpandedTypeID(int i) {
        int makeNodeIdentity = makeNodeIdentity(i);
        if (makeNodeIdentity == -1) {
            return -1;
        }
        return _exptype(makeNodeIdentity);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public int getFirstAttribute(int i) {
        return makeNodeHandle(getFirstAttributeIdentity(makeNodeIdentity(i)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0015, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x001a, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0006, code lost:
    
        if (1 == _type(r4)) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0008, code lost:
    
        r4 = getNextNodeIdentity(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000c, code lost:
    
        if ((-1) == r4) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
    
        r0 = _type(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0013, code lost:
    
        if (r0 != 2) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
    
        if (13 == r0) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getFirstAttributeIdentity(int r4) {
        /*
            r3 = this;
            short r0 = r3._type(r4)
            r1 = 1
            r2 = -1
            if (r1 != r0) goto L1a
        L8:
            int r4 = r3.getNextNodeIdentity(r4)
            if (r2 == r4) goto L1a
            short r0 = r3._type(r4)
            r1 = 2
            if (r0 != r1) goto L16
            return r4
        L16:
            r1 = 13
            if (r1 == r0) goto L8
        L1a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase.getFirstAttributeIdentity(int):int");
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public int getFirstChild(int i) {
        return makeNodeHandle(_firstch(makeNodeIdentity(i)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002a, code lost:
    
        if (_type(r3) == 1) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
    
        r3 = getNextNodeIdentity(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
    
        if ((-1) == r3) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0032, code lost:
    
        r4 = _type(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0038, code lost:
    
        if (r4 != 13) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0040, code lost:
    
        if (2 == r4) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x003e, code lost:
    
        return makeNodeHandle(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0042, code lost:
    
        return -1;
     */
    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getFirstNamespaceNode(int r3, boolean r4) {
        /*
            r2 = this;
            r0 = 1
            r1 = -1
            if (r4 == 0) goto L22
            int r3 = r2.makeNodeIdentity(r3)
            short r4 = r2._type(r3)
            if (r4 != r0) goto L21
            com.sun.org.apache.xml.internal.utils.SuballocatedIntVector r2 = r2.findNamespaceContext(r3)
            if (r2 == 0) goto L21
            int r3 = r2.size()
            if (r3 >= r0) goto L1b
            goto L21
        L1b:
            r3 = 0
            int r2 = r2.elementAt(r3)
            return r2
        L21:
            return r1
        L22:
            int r3 = r2.makeNodeIdentity(r3)
            short r4 = r2._type(r3)
            if (r4 != r0) goto L42
        L2c:
            int r3 = r2.getNextNodeIdentity(r3)
            if (r1 == r3) goto L42
            short r4 = r2._type(r3)
            r0 = 13
            if (r4 != r0) goto L3f
            int r2 = r2.makeNodeHandle(r3)
            return r2
        L3f:
            r0 = 2
            if (r0 == r4) goto L2c
        L42:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase.getFirstNamespaceNode(int, boolean):int");
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public int getLastChild(int i) {
        int _firstch = _firstch(makeNodeIdentity(i));
        int i2 = -1;
        while (_firstch != -1) {
            i2 = _firstch;
            _firstch = _nextsib(_firstch);
        }
        return makeNodeHandle(i2);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public short getLevel(int i) {
        return (short) (_level(makeNodeIdentity(i)) + 1);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public abstract String getLocalName(int i);

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public String getLocalNameFromExpandedNameID(int i) {
        return this.m_expandedNameTable.getLocalName(i);
    }

    public DTMManager getManager() {
        return this.m_mgr;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public String getNamespaceFromExpandedNameID(int i) {
        return this.m_expandedNameTable.getNamespace(i);
    }

    public int getNamespaceType(int i) {
        return this.m_expandedNameTable.getNamespaceID(_exptype(makeNodeIdentity(i)));
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public abstract String getNamespaceURI(int i);

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public int getNextAttribute(int i) {
        int makeNodeIdentity = makeNodeIdentity(i);
        if (_type(makeNodeIdentity) == 2) {
            return makeNodeHandle(getNextAttributeIdentity(makeNodeIdentity));
        }
        return -1;
    }

    public int getNextAttributeIdentity(int i) {
        short _type;
        do {
            i = getNextNodeIdentity(i);
            if (-1 == i) {
                break;
            }
            _type = _type(i);
            if (_type == 2) {
                return i;
            }
        } while (_type == 13);
        return -1;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public int getNextNamespaceNode(int i, int i2, boolean z) {
        short _type;
        int indexOf;
        if (z) {
            SuballocatedIntVector findNamespaceContext = findNamespaceContext(makeNodeIdentity(i));
            if (findNamespaceContext == null || (indexOf = findNamespaceContext.indexOf(i2) + 1) <= 0 || indexOf == findNamespaceContext.size()) {
                return -1;
            }
            return findNamespaceContext.elementAt(indexOf);
        }
        int makeNodeIdentity = makeNodeIdentity(i2);
        do {
            makeNodeIdentity = getNextNodeIdentity(makeNodeIdentity);
            if (-1 == makeNodeIdentity) {
                break;
            }
            _type = _type(makeNodeIdentity);
            if (_type == 13) {
                return makeNodeHandle(makeNodeIdentity);
            }
        } while (_type == 2);
        return -1;
    }

    public abstract int getNextNodeIdentity(int i);

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public int getNextSibling(int i) {
        if (i == -1) {
            return -1;
        }
        return makeNodeHandle(_nextsib(makeNodeIdentity(i)));
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public Node getNode(int i) {
        return new DTMNodeProxy(this, i);
    }

    public int getNodeHandle(int i) {
        return makeNodeHandle(i);
    }

    public int getNodeIdent(int i) {
        return makeNodeIdentity(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public abstract String getNodeName(int i);

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public String getNodeNameX(int i) {
        error(XMLMessages.createXMLMessage("ER_METHOD_NOT_SUPPORTED", null));
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public short getNodeType(int i) {
        if (i == -1) {
            return (short) -1;
        }
        return this.m_expandedNameTable.getType(_exptype(makeNodeIdentity(i)));
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public abstract String getNodeValue(int i);

    public abstract int getNumberOfNodes();

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public int getOwnerDocument(int i) {
        if (9 == getNodeType(i)) {
            return -1;
        }
        return getDocumentRoot(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public int getParent(int i) {
        int makeNodeIdentity = makeNodeIdentity(i);
        if (makeNodeIdentity > 0) {
            return makeNodeHandle(_parent(makeNodeIdentity));
        }
        return -1;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public abstract String getPrefix(int i);

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public int getPreviousSibling(int i) {
        int i2 = -1;
        if (i == -1) {
            return -1;
        }
        if (this.m_prevsib != null) {
            return makeNodeHandle(_prevsib(makeNodeIdentity(i)));
        }
        int makeNodeIdentity = makeNodeIdentity(i);
        int _firstch = _firstch(_parent(makeNodeIdentity));
        while (true) {
            int i3 = _firstch;
            int i4 = i2;
            i2 = i3;
            if (i2 == makeNodeIdentity) {
                return makeNodeHandle(i4);
            }
            _firstch = _nextsib(i2);
        }
    }

    public boolean getShouldStripWhitespace() {
        return this.m_shouldStripWS;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public abstract XMLString getStringValue(int i);

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public char[] getStringValueChunk(int i, int i2, int[] iArr) {
        error(XMLMessages.createXMLMessage("ER_METHOD_NOT_SUPPORTED", null));
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public int getStringValueChunkCount(int i) {
        error(XMLMessages.createXMLMessage("ER_METHOD_NOT_SUPPORTED", null));
        return 0;
    }

    public int getTypedAttribute(int i, int i2) {
        if (1 == getNodeType(i)) {
            int makeNodeIdentity = makeNodeIdentity(i);
            while (true) {
                makeNodeIdentity = getNextNodeIdentity(makeNodeIdentity);
                if (-1 == makeNodeIdentity) {
                    break;
                }
                short _type = _type(makeNodeIdentity);
                if (_type == 2) {
                    if (_exptype(makeNodeIdentity) == i2) {
                        return makeNodeHandle(makeNodeIdentity);
                    }
                } else if (13 != _type) {
                    break;
                }
            }
        }
        return -1;
    }

    public int getTypedFirstChild(int i, int i2) {
        if (i2 < 14) {
            int _firstch = _firstch(makeNodeIdentity(i));
            while (_firstch != -1) {
                int _exptype = _exptype(_firstch);
                if (_exptype == i2 || (_exptype >= 14 && this.m_expandedNameTable.getType(_exptype) == i2)) {
                    return makeNodeHandle(_firstch);
                }
                _firstch = _nextsib(_firstch);
            }
        } else {
            int _firstch2 = _firstch(makeNodeIdentity(i));
            while (_firstch2 != -1) {
                if (_exptype(_firstch2) == i2) {
                    return makeNodeHandle(_firstch2);
                }
                _firstch2 = _nextsib(_firstch2);
            }
        }
        return -1;
    }

    public int getTypedNextSibling(int i, int i2) {
        int _exptype;
        if (i == -1) {
            return -1;
        }
        int makeNodeIdentity = makeNodeIdentity(i);
        do {
            makeNodeIdentity = _nextsib(makeNodeIdentity);
            if (makeNodeIdentity == -1 || (_exptype = _exptype(makeNodeIdentity)) == i2) {
                break;
            }
        } while (this.m_expandedNameTable.getType(_exptype) != i2);
        if (makeNodeIdentity == -1) {
            return -1;
        }
        return makeNodeHandle(makeNodeIdentity);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public abstract String getUnparsedEntityURI(String str);

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public boolean hasChildNodes(int i) {
        return _firstch(makeNodeIdentity(i)) != -1;
    }

    public void indexNode(int i, int i2) {
        ExpandedNameTable expandedNameTable = this.m_expandedNameTable;
        if (1 == expandedNameTable.getType(i)) {
            int namespaceID = expandedNameTable.getNamespaceID(i);
            int localNameID = expandedNameTable.getLocalNameID(i);
            ensureSizeOfIndex(namespaceID, localNameID);
            int[] iArr = this.m_elemIndexes[namespaceID][localNameID];
            iArr[iArr[0]] = i2;
            iArr[0] = iArr[0] + 1;
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public abstract boolean isAttributeSpecified(int i);

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public boolean isCharacterElementContentWhitespace(int i) {
        return false;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public boolean isDocumentAllDeclarationsProcessed(int i) {
        return true;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public boolean isNodeAfter(int i, int i2) {
        int makeNodeIdentity = makeNodeIdentity(i);
        int makeNodeIdentity2 = makeNodeIdentity(i2);
        return (makeNodeIdentity == -1 || makeNodeIdentity2 == -1 || makeNodeIdentity > makeNodeIdentity2) ? false : true;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public boolean isSupported(String str, String str2) {
        return false;
    }

    public final int makeNodeHandle(int i) {
        if (-1 == i) {
            return -1;
        }
        return this.m_dtmIdent.elementAt(i >>> 16) + (i & 65535);
    }

    public final int makeNodeIdentity(int i) {
        if (-1 == i) {
            return -1;
        }
        DTMManagerDefault dTMManagerDefault = this.m_mgrDefault;
        if (dTMManagerDefault != null) {
            int i2 = i >>> 16;
            if (dTMManagerDefault.m_dtms[i2] != this) {
                return -1;
            }
            return dTMManagerDefault.m_dtm_offsets[i2] | (i & 65535);
        }
        int indexOf = this.m_dtmIdent.indexOf((-65536) & i);
        if (indexOf == -1) {
            return -1;
        }
        return (indexOf << 16) + (i & 65535);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public void migrateTo(DTMManager dTMManager) {
        this.m_mgr = dTMManager;
        if (dTMManager instanceof DTMManagerDefault) {
            this.m_mgrDefault = (DTMManagerDefault) dTMManager;
        }
    }

    public abstract boolean nextNode();

    public void popShouldStripWhitespace() {
        BoolStack boolStack = this.m_shouldStripWhitespaceStack;
        if (boolStack != null) {
            this.m_shouldStripWS = boolStack.popAndTop();
        }
    }

    public void pushShouldStripWhitespace(boolean z) {
        this.m_shouldStripWS = z;
        BoolStack boolStack = this.m_shouldStripWhitespaceStack;
        if (boolStack != null) {
            boolStack.push(z);
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public void setDocumentBaseURI(String str) {
        this.m_documentBaseURI = str;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public void setFeature(String str, boolean z) {
    }

    public void setShouldStripWhitespace(boolean z) {
        this.m_shouldStripWS = z;
        BoolStack boolStack = this.m_shouldStripWhitespaceStack;
        if (boolStack != null) {
            boolStack.setTop(z);
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public boolean supportsPreStripping() {
        return true;
    }

    public DTMDefaultBase(DTMManager dTMManager, Source source, int i, DTMWSFilter dTMWSFilter, XMLStringFactory xMLStringFactory, boolean z, int i2, boolean z2, boolean z3) {
        int i3;
        this.m_size = 0;
        this.m_namespaceDeclSets = null;
        this.m_namespaceDeclSetElements = null;
        this.m_mgrDefault = null;
        this.m_shouldStripWS = false;
        this.m_namespaceLists = null;
        if (i2 <= 64) {
            i3 = 4;
            this.m_dtmIdent = new SuballocatedIntVector(4, 1);
        } else {
            i3 = 32;
            this.m_dtmIdent = new SuballocatedIntVector(32);
        }
        this.m_exptype = new SuballocatedIntVector(i2, i3);
        this.m_firstch = new SuballocatedIntVector(i2, i3);
        this.m_nextsib = new SuballocatedIntVector(i2, i3);
        this.m_parent = new SuballocatedIntVector(i2, i3);
        if (z2) {
            this.m_prevsib = new SuballocatedIntVector(i2, i3);
        }
        this.m_mgr = dTMManager;
        if (dTMManager instanceof DTMManagerDefault) {
            this.m_mgrDefault = (DTMManagerDefault) dTMManager;
        }
        this.m_documentBaseURI = source != null ? source.getSystemId() : null;
        this.m_dtmIdent.setElementAt(i, 0);
        this.m_wsfilter = dTMWSFilter;
        this.m_xstrf = xMLStringFactory;
        this.m_indexing = z;
        if (z) {
            this.m_expandedNameTable = new ExpandedNameTable();
        } else {
            this.m_expandedNameTable = this.m_mgrDefault.getExpandedNameTable(this);
        }
        if (dTMWSFilter != null) {
            this.m_shouldStripWhitespaceStack = new BoolStack();
            pushShouldStripWhitespace(false);
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public int getExpandedTypeID(String str, String str2, int i) {
        return this.m_expandedNameTable.getExpandedTypeID(str, str2, i);
    }
}
