package org.apache.xerces.dom;

import java.util.ArrayList;
import java.util.Hashtable;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

/* loaded from: classes13.dex */
public class DeferredDocumentImpl extends DocumentImpl implements DeferredNode {
    protected static final int CHUNK_MASK = 2047;
    protected static final int CHUNK_SHIFT = 11;
    protected static final int CHUNK_SIZE = 2048;
    private static final boolean DEBUG_IDS = false;
    private static final boolean DEBUG_PRINT_REF_COUNTS = false;
    private static final boolean DEBUG_PRINT_TABLES = false;
    protected static final int INITIAL_CHUNK_COUNT = 32;
    private static final int[] INIT_ARRAY = new int[2049];
    static final long serialVersionUID = 5186323580749626857L;
    private final transient StringBuffer fBufferStr;
    protected transient int fIdCount;
    protected transient int[] fIdElement;
    protected transient String[] fIdName;
    protected boolean fNamespacesEnabled;
    protected transient int fNodeCount;
    protected transient int[][] fNodeExtra;
    protected transient int[][] fNodeLastChild;
    protected transient Object[][] fNodeName;
    protected transient int[][] fNodeParent;
    protected transient int[][] fNodePrevSib;
    protected transient int[][] fNodeType;
    protected transient Object[][] fNodeURI;
    protected transient Object[][] fNodeValue;
    private final transient ArrayList fStrChunks;

    /* renamed from: org.apache.xerces.dom.DeferredDocumentImpl$a */
    /* loaded from: classes13.dex */
    public static final class C19997a {

        /* renamed from: a */
        public int[] f111883a;

        /* renamed from: b */
        public int f111884b;

        /* renamed from: a */
        public void m69748a(int i) {
            m69750c(this.f111884b + 1);
            int[] iArr = this.f111883a;
            int i2 = this.f111884b;
            this.f111884b = i2 + 1;
            iArr[i2] = i;
        }

        /* renamed from: b */
        public int m69749b(int i) {
            return this.f111883a[i];
        }

        /* renamed from: c */
        public final void m69750c(int i) {
            int[] iArr = this.f111883a;
            if (iArr == null) {
                this.f111883a = new int[i + 15];
            } else if (i > iArr.length) {
                int[] iArr2 = new int[i + 15];
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                this.f111883a = iArr2;
            }
        }

        /* renamed from: d */
        public void m69751d() {
            this.f111884b = 0;
        }

        /* renamed from: e */
        public int m69752e() {
            return this.f111884b;
        }
    }

    /* renamed from: org.apache.xerces.dom.DeferredDocumentImpl$b */
    /* loaded from: classes13.dex */
    public static final class C19998b {

        /* renamed from: a */
        public int f111885a;
    }

    static {
        for (int i = 0; i < 2048; i++) {
            INIT_ARRAY[i] = -1;
        }
    }

    public DeferredDocumentImpl() {
        this(false);
    }

    public static int binarySearch(int[] iArr, int i, int i2, int i3) {
        while (i <= i2) {
            int i4 = (i + i2) >>> 1;
            int i5 = iArr[i4];
            if (i5 == i3) {
                while (i4 > 0 && iArr[i4 - 1] == i3) {
                    i4--;
                }
                return i4;
            }
            if (i5 > i3) {
                i2 = i4 - 1;
            } else {
                i = i4 + 1;
            }
        }
        return -1;
    }

    private final int clearChunkIndex(int[][] iArr, int i, int i2) {
        int[] iArr2 = iArr[i];
        int i3 = iArr2 != null ? iArr2[i2] : -1;
        if (i3 != -1) {
            iArr2[2048] = iArr2[2048] - 1;
            iArr2[i2] = -1;
            if (iArr2[2048] == 0) {
                iArr[i] = null;
            }
        }
        return i3;
    }

    private final String clearChunkValue(Object[][] objArr, int i, int i2) {
        Object[] objArr2 = objArr[i];
        String str = objArr2 != null ? (String) objArr2[i2] : null;
        if (str != null) {
            objArr2[i2] = null;
            C19998b c19998b = (C19998b) objArr[i][2048];
            int i3 = c19998b.f111885a - 1;
            c19998b.f111885a = i3;
            if (i3 == 0) {
                objArr[i] = null;
            }
        }
        return str;
    }

    private final void createChunk(int[][] iArr, int i) {
        int[] iArr2 = new int[2049];
        iArr[i] = iArr2;
        System.arraycopy(INIT_ARRAY, 0, iArr2, 0, 2048);
    }

    private final int getChunkIndex(int[][] iArr, int i, int i2) {
        int[] iArr2 = iArr[i];
        if (iArr2 != null) {
            return iArr2[i2];
        }
        return -1;
    }

    private final String getChunkValue(Object[][] objArr, int i, int i2) {
        Object[] objArr2 = objArr[i];
        if (objArr2 != null) {
            return (String) objArr2[i2];
        }
        return null;
    }

    private final void putIdentifier0(String str, Element element) {
        if (this.identifiers == null) {
            this.identifiers = new Hashtable();
        }
        this.identifiers.put(str, element);
    }

