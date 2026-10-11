package com.sun.org.apache.xml.internal.dtm.ref;

import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMException;
import com.sun.org.apache.xml.internal.dtm.DTMFilter;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.dtm.DTMManager;
import com.sun.org.apache.xml.internal.dtm.ref.dom2dtm.DOM2DTM;
import com.sun.org.apache.xml.internal.dtm.ref.dom2dtm.DOM2DTMdefaultNamespaceDeclarationNode;
import com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM;
import com.sun.org.apache.xml.internal.res.XMLMessages;
import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xml.internal.utils.SuballocatedIntVector;
import com.sun.org.apache.xml.internal.utils.XMLReaderManager;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Source;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXSource;
import org.w3c.dom.Attr;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes10.dex */
public class DTMManagerDefault extends DTMManager {
    private static final boolean DEBUG = false;
    private static final boolean DUMPTREE = false;
    protected DTM[] m_dtms = new DTM[256];
    int[] m_dtm_offsets = new int[256];
    protected XMLReaderManager m_readerManager = null;
    protected DefaultHandler m_defaultHandler = new DefaultHandler();
    private ExpandedNameTable m_expandedNameTable = new ExpandedNameTable();

    public synchronized void addDTM(DTM dtm, int i) {
        addDTM(dtm, i, 0);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public synchronized DTMIterator createDTMIterator(int i, DTMFilter dTMFilter, boolean z) {
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public synchronized DTM createDocumentFragment() {
        DocumentBuilderFactory newInstance;
        try {
            newInstance = DocumentBuilderFactory.newInstance();
            newInstance.setNamespaceAware(true);
        } catch (Exception e) {
            throw new DTMException(e);
        }
        return getDTM(new DOMSource(newInstance.newDocumentBuilder().newDocument().createDocumentFragment()), true, null, false, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0110 A[Catch: all -> 0x019b, TRY_ENTER, TryCatch #13 {all -> 0x019b, blocks: (B:40:0x00be, B:90:0x00c6, B:47:0x00dc, B:48:0x00e2, B:49:0x00ea, B:63:0x0110, B:65:0x0116, B:66:0x0119, B:68:0x011c, B:87:0x0122, B:88:0x012a, B:83:0x012c, B:84:0x0130, B:93:0x00d4, B:106:0x0152, B:108:0x015e, B:110:0x0161, B:113:0x0166, B:120:0x018c, B:121:0x0194, B:116:0x0196, B:117:0x019a), top: B:39:0x00be, inners: #7, #16, #15 }] */
    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized com.sun.org.apache.xml.internal.dtm.DTM getDTM(javax.xml.transform.Source r17, boolean r18, com.sun.org.apache.xml.internal.dtm.DTMWSFilter r19, boolean r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.dtm.ref.DTMManagerDefault.getDTM(javax.xml.transform.Source, boolean, com.sun.org.apache.xml.internal.dtm.DTMWSFilter, boolean, boolean):com.sun.org.apache.xml.internal.dtm.DTM");
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public synchronized int getDTMHandleFromNode(Node node) {
        int handleOfNode;
        try {
            if (node == null) {
                throw new IllegalArgumentException(XMLMessages.createXMLMessage("ER_NODE_NON_NULL", null));
            }
            if (node instanceof DTMNodeProxy) {
                return ((DTMNodeProxy) node).getDTMNodeNumber();
            }
            int length = this.m_dtms.length;
            for (int i = 0; i < length; i++) {
                DTM dtm = this.m_dtms[i];
                if (dtm != null && (dtm instanceof DOM2DTM) && (handleOfNode = ((DOM2DTM) dtm).getHandleOfNode(node)) != -1) {
                    return handleOfNode;
                }
            }
            Node node2 = node;
            for (Node ownerElement = node.getNodeType() == 2 ? ((Attr) node).getOwnerElement() : node.getParentNode(); ownerElement != null; ownerElement = ownerElement.getParentNode()) {
                node2 = ownerElement;
            }
            DOM2DTM dom2dtm = (DOM2DTM) getDTM(new DOMSource(node2), false, null, true, true);
            int attributeNode = node instanceof DOM2DTMdefaultNamespaceDeclarationNode ? dom2dtm.getAttributeNode(dom2dtm.getHandleOfNode(((Attr) node).getOwnerElement()), node.getNamespaceURI(), node.getLocalName()) : dom2dtm.getHandleOfNode(node);
            if (-1 != attributeNode) {
                return attributeNode;
            }
            throw new RuntimeException(XMLMessages.createXMLMessage("ER_COULD_NOT_RESOLVE_NODE", null));
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public synchronized int getDTMIdentity(DTM dtm) {
        if (dtm instanceof DTMDefaultBase) {
            DTMDefaultBase dTMDefaultBase = (DTMDefaultBase) dtm;
            if (dTMDefaultBase.getManager() != this) {
                return -1;
            }
            return dTMDefaultBase.getDTMIDs().elementAt(0);
        }
        int length = this.m_dtms.length;
        for (int i = 0; i < length; i++) {
            if (this.m_dtms[i] == dtm && this.m_dtm_offsets[i] == 0) {
                return i << 16;
            }
        }
        return -1;
    }

    public ExpandedNameTable getExpandedNameTable(DTM dtm) {
        return this.m_expandedNameTable;
    }

    public synchronized int getFirstFreeDTMID() {
        int length = this.m_dtms.length;
        for (int i = 1; i < length; i++) {
            if (this.m_dtms[i] == null) {
                return i;
            }
        }
        return length;
    }

    public synchronized XMLReader getXMLReader(Source source) {
        XMLReader xMLReader;
        try {
            xMLReader = source instanceof SAXSource ? ((SAXSource) source).getXMLReader() : null;
            if (xMLReader == null) {
                if (this.m_readerManager == null) {
                    this.m_readerManager = XMLReaderManager.getInstance();
                }
                xMLReader = this.m_readerManager.getXMLReader();
            }
        } catch (SAXException e) {
            throw new DTMException(e.getMessage(), e);
        }
        return xMLReader;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public synchronized boolean release(DTM dtm, boolean z) {
        if (dtm instanceof SAX2DTM) {
            ((SAX2DTM) dtm).clearCoRoutine();
        }
        if (dtm instanceof DTMDefaultBase) {
            SuballocatedIntVector dTMIDs = ((DTMDefaultBase) dtm).getDTMIDs();
            for (int size = dTMIDs.size() - 1; size >= 0; size--) {
                this.m_dtms[dTMIDs.elementAt(size) >>> 16] = null;
            }
        } else {
            int dTMIdentity = getDTMIdentity(dtm);
            if (dTMIdentity >= 0) {
                this.m_dtms[dTMIdentity >>> 16] = null;
            }
        }
        dtm.documentRelease();
        return true;
    }

    public synchronized void releaseXMLReader(XMLReader xMLReader) {
        XMLReaderManager xMLReaderManager = this.m_readerManager;
        if (xMLReaderManager != null) {
            xMLReaderManager.releaseXMLReader(xMLReader);
        }
    }

    public synchronized void addDTM(DTM dtm, int i, int i2) {
        if (i < 65536) {
            int length = this.m_dtms.length;
            if (length <= i) {
                int min = Math.min(i + 256, 65536);
                DTM[] dtmArr = new DTM[min];
                System.arraycopy(this.m_dtms, 0, dtmArr, 0, length);
                this.m_dtms = dtmArr;
                int[] iArr = new int[min];
                System.arraycopy(this.m_dtm_offsets, 0, iArr, 0, length);
                this.m_dtm_offsets = iArr;
            }
            this.m_dtms[i] = dtm;
            this.m_dtm_offsets[i] = i2;
            dtm.documentRegistration();
        } else {
            throw new DTMException(XMLMessages.createXMLMessage("ER_NO_DTMIDS_AVAIL", null));
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public synchronized DTMIterator createDTMIterator(String str, PrefixResolver prefixResolver) {
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public synchronized DTMIterator createDTMIterator(int i) {
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public synchronized DTMIterator createDTMIterator(Object obj, int i) {
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTMManager
    public synchronized DTM getDTM(int i) {
        try {
        } catch (ArrayIndexOutOfBoundsException e) {
            if (i == -1) {
                return null;
            }
            throw e;
        }
        return this.m_dtms[i >>> 16];
    }
}