    private final int setChunkIndex(int[][] iArr, int i, int i2, int i3) {
        if (i == -1) {
            return clearChunkIndex(iArr, i2, i3);
        }
        int[] iArr2 = iArr[i2];
        if (iArr2 == null) {
            createChunk(iArr, i2);
            iArr2 = iArr[i2];
        }
        int i4 = iArr2[i3];
        if (i4 == -1) {
            iArr2[2048] = iArr2[2048] + 1;
        }
        iArr2[i3] = i;
        return i4;
    }

    private final String setChunkValue(Object[][] objArr, Object obj, int i, int i2) {
        if (obj == null) {
            return clearChunkValue(objArr, i, i2);
        }
        Object[] objArr2 = objArr[i];
        if (objArr2 == null) {
            createChunk(objArr, i);
            objArr2 = objArr[i];
        }
        String str = (String) objArr2[i2];
        if (str == null) {
            ((C19998b) objArr2[2048]).f111885a++;
        }
        objArr2[i2] = obj;
        return str;
    }

    public void appendChild(int i, int i2) {
        int i3 = i >> 11;
        int i4 = i & 2047;
        int i5 = i2 >> 11;
        int i6 = i2 & 2047;
        setChunkIndex(this.fNodeParent, i, i5, i6);
        setChunkIndex(this.fNodePrevSib, getChunkIndex(this.fNodeLastChild, i3, i4), i5, i6);
        setChunkIndex(this.fNodeLastChild, i2, i3, i4);
    }

    public int cloneNode(int i, boolean z) {
        int i2 = i >> 11;
        int i3 = i & 2047;
        int i4 = this.fNodeType[i2][i3];
        int createNode = createNode((short) i4);
        int i5 = createNode >> 11;
        int i6 = createNode & 2047;
        Object[][] objArr = this.fNodeName;
        setChunkValue(objArr, objArr[i2][i3], i5, i6);
        Object[][] objArr2 = this.fNodeValue;
        setChunkValue(objArr2, objArr2[i2][i3], i5, i6);
        Object[][] objArr3 = this.fNodeURI;
        setChunkValue(objArr3, objArr3[i2][i3], i5, i6);
        int i7 = this.fNodeExtra[i2][i3];
        if (i7 != -1) {
            if (i4 != 2 && i4 != 3) {
                i7 = cloneNode(i7, false);
            }
            setChunkIndex(this.fNodeExtra, i7, i5, i6);
        }
        if (z) {
            int lastChild = getLastChild(i, false);
            int i8 = -1;
            while (lastChild != -1) {
                int cloneNode = cloneNode(lastChild, z);
                insertBefore(createNode, cloneNode, i8);
                lastChild = getRealPrevSibling(lastChild, false);
                i8 = cloneNode;
            }
        }
        return createNode;
    }

    public int createDeferredAttribute(String str, String str2, String str3, boolean z) {
        int createNode = createNode((short) 2);
        int i = createNode >> 11;
        int i2 = createNode & 2047;
        setChunkValue(this.fNodeName, str, i, i2);
        setChunkValue(this.fNodeURI, str2, i, i2);
        setChunkValue(this.fNodeValue, str3, i, i2);
        setChunkIndex(this.fNodeExtra, z ? 32 : 0, i, i2);
        return createNode;
    }

    public int createDeferredCDATASection(String str) {
        int createNode = createNode((short) 4);
        setChunkValue(this.fNodeValue, str, createNode >> 11, createNode & 2047);
        return createNode;
    }

    public int createDeferredComment(String str) {
        int createNode = createNode((short) 8);
        setChunkValue(this.fNodeValue, str, createNode >> 11, createNode & 2047);
        return createNode;
    }

    public int createDeferredDocument() {
        return createNode((short) 9);
    }

    public int createDeferredDocumentType(String str, String str2, String str3) {
        int createNode = createNode((short) 10);
        int i = createNode >> 11;
        int i2 = createNode & 2047;
        setChunkValue(this.fNodeName, str, i, i2);
        setChunkValue(this.fNodeValue, str2, i, i2);
        setChunkValue(this.fNodeURI, str3, i, i2);
        return createNode;
    }

    public int createDeferredElement(String str) {
        return createDeferredElement(null, str);
    }

    public int createDeferredElementDefinition(String str) {
        int createNode = createNode((short) 21);
        setChunkValue(this.fNodeName, str, createNode >> 11, createNode & 2047);
        return createNode;
    }

    public int createDeferredEntity(String str, String str2, String str3, String str4, String str5) {
        int createNode = createNode((short) 6);
        int i = createNode >> 11;
        int i2 = createNode & 2047;
        int createNode2 = createNode((short) 6);
        int i3 = createNode2 >> 11;
        int i4 = createNode2 & 2047;
        setChunkValue(this.fNodeName, str, i, i2);
        setChunkValue(this.fNodeValue, str2, i, i2);
        setChunkValue(this.fNodeURI, str3, i, i2);
        setChunkIndex(this.fNodeExtra, createNode2, i, i2);
        setChunkValue(this.fNodeName, str4, i3, i4);
        setChunkValue(this.fNodeValue, null, i3, i4);
        setChunkValue(this.fNodeURI, null, i3, i4);
        int createNode3 = createNode((short) 6);
        setChunkIndex(this.fNodeExtra, createNode3, i3, i4);
        setChunkValue(this.fNodeName, str5, createNode3 >> 11, createNode3 & 2047);
        return createNode;
    }

    public int createDeferredEntityReference(String str, String str2) {
        int createNode = createNode((short) 5);
        int i = createNode >> 11;
        int i2 = createNode & 2047;
        setChunkValue(this.fNodeName, str, i, i2);
        setChunkValue(this.fNodeValue, str2, i, i2);
        return createNode;
    }

    public int createDeferredNotation(String str, String str2, String str3, String str4) {
        int createNode = createNode((short) 12);
        int i = createNode >> 11;
        int i2 = createNode & 2047;
        int createNode2 = createNode((short) 12);
        setChunkValue(this.fNodeName, str, i, i2);
        setChunkValue(this.fNodeValue, str2, i, i2);
        setChunkValue(this.fNodeURI, str3, i, i2);
        setChunkIndex(this.fNodeExtra, createNode2, i, i2);
        setChunkValue(this.fNodeName, str4, createNode2 >> 11, createNode2 & 2047);
        return createNode;
    }

    public int createDeferredProcessingInstruction(String str, String str2) {
        int createNode = createNode((short) 7);
        int i = createNode >> 11;
        int i2 = createNode & 2047;
        setChunkValue(this.fNodeName, str, i, i2);
        setChunkValue(this.fNodeValue, str2, i, i2);
        return createNode;
    }

    public int createDeferredTextNode(String str, boolean z) {
        int createNode = createNode((short) 3);
        int i = createNode >> 11;
        int i2 = createNode & 2047;
        setChunkValue(this.fNodeValue, str, i, i2);
        setChunkIndex(this.fNodeExtra, z ? 1 : 0, i, i2);
        return createNode;
    }

    public int createNode(short s) {
        int i = this.fNodeCount;
        int i2 = i >> 11;
        ensureCapacity(i2);
        setChunkIndex(this.fNodeType, s, i2, i & 2047);
        int i3 = this.fNodeCount;
        this.fNodeCount = i3 + 1;
        return i3;
    }

    public void ensureCapacity(int i) {
        int[][] iArr = this.fNodeType;
        if (iArr == null) {
            this.fNodeType = new int[32];
            this.fNodeName = new Object[32];
            this.fNodeValue = new Object[32];
            this.fNodeParent = new int[32];
            this.fNodeLastChild = new int[32];
            this.fNodePrevSib = new int[32];
            this.fNodeURI = new Object[32];
            this.fNodeExtra = new int[32];
        } else if (iArr.length <= i) {
            int i2 = i * 2;
            int[][] iArr2 = new int[i2];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            this.fNodeType = iArr2;
            Object[][] objArr = new Object[i2];
            System.arraycopy(this.fNodeName, 0, objArr, 0, i);
            this.fNodeName = objArr;
            Object[][] objArr2 = new Object[i2];
            System.arraycopy(this.fNodeValue, 0, objArr2, 0, i);
            this.fNodeValue = objArr2;
            int[][] iArr3 = new int[i2];
            System.arraycopy(this.fNodeParent, 0, iArr3, 0, i);
            this.fNodeParent = iArr3;
            int[][] iArr4 = new int[i2];
            System.arraycopy(this.fNodeLastChild, 0, iArr4, 0, i);
            this.fNodeLastChild = iArr4;
            int[][] iArr5 = new int[i2];
            System.arraycopy(this.fNodePrevSib, 0, iArr5, 0, i);
            this.fNodePrevSib = iArr5;
            Object[][] objArr3 = new Object[i2];
            System.arraycopy(this.fNodeURI, 0, objArr3, 0, i);
            this.fNodeURI = objArr3;
            int[][] iArr6 = new int[i2];
            System.arraycopy(this.fNodeExtra, 0, iArr6, 0, i);
            this.fNodeExtra = iArr6;
        } else if (iArr[i] != null) {
            return;
        }
        createChunk(this.fNodeType, i);
        createChunk(this.fNodeName, i);
        createChunk(this.fNodeValue, i);
        createChunk(this.fNodeParent, i);
        createChunk(this.fNodeLastChild, i);
        createChunk(this.fNodePrevSib, i);
        createChunk(this.fNodeURI, i);
        createChunk(this.fNodeExtra, i);
    }

    public String getAttribute(int i, String str) {
        if (i == -1 || str == null) {
            return null;
        }
        int chunkIndex = getChunkIndex(this.fNodeExtra, i >> 11, i & 2047);
        while (chunkIndex != -1) {
            int i2 = chunkIndex >> 11;
            int i3 = chunkIndex & 2047;
            if (getChunkValue(this.fNodeName, i2, i3) == str) {
                return getChunkValue(this.fNodeValue, i2, i3);
            }
            chunkIndex = getChunkIndex(this.fNodePrevSib, i2, i3);
        }
        return null;
    }

    public String getDeferredEntityBaseURI(int i) {
        if (i != -1) {
            return getNodeName(getNodeExtra(getNodeExtra(i, false), false), false);
        }
        return null;
    }

    @Override // org.apache.xerces.dom.DocumentImpl, org.apache.xerces.dom.CoreDocumentImpl, org.w3c.dom.Document
    public DOMImplementation getImplementation() {
        return DeferredDOMImplementationImpl.getDOMImplementation();
    }

    public int getLastChild(int i) {
        return getLastChild(i, true);
    }

    public boolean getNamespacesEnabled() {
        return this.fNamespacesEnabled;
    }

    public int getNodeExtra(int i) {
        return getNodeExtra(i, true);
    }

    @Override // org.apache.xerces.dom.DeferredNode
    public int getNodeIndex() {
        return 0;
    }

    public String getNodeName(int i) {
        return getNodeName(i, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [org.apache.xerces.dom.DeferredNode] */
    public DeferredNode getNodeObject(int i) {
        DeferredNode deferredNode;
        if (i == -1) {
            return null;
        }
        int i2 = i >> 11;
        int i3 = i & 2047;
        int chunkIndex = getChunkIndex(this.fNodeType, i2, i3);
        if (chunkIndex != 3 && chunkIndex != 4) {
            clearChunkIndex(this.fNodeType, i2, i3);
        }
        if (chunkIndex == 12) {
            deferredNode = new DeferredNotationImpl(this, i);
        } else if (chunkIndex != 21) {
            switch (chunkIndex) {
                case 1:
                    Element deferredElementNSImpl = this.fNamespacesEnabled ? new DeferredElementNSImpl(this, i) : new DeferredElementImpl(this, i);
                    int[] iArr = this.fIdElement;
                    if (iArr != null) {
                        int binarySearch = binarySearch(iArr, 0, this.fIdCount - 1, i);
                        while (binarySearch != -1) {
                            String str = this.fIdName[binarySearch];
                            if (str != null) {
                                putIdentifier0(str, deferredElementNSImpl);
                                this.fIdName[binarySearch] = null;
                            }
                            binarySearch++;
                            if (binarySearch >= this.fIdCount || this.fIdElement[binarySearch] != i) {
                                binarySearch = -1;
                            }
                        }
                    }
                    return deferredElementNSImpl;
                case 2:
                    if (!this.fNamespacesEnabled) {
                        deferredNode = new DeferredAttrImpl(this, i);
                        break;
                    } else {
                        deferredNode = new DeferredAttrNSImpl(this, i);
                        break;
                    }
                case 3:
                    deferredNode = new DeferredTextImpl(this, i);
                    break;
                case 4:
                    deferredNode = new DeferredCDATASectionImpl(this, i);
                    break;
                case 5:
                    deferredNode = new DeferredEntityReferenceImpl(this, i);
                    break;
                case 6:
                    deferredNode = new DeferredEntityImpl(this, i);
                    break;
                case 7:
                    deferredNode = new DeferredProcessingInstructionImpl(this, i);
                    break;
                case 8:
                    deferredNode = new DeferredCommentImpl(this, i);
                    break;
                case 9:
                    return this;
                case 10:
                    DeferredDocumentTypeImpl deferredDocumentTypeImpl = new DeferredDocumentTypeImpl(this, i);
                    this.docType = deferredDocumentTypeImpl;
                    deferredNode = deferredDocumentTypeImpl;
                    break;
                default:
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("type: ");
                    stringBuffer.append(chunkIndex);
                    throw new IllegalArgumentException(stringBuffer.toString());
            }
        } else {
            deferredNode = new DeferredElementDefinitionImpl(this, i);
        }
        return deferredNode;
    }

    public short getNodeType(int i) {
        return getNodeType(i, true);
    }

    public String getNodeURI(int i) {
        return getNodeURI(i, true);
    }

    public String getNodeValue(int i) {
        return getNodeValue(i, true);
    }

    public String getNodeValueString(int i) {
        return getNodeValueString(i, true);
    }

    public int getParentNode(int i) {
        return getParentNode(i, false);
    }

    public int getPrevSibling(int i) {
        return getPrevSibling(i, true);
    }

    public int getRealPrevSibling(int i) {
        return getRealPrevSibling(i, true);
    }

    public Object getTypeInfo(int i) {
        if (i == -1) {
            return null;
        }
        int i2 = i >> 11;
        int i3 = i & 2047;
        Object[][] objArr = this.fNodeValue;
        Object[] objArr2 = objArr[i2];
        Object obj = objArr2 != null ? objArr2[i3] : null;
        if (obj != null) {
            objArr2[i3] = null;
            C19998b c19998b = (C19998b) objArr[i2][2048];
            int i4 = c19998b.f111885a - 1;
            c19998b.f111885a = i4;
            if (i4 == 0) {
                objArr[i2] = null;
            }
        }
        return obj;
    }

    public int insertBefore(int i, int i2, int i3) {
        if (i3 == -1) {
            appendChild(i, i2);
            return i2;
        }
        int i4 = i3 >> 11;
        int i5 = i3 & 2047;
        int chunkIndex = getChunkIndex(this.fNodePrevSib, i4, i5);
        setChunkIndex(this.fNodePrevSib, i2, i4, i5);
        setChunkIndex(this.fNodePrevSib, chunkIndex, i2 >> 11, i2 & 2047);
        return i2;
    }

    public int lookupElementDefinition(String str) {
        if (this.fNodeCount > 1) {
            int chunkIndex = getChunkIndex(this.fNodeLastChild, 0, 0);
            while (true) {
                if (chunkIndex == -1) {
                    chunkIndex = -1;
                    break;
                }
                int i = chunkIndex >> 11;
                int i2 = chunkIndex & 2047;
                if (getChunkIndex(this.fNodeType, i, i2) == 10) {
                    break;
                }
                chunkIndex = getChunkIndex(this.fNodePrevSib, i, i2);
            }
            if (chunkIndex == -1) {
                return -1;
            }
            int chunkIndex2 = getChunkIndex(this.fNodeLastChild, chunkIndex >> 11, chunkIndex & 2047);
            while (chunkIndex2 != -1) {
                int i3 = chunkIndex2 >> 11;
                int i4 = chunkIndex2 & 2047;
                if (getChunkIndex(this.fNodeType, i3, i4) == 21 && getChunkValue(this.fNodeName, i3, i4) == str) {
                    return chunkIndex2;
                }
                chunkIndex2 = getChunkIndex(this.fNodePrevSib, i3, i4);
            }
        }
        return -1;
    }

    public void print() {
    }

    public void putIdentifier(String str, int i) {
        if (this.fIdName == null) {
            this.fIdName = new String[64];
            this.fIdElement = new int[64];
        }
        int i2 = this.fIdCount;
        String[] strArr = this.fIdName;
        if (i2 == strArr.length) {
            int i3 = i2 * 2;
            String[] strArr2 = new String[i3];
            System.arraycopy(strArr, 0, strArr2, 0, i2);
            this.fIdName = strArr2;
            int[] iArr = new int[i3];
            System.arraycopy(this.fIdElement, 0, iArr, 0, this.fIdCount);
            this.fIdElement = iArr;
        }
        String[] strArr3 = this.fIdName;
        int i4 = this.fIdCount;
        strArr3[i4] = str;
        this.fIdElement[i4] = i;
        this.fIdCount = i4 + 1;
    }

    public void setAsLastChild(int i, int i2) {
        setChunkIndex(this.fNodeLastChild, i2, i >> 11, i & 2047);
    }

    public int setAttributeNode(int i, int i2) {
        int i3 = i >> 11;
        int i4 = i & 2047;
        int i5 = i2 >> 11;
        int i6 = i2 & 2047;
        String chunkValue = getChunkValue(this.fNodeName, i5, i6);
        int chunkIndex = getChunkIndex(this.fNodeExtra, i3, i4);
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        while (chunkIndex != -1) {
            i8 = chunkIndex >> 11;
            i9 = chunkIndex & 2047;
            if (getChunkValue(this.fNodeName, i8, i9).equals(chunkValue)) {
                break;
            }
            i7 = chunkIndex;
            chunkIndex = getChunkIndex(this.fNodePrevSib, i8, i9);
        }
        if (chunkIndex != -1) {
            int chunkIndex2 = getChunkIndex(this.fNodePrevSib, i8, i9);
            if (i7 == -1) {
                setChunkIndex(this.fNodeExtra, chunkIndex2, i3, i4);
            } else {
                setChunkIndex(this.fNodePrevSib, chunkIndex2, i7 >> 11, i7 & 2047);
            }
            clearChunkIndex(this.fNodeType, i8, i9);
            clearChunkValue(this.fNodeName, i8, i9);
            clearChunkValue(this.fNodeValue, i8, i9);
            clearChunkIndex(this.fNodeParent, i8, i9);
            clearChunkIndex(this.fNodePrevSib, i8, i9);
            int clearChunkIndex = clearChunkIndex(this.fNodeLastChild, i8, i9);
            int i10 = clearChunkIndex >> 11;
            int i11 = clearChunkIndex & 2047;
            clearChunkIndex(this.fNodeType, i10, i11);
            clearChunkValue(this.fNodeValue, i10, i11);
            clearChunkIndex(this.fNodeParent, i10, i11);
            clearChunkIndex(this.fNodeLastChild, i10, i11);
        }
        int chunkIndex3 = getChunkIndex(this.fNodeExtra, i3, i4);
        setChunkIndex(this.fNodeExtra, i2, i3, i4);
        setChunkIndex(this.fNodePrevSib, chunkIndex3, i5, i6);
        return chunkIndex;
    }

    public int setDeferredAttribute(int i, String str, String str2, String str3, boolean z) {
        int createDeferredAttribute = createDeferredAttribute(str, str2, str3, z);
        int i2 = createDeferredAttribute >> 11;
        int i3 = createDeferredAttribute & 2047;
        setChunkIndex(this.fNodeParent, i, i2, i3);
        int i4 = i >> 11;
        int i5 = i & 2047;
        int chunkIndex = getChunkIndex(this.fNodeExtra, i4, i5);
        if (chunkIndex != 0) {
            setChunkIndex(this.fNodePrevSib, chunkIndex, i2, i3);
        }
        setChunkIndex(this.fNodeExtra, createDeferredAttribute, i4, i5);
        return createDeferredAttribute;
    }

    public void setEntityInfo(int i, String str, String str2) {
        int nodeExtra = getNodeExtra(i, false);
        if (nodeExtra != -1) {
            int i2 = nodeExtra >> 11;
            int i3 = nodeExtra & 2047;
            setChunkValue(this.fNodeValue, str, i2, i3);
            setChunkValue(this.fNodeURI, str2, i2, i3);
        }
    }

    public void setIdAttribute(int i) {
        int i2 = i >> 11;
        int i3 = i & 2047;
        setChunkIndex(this.fNodeExtra, getChunkIndex(this.fNodeExtra, i2, i3) | 512, i2, i3);
    }

    public void setIdAttributeNode(int i, int i2) {
        int i3 = i2 >> 11;
        int i4 = i2 & 2047;
        setChunkIndex(this.fNodeExtra, getChunkIndex(this.fNodeExtra, i3, i4) | 512, i3, i4);
        putIdentifier(getChunkValue(this.fNodeValue, i3, i4), i);
    }

    public void setInputEncoding(int i, String str) {
        int nodeExtra = getNodeExtra(getNodeExtra(i, false), false);
        setChunkValue(this.fNodeValue, str, nodeExtra >> 11, nodeExtra & 2047);
    }

    public void setInternalSubset(int i, String str) {
        int createNode = createNode((short) 10);
        setChunkIndex(this.fNodeExtra, createNode, i >> 11, i & 2047);
        setChunkValue(this.fNodeValue, str, createNode >> 11, createNode & 2047);
    }

    public void setNamespacesEnabled(boolean z) {
        this.fNamespacesEnabled = z;
    }

    public void setTypeInfo(int i, Object obj) {
        setChunkValue(this.fNodeValue, obj, i >> 11, i & 2047);
    }

    @Override // org.apache.xerces.dom.ParentNode
    public void synchronizeChildren() {
        if (needsSyncData()) {
            synchronizeData();
            if (!needsSyncChildren()) {
                return;
            }
        }
        boolean z = this.mutationEvents;
        this.mutationEvents = false;
        needsSyncChildren(false);
        getNodeType(0);
        int lastChild = getLastChild(0);
        ChildNode childNode = null;
        ChildNode childNode2 = null;
        while (lastChild != -1) {
            ChildNode childNode3 = (ChildNode) getNodeObject(lastChild);
            if (childNode == null) {
                childNode = childNode3;
            } else {
                childNode2.previousSibling = childNode3;
            }
            childNode3.ownerNode = this;
            childNode3.isOwned(true);
            childNode3.nextSibling = childNode2;
            short nodeType = childNode3.getNodeType();
            if (nodeType == 1) {
                this.docElement = (ElementImpl) childNode3;
            } else if (nodeType == 10) {
                this.docType = (DocumentTypeImpl) childNode3;
            }
            lastChild = getPrevSibling(lastChild);
            childNode2 = childNode3;
        }
        if (childNode2 != null) {
            this.firstChild = childNode2;
            childNode2.isFirstChild(true);
            lastChild(childNode);
        }
        this.mutationEvents = z;
    }

    @Override // org.apache.xerces.dom.NodeImpl
    public void synchronizeData() {
        int i = 0;
        needsSyncData(false);
        if (this.fIdElement != null) {
            C19997a c19997a = new C19997a();
            while (i < this.fIdCount) {
                int i2 = this.fIdElement[i];
                String str = this.fIdName[i];
                if (str != null) {
                    c19997a.m69751d();
                    int i3 = i2;
                    do {
                        c19997a.m69748a(i3);
                        i3 = getChunkIndex(this.fNodeParent, i3 >> 11, i3 & 2047);
                    } while (i3 != -1);
                    Element element = this;
                    for (int m69752e = c19997a.m69752e() - 2; m69752e >= 0; m69752e--) {
                        int m69749b = c19997a.m69749b(m69752e);
                        Node lastChild = element.getLastChild();
                        while (true) {
                            if (lastChild != null) {
                                if ((lastChild instanceof DeferredNode) && ((DeferredNode) lastChild).getNodeIndex() == m69749b) {
                                    element = lastChild;
                                    break;
                                }
                                lastChild = lastChild.getPreviousSibling();
                            }
                        }
                    }
                    Element element2 = element;
                    putIdentifier0(str, element2);
                    this.fIdName[i] = null;
                    while (true) {
                        int i4 = i + 1;
                        if (i4 < this.fIdCount && this.fIdElement[i4] == i2) {
                            String str2 = this.fIdName[i4];
                            if (str2 != null) {
                                putIdentifier0(str2, element2);
                            }
                            i = i4;
                        }
                    }
                }
                i++;
            }
        }
    }

    public DeferredDocumentImpl(boolean z) {
        this(z, false);
    }

    private final void createChunk(Object[][] objArr, int i) {
        Object[] objArr2 = new Object[2049];
        objArr[i] = objArr2;
        objArr2[2048] = new C19998b();
    }

    private final String getNodeValue(int i, int i2) {
        Object obj = this.fNodeValue[i][i2];
        if (obj == null) {
            return null;
        }
        return obj instanceof String ? (String) obj : obj.toString();
    }

    private static void print(int[] iArr, int i, int i2, int i3, int i4) {
    }

    public int createDeferredAttribute(String str, String str2, boolean z) {
        return createDeferredAttribute(str, null, str2, z);
    }

    public int createDeferredElement(String str, String str2) {
        int createNode = createNode((short) 1);
        int i = createNode >> 11;
        int i2 = createNode & 2047;
        setChunkValue(this.fNodeName, str2, i, i2);
        setChunkValue(this.fNodeURI, str, i, i2);
        return createNode;
    }

    public int getLastChild(int i, boolean z) {
        if (i == -1) {
            return -1;
        }
        int i2 = i >> 11;
        int i3 = i & 2047;
        return z ? clearChunkIndex(this.fNodeLastChild, i2, i3) : getChunkIndex(this.fNodeLastChild, i2, i3);
    }

    public int getNodeExtra(int i, boolean z) {
        if (i == -1) {
            return -1;
        }
        int i2 = i >> 11;
        int i3 = i & 2047;
        return z ? clearChunkIndex(this.fNodeExtra, i2, i3) : getChunkIndex(this.fNodeExtra, i2, i3);
    }

    public String getNodeName(int i, boolean z) {
        if (i == -1) {
            return null;
        }
        int i2 = i >> 11;
        int i3 = i & 2047;
        return z ? clearChunkValue(this.fNodeName, i2, i3) : getChunkValue(this.fNodeName, i2, i3);
    }

    public short getNodeType(int i, boolean z) {
        if (i == -1) {
            return (short) -1;
        }
        int i2 = i >> 11;
        int i3 = i & 2047;
        return (short) (z ? clearChunkIndex(this.fNodeType, i2, i3) : getChunkIndex(this.fNodeType, i2, i3));
    }

    public String getNodeURI(int i, boolean z) {
        if (i == -1) {
            return null;
        }
        int i2 = i >> 11;
        int i3 = i & 2047;
        return z ? clearChunkValue(this.fNodeURI, i2, i3) : getChunkValue(this.fNodeURI, i2, i3);
    }

    public String getNodeValueString(int i, boolean z) {
        int lastChild;
        if (i == -1) {
            return null;
        }
        int i2 = i >> 11;
        int i3 = i & 2047;
        String clearChunkValue = z ? clearChunkValue(this.fNodeValue, i2, i3) : getChunkValue(this.fNodeValue, i2, i3);
        if (clearChunkValue == null) {
            return null;
        }
        int chunkIndex = getChunkIndex(this.fNodeType, i2, i3);
        if (chunkIndex != 3) {
            if (chunkIndex == 4 && (lastChild = getLastChild(i, false)) != -1) {
                this.fBufferStr.append(clearChunkValue);
                while (lastChild != -1) {
                    int i4 = lastChild >> 11;
                    int i5 = lastChild & 2047;
                    this.fStrChunks.add(getChunkValue(this.fNodeValue, i4, i5));
                    lastChild = getChunkIndex(this.fNodePrevSib, i4, i5);
                }
                for (int size = this.fStrChunks.size() - 1; size >= 0; size--) {
                    this.fBufferStr.append((String) this.fStrChunks.get(size));
                }
                String stringBuffer = this.fBufferStr.toString();
                this.fStrChunks.clear();
                this.fBufferStr.setLength(0);
                return stringBuffer;
            }
            return clearChunkValue;
        }
        int realPrevSibling = getRealPrevSibling(i);
        if (realPrevSibling != -1 && getNodeType(realPrevSibling, false) == 3) {
            this.fStrChunks.add(clearChunkValue);
            do {
                int i6 = realPrevSibling >> 11;
                int i7 = realPrevSibling & 2047;
                this.fStrChunks.add(getChunkValue(this.fNodeValue, i6, i7));
                realPrevSibling = getChunkIndex(this.fNodePrevSib, i6, i7);
                if (realPrevSibling == -1) {
                    break;
                }
            } while (getNodeType(realPrevSibling, false) == 3);
            for (int size2 = this.fStrChunks.size() - 1; size2 >= 0; size2--) {
                this.fBufferStr.append((String) this.fStrChunks.get(size2));
            }
            String stringBuffer2 = this.fBufferStr.toString();
            this.fStrChunks.clear();
            this.fBufferStr.setLength(0);
            return stringBuffer2;
        }
        return clearChunkValue;
    }

    public int getParentNode(int i, boolean z) {
        if (i == -1) {
            return -1;
        }
        int i2 = i >> 11;
        int i3 = i & 2047;
        return z ? clearChunkIndex(this.fNodeParent, i2, i3) : getChunkIndex(this.fNodeParent, i2, i3);
    }

    public int getPrevSibling(int i, boolean z) {
        if (i == -1) {
            return -1;
        }
        int i2 = i >> 11;
        int i3 = i & 2047;
        if (getChunkIndex(this.fNodeType, i2, i3) != 3) {
            return getChunkIndex(this.fNodePrevSib, i2, i3);
        }
        while (true) {
            int chunkIndex = getChunkIndex(this.fNodePrevSib, i2, i3);
            if (chunkIndex == -1) {
                return chunkIndex;
            }
            i2 = chunkIndex >> 11;
            int i4 = chunkIndex & 2047;
            if (getChunkIndex(this.fNodeType, i2, i4) != 3) {
                return chunkIndex;
            }
            i3 = i4;
        }
    }

    public int getRealPrevSibling(int i, boolean z) {
        if (i == -1) {
            return -1;
        }
        int i2 = i >> 11;
        int i3 = i & 2047;
        return z ? clearChunkIndex(this.fNodePrevSib, i2, i3) : getChunkIndex(this.fNodePrevSib, i2, i3);
    }

    public int setDeferredAttribute(int i, String str, String str2, String str3, boolean z, boolean z2, Object obj) {
        int createDeferredAttribute = createDeferredAttribute(str, str2, str3, z);
        int i2 = createDeferredAttribute >> 11;
        int i3 = createDeferredAttribute & 2047;
        setChunkIndex(this.fNodeParent, i, i2, i3);
        int i4 = i >> 11;
        int i5 = i & 2047;
        int chunkIndex = getChunkIndex(this.fNodeExtra, i4, i5);
        if (chunkIndex != 0) {
            setChunkIndex(this.fNodePrevSib, chunkIndex, i2, i3);
        }
        setChunkIndex(this.fNodeExtra, createDeferredAttribute, i4, i5);
        int chunkIndex2 = getChunkIndex(this.fNodeExtra, i2, i3);
        if (z2) {
            setChunkIndex(this.fNodeExtra, chunkIndex2 | 512, i2, i3);
            putIdentifier(getChunkValue(this.fNodeValue, i2, i3), i);
        }
        if (obj != null) {
            int createNode = createNode((short) 20);
            setChunkIndex(this.fNodeLastChild, createNode, i2, i3);
            setChunkValue(this.fNodeValue, obj, createNode >> 11, createNode & 2047);
        }
        return createDeferredAttribute;
    }

    public final void synchronizeChildren(AttrImpl attrImpl, int i) {
        boolean mutationEvents = getMutationEvents();
        setMutationEvents(false);
        attrImpl.needsSyncChildren(false);
        int lastChild = getLastChild(i);
        if (getPrevSibling(lastChild) == -1) {
            attrImpl.value = getNodeValueString(i);
            attrImpl.hasStringValue(true);
        } else {
            ChildNode childNode = null;
            int i2 = lastChild;
            ChildNode childNode2 = null;
            while (i2 != -1) {
                ChildNode childNode3 = (ChildNode) getNodeObject(i2);
                if (childNode == null) {
                    childNode = childNode3;
                } else {
                    childNode2.previousSibling = childNode3;
                }
                childNode3.ownerNode = attrImpl;
                childNode3.isOwned(true);
                childNode3.nextSibling = childNode2;
                i2 = getPrevSibling(i2);
                childNode2 = childNode3;
            }
            if (childNode != null) {
                attrImpl.value = childNode2;
                childNode2.isFirstChild(true);
                attrImpl.lastChild(childNode);
            }
            attrImpl.hasStringValue(false);
        }
        setMutationEvents(mutationEvents);
    }

    public DeferredDocumentImpl(boolean z, boolean z2) {
        super(z2);
        this.fNodeCount = 0;
        this.fNamespacesEnabled = false;
        this.fBufferStr = new StringBuffer();
        this.fStrChunks = new ArrayList();
        needsSyncData(true);
        needsSyncChildren(true);
        this.fNamespacesEnabled = z;
    }

    public int createDeferredElement(String str, String str2, Object obj) {
        int createNode = createNode((short) 1);
        int i = createNode >> 11;
        int i2 = createNode & 2047;
        setChunkValue(this.fNodeName, str2, i, i2);
        setChunkValue(this.fNodeURI, str, i, i2);
        setChunkValue(this.fNodeValue, obj, i, i2);
        return createNode;
    }

    public String getNodeValue(int i, boolean z) {
        if (i == -1) {
            return null;
        }
        int i2 = i >> 11;
        int i3 = i & 2047;
        return z ? clearChunkValue(this.fNodeValue, i2, i3) : getChunkValue(this.fNodeValue, i2, i3);
    }

    public final void synchronizeChildren(ParentNode parentNode, int i) {
        boolean mutationEvents = getMutationEvents();
        setMutationEvents(false);
        parentNode.needsSyncChildren(false);
        int lastChild = getLastChild(i);
        ChildNode childNode = null;
        ChildNode childNode2 = null;
        while (lastChild != -1) {
            ChildNode childNode3 = (ChildNode) getNodeObject(lastChild);
            if (childNode == null) {
                childNode = childNode3;
            } else {
                childNode2.previousSibling = childNode3;
            }
            childNode3.ownerNode = parentNode;
            childNode3.isOwned(true);
            childNode3.nextSibling = childNode2;
            lastChild = getPrevSibling(lastChild);
            childNode2 = childNode3;
        }
        if (childNode != null) {
            parentNode.firstChild = childNode2;
            childNode2.isFirstChild(true);
            parentNode.lastChild(childNode);
        }
        setMutationEvents(mutationEvents);
    }
}
