package com.sun.org.apache.xalan.internal.xsltc.dom;

import com.sun.org.apache.xalan.internal.xsltc.DOM;
import com.sun.org.apache.xalan.internal.xsltc.StripFilter;
import com.sun.org.apache.xalan.internal.xsltc.TransletException;
import com.sun.org.apache.xalan.internal.xsltc.runtime.BasisLibrary;
import com.sun.org.apache.xalan.internal.xsltc.runtime.Hashtable;
import com.sun.org.apache.xml.internal.dtm.Axis;
import com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
import com.sun.org.apache.xml.internal.dtm.DTMManager;
import com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase;
import com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes10.dex */
public final class MultiDOM implements DOM {
    private static final int INITIAL_SIZE = 4;
    private static final int NO_TYPE = -2;
    private DOM[] _adapters;
    private DTMManager _dtmManager;
    private DOMAdapter _main;
    private Hashtable _documents = new Hashtable();
    private int _size = 4;
    private int _free = 1;

    /* loaded from: classes10.dex */
    public final class AxisIterator extends DTMAxisIteratorBase {
        private final int _axis;
        private int _dtmId = -1;
        private DTMAxisIterator _source;
        private final int _type;

        public AxisIterator(int i, int i2) {
            this._axis = i;
            this._type = i2;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator cloneIterator() {
            AxisIterator axisIterator = new AxisIterator(this._axis, this._type);
            DTMAxisIterator dTMAxisIterator = this._source;
            if (dTMAxisIterator != null) {
                axisIterator._source = dTMAxisIterator.cloneIterator();
            }
            axisIterator._dtmId = this._dtmId;
            return axisIterator;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int getLast() {
            DTMAxisIterator dTMAxisIterator = this._source;
            if (dTMAxisIterator != null) {
                return dTMAxisIterator.getLast();
            }
            return -1;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int getPosition() {
            DTMAxisIterator dTMAxisIterator = this._source;
            if (dTMAxisIterator != null) {
                return dTMAxisIterator.getPosition();
            }
            return -1;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public void gotoMark() {
            DTMAxisIterator dTMAxisIterator = this._source;
            if (dTMAxisIterator != null) {
                dTMAxisIterator.gotoMark();
            }
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public boolean isReverse() {
            return Axis.isReverse(this._axis);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            DTMAxisIterator dTMAxisIterator = this._source;
            if (dTMAxisIterator == null) {
                return -1;
            }
            return dTMAxisIterator.next();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator reset() {
            DTMAxisIterator dTMAxisIterator = this._source;
            if (dTMAxisIterator != null) {
                dTMAxisIterator.reset();
            }
            return this;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public void setMark() {
            DTMAxisIterator dTMAxisIterator = this._source;
            if (dTMAxisIterator != null) {
                dTMAxisIterator.setMark();
            }
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public void setRestartable(boolean z) {
            DTMAxisIterator dTMAxisIterator = this._source;
            if (dTMAxisIterator != null) {
                dTMAxisIterator.setRestartable(z);
            }
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == -1) {
                return this;
            }
            int i2 = i >>> 16;
            if (this._source == null || this._dtmId != i2) {
                if (this._type == -2) {
                    this._source = MultiDOM.this._adapters[i2].getAxisIterator(this._axis);
                } else if (this._axis == 3) {
                    this._source = MultiDOM.this._adapters[i2].getTypedChildren(this._type);
                } else {
                    this._source = MultiDOM.this._adapters[i2].getTypedAxisIterator(this._axis, this._type);
                }
            }
            this._dtmId = i2;
            this._source.setStartNode(i);
            return this;
        }
    }

    /* loaded from: classes10.dex */
    public final class NodeValueIterator extends DTMAxisIteratorBase {
        private final boolean _isReverse;
        private boolean _op;
        private int _returnType;
        private DTMAxisIterator _source;
        private String _value;

        public NodeValueIterator(DTMAxisIterator dTMAxisIterator, int i, String str, boolean z) {
            this._source = dTMAxisIterator;
            this._returnType = i;
            this._value = str;
            this._op = z;
            this._isReverse = dTMAxisIterator.isReverse();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator cloneIterator() {
            try {
                NodeValueIterator nodeValueIterator = (NodeValueIterator) super.clone();
                nodeValueIterator._source = this._source.cloneIterator();
                nodeValueIterator.setRestartable(false);
                return nodeValueIterator.reset();
            } catch (CloneNotSupportedException e) {
                BasisLibrary.runTimeError(BasisLibrary.ITERATOR_CLONE_ERR, e.toString());
                return null;
            }
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public void gotoMark() {
            this._source.gotoMark();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public boolean isReverse() {
            return this._isReverse;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int next;
            do {
                next = this._source.next();
                if (next == -1) {
                    return -1;
                }
            } while (this._value.equals(MultiDOM.this.getStringValueX(next)) != this._op);
            return this._returnType == 0 ? returnNode(next) : returnNode(MultiDOM.this.getParent(next));
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator reset() {
            this._source.reset();
            return resetPosition();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public void setMark() {
            this._source.setMark();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public void setRestartable(boolean z) {
            this._isRestartable = z;
            this._source.setRestartable(z);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (!this._isRestartable) {
                return this;
            }
            DTMAxisIterator dTMAxisIterator = this._source;
            this._startNode = i;
            dTMAxisIterator.setStartNode(i);
            return resetPosition();
        }
    }

    public MultiDOM(DOM dom) {
        DOM[] domArr = new DOM[4];
        this._adapters = domArr;
        DOMAdapter dOMAdapter = (DOMAdapter) dom;
        domArr[0] = dOMAdapter;
        this._main = dOMAdapter;
        Object dOMImpl = dOMAdapter.getDOMImpl();
        if (dOMImpl instanceof DTMDefaultBase) {
            this._dtmManager = ((DTMDefaultBase) dOMImpl).getManager();
        }
        addDOMAdapter(dOMAdapter, false);
    }

    public int addDOMAdapter(DOMAdapter dOMAdapter) {
        return addDOMAdapter(dOMAdapter, true);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public void characters(int i, SerializationHandler serializationHandler) throws TransletException {
        if (i != -1) {
            this._adapters[i >>> 16].characters(i, serializationHandler);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public void copy(int i, SerializationHandler serializationHandler) throws TransletException {
        if (i != -1) {
            this._adapters[i >>> 16].copy(i, serializationHandler);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public int getAttributeNode(int i, int i2) {
        if (i2 == -1) {
            return -1;
        }
        return this._adapters[i2 >>> 16].getAttributeNode(i, i2);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM, com.sun.org.apache.xml.internal.dtm.DTM
    public DTMAxisIterator getAxisIterator(int i) {
        return new AxisIterator(i, -2);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public DTMAxisIterator getChildren(int i) {
        return this._adapters[getDTMId(i)].getChildren(i);
    }

    public DOM getDOMAdapter(String str) {
        Integer num = (Integer) this._documents.get(str);
        if (num == null) {
            return null;
        }
        return this._adapters[num.intValue()];
    }

    public int getDTMId(int i) {
        if (i == -1) {
            return 0;
        }
        int i2 = i >>> 16;
        while (i2 >= 2) {
            DOM[] domArr = this._adapters;
            if (domArr[i2] != domArr[i2 - 1]) {
                break;
            }
            i2--;
        }
        return i2;
    }

    public DTMManager getDTMManager() {
        return this._dtmManager;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM, com.sun.org.apache.xml.internal.dtm.DTM
    public int getDocument() {
        return this._main.getDocument();
    }

    public int getDocumentMask(String str) {
        Integer num = (Integer) this._documents.get(str);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public String getDocumentURI(int i) {
        if (i == -1) {
            i = 0;
        }
        return this._adapters[i >>> 16].getDocumentURI(0);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public Hashtable getElementsWithIDs() {
        return this._main.getElementsWithIDs();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM, com.sun.org.apache.xml.internal.dtm.DTM
    public int getExpandedTypeID(int i) {
        if (i != -1) {
            return this._adapters[i >>> 16].getExpandedTypeID(i);
        }
        return -1;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public DTMAxisIterator getIterator() {
        return this._main.getIterator();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public String getLanguage(int i) {
        return this._adapters[getDTMId(i)].getLanguage(i);
    }

    public DOM getMain() {
        return this._main;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public int getNSType(int i) {
        return this._adapters[getDTMId(i)].getNSType(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public DTMAxisIterator getNamespaceAxisIterator(int i, int i2) {
        return this._main.getNamespaceAxisIterator(i, i2);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public String getNamespaceName(int i) {
        return i == -1 ? "" : this._adapters[i >>> 16].getNamespaceName(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public int getNamespaceType(int i) {
        return this._adapters[getDTMId(i)].getNamespaceType(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public int getNodeHandle(int i) {
        return this._main.getNodeHandle(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public int getNodeIdent(int i) {
        return this._adapters[i >>> 16].getNodeIdent(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM, com.sun.org.apache.xml.internal.dtm.DTM
    public String getNodeName(int i) {
        return i == -1 ? "" : this._adapters[i >>> 16].getNodeName(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM, com.sun.org.apache.xml.internal.dtm.DTM
    public String getNodeNameX(int i) {
        return i == -1 ? "" : this._adapters[i >>> 16].getNodeNameX(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public DTMAxisIterator getNodeValueIterator(DTMAxisIterator dTMAxisIterator, int i, String str, boolean z) {
        return new NodeValueIterator(dTMAxisIterator, i, str, z);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public DTMAxisIterator getNthDescendant(int i, int i2, boolean z) {
        return this._adapters[getDTMId(i)].getNthDescendant(i, i2, z);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public SerializationHandler getOutputDomBuilder() {
        return this._main.getOutputDomBuilder();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM, com.sun.org.apache.xml.internal.dtm.DTM
    public int getParent(int i) {
        if (i == -1) {
            return -1;
        }
        return this._adapters[i >>> 16].getParent(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public DOM getResultTreeFrag(int i, int i2) {
        return this._main.getResultTreeFrag(i, i2);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public int getSize() {
        int i = 0;
        for (int i2 = 0; i2 < this._size; i2++) {
            i += this._adapters[i2].getSize();
        }
        return i;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public String getStringValue() {
        return this._main.getStringValue();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public String getStringValueX(int i) {
        return i == -1 ? "" : this._adapters[i >>> 16].getStringValueX(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM, com.sun.org.apache.xml.internal.dtm.DTM
    public DTMAxisIterator getTypedAxisIterator(int i, int i2) {
        return new AxisIterator(i, i2);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public DTMAxisIterator getTypedChildren(int i) {
        return new AxisIterator(3, i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM, com.sun.org.apache.xml.internal.dtm.DTM
    public String getUnparsedEntityURI(String str) {
        return this._main.getUnparsedEntityURI(str);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public boolean isAttribute(int i) {
        if (i == -1) {
            return false;
        }
        return this._adapters[i >>> 16].isAttribute(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public boolean isElement(int i) {
        if (i == -1) {
            return false;
        }
        return this._adapters[i >>> 16].isElement(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public boolean lessThan(int i, int i2) {
        if (i == -1) {
            return true;
        }
        if (i2 == -1) {
            return false;
        }
        int dTMId = getDTMId(i);
        int dTMId2 = getDTMId(i2);
        return dTMId == dTMId2 ? this._adapters[dTMId].lessThan(i, i2) : dTMId < dTMId2;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public String lookupNamespace(int i, String str) throws TransletException {
        return this._main.lookupNamespace(i, str);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public Node makeNode(int i) {
        if (i == -1) {
            return null;
        }
        return this._adapters[getDTMId(i)].makeNode(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public NodeList makeNodeList(int i) {
        if (i == -1) {
            return null;
        }
        return this._adapters[getDTMId(i)].makeNodeList(i);
    }

    public int nextMask() {
        return this._free;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public DTMAxisIterator orderNodes(DTMAxisIterator dTMAxisIterator, int i) {
        return this._adapters[getDTMId(i)].orderNodes(dTMAxisIterator, i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public void setFilter(StripFilter stripFilter) {
        for (int i = 0; i < this._free; i++) {
            DOM dom = this._adapters[i];
            if (dom != null) {
                dom.setFilter(stripFilter);
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public void setupMapping(String[] strArr, String[] strArr2, int[] iArr, String[] strArr3) {
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public String shallowCopy(int i, SerializationHandler serializationHandler) throws TransletException {
        return i == -1 ? "" : this._adapters[i >>> 16].shallowCopy(i, serializationHandler);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0047, code lost:
    
        r11._free = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004b, code lost:
    
        if (r3 != 1) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004d, code lost:
    
        r11._adapters[r4] = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0065, code lost:
    
        if (r13 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0067, code lost:
    
        r11._documents.put(r12.getDocumentURI(0), new java.lang.Integer(r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0077, code lost:
    
        if ((r0 instanceof com.sun.org.apache.xalan.internal.xsltc.dom.AdaptiveResultTreeImpl) == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0079, code lost:
    
        r6 = ((com.sun.org.apache.xalan.internal.xsltc.dom.AdaptiveResultTreeImpl) r0).getNestedDOM();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007f, code lost:
    
        if (r6 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0081, code lost:
    
        addDOMAdapter(new com.sun.org.apache.xalan.internal.xsltc.dom.DOMAdapter(r6, r12.getNamesArray(), r12.getUrisArray(), r12.getTypesArray(), r12.getNamespaceArray()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x009a, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0052, code lost:
    
        if (r1 == null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
    
        r3 = r3 - 1;
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0056, code lost:
    
        if (r3 < 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0058, code lost:
    
        r4 = r1.elementAt(r3) >>> 16;
        r11._adapters[r4] = r12;
        r3 = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0034, code lost:
    
        if (r4 >= r5) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0036, code lost:
    
        r7 = r11._size * 2;
        r11._size = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x003c, code lost:
    
        if (r7 <= r4) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003e, code lost:
    
        r7 = new com.sun.org.apache.xalan.internal.xsltc.dom.DOMAdapter[r7];
        java.lang.System.arraycopy(r11._adapters, 0, r7, 0, r5);
        r11._adapters = r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int addDOMAdapter(com.sun.org.apache.xalan.internal.xsltc.dom.DOMAdapter r12, boolean r13) {
        /*
            r11 = this;
            com.sun.org.apache.xalan.internal.xsltc.DOM r0 = r12.getDOMImpl()
            boolean r1 = r0 instanceof com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
            r2 = 1
            if (r1 == 0) goto L1d
            r1 = r0
            com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase r1 = (com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase) r1
            com.sun.org.apache.xml.internal.utils.SuballocatedIntVector r1 = r1.getDTMIDs()
            int r3 = r1.size()
            int r4 = r3 + (-1)
            int r4 = r1.elementAt(r4)
            int r4 = r4 >>> 16
            goto L31
        L1d:
            boolean r1 = r0 instanceof com.sun.org.apache.xalan.internal.xsltc.dom.SimpleResultTreeImpl
            r3 = 0
            if (r1 == 0) goto L2e
            r1 = r0
            com.sun.org.apache.xalan.internal.xsltc.dom.SimpleResultTreeImpl r1 = (com.sun.org.apache.xalan.internal.xsltc.dom.SimpleResultTreeImpl) r1
            int r1 = r1.getDocument()
            int r4 = r1 >>> 16
            r1 = r3
            r3 = r2
            goto L31
        L2e:
            r4 = r2
            r1 = r3
            r3 = r4
        L31:
            int r5 = r11._size
            r6 = 0
            if (r4 < r5) goto L47
        L36:
            int r7 = r11._size
            int r7 = r7 * 2
            r11._size = r7
            if (r7 <= r4) goto L36
            com.sun.org.apache.xalan.internal.xsltc.dom.DOMAdapter[] r7 = new com.sun.org.apache.xalan.internal.xsltc.dom.DOMAdapter[r7]
            com.sun.org.apache.xalan.internal.xsltc.DOM[] r8 = r11._adapters
            java.lang.System.arraycopy(r8, r6, r7, r6, r5)
            r11._adapters = r7
        L47:
            int r5 = r4 + 1
            r11._free = r5
            if (r3 != r2) goto L52
            com.sun.org.apache.xalan.internal.xsltc.DOM[] r1 = r11._adapters
            r1[r4] = r12
            goto L65
        L52:
            if (r1 == 0) goto L65
            int r3 = r3 - r2
            r4 = r6
        L56:
            if (r3 < 0) goto L65
            int r2 = r1.elementAt(r3)
            int r4 = r2 >>> 16
            com.sun.org.apache.xalan.internal.xsltc.DOM[] r2 = r11._adapters
            r2[r4] = r12
            int r3 = r3 + (-1)
            goto L56
        L65:
            if (r13 == 0) goto L75
            java.lang.String r13 = r12.getDocumentURI(r6)
            com.sun.org.apache.xalan.internal.xsltc.runtime.Hashtable r1 = r11._documents
            java.lang.Integer r2 = new java.lang.Integer
            r2.<init>(r4)
            r1.put(r13, r2)
        L75:
            boolean r13 = r0 instanceof com.sun.org.apache.xalan.internal.xsltc.dom.AdaptiveResultTreeImpl
            if (r13 == 0) goto L9a
            com.sun.org.apache.xalan.internal.xsltc.dom.AdaptiveResultTreeImpl r0 = (com.sun.org.apache.xalan.internal.xsltc.dom.AdaptiveResultTreeImpl) r0
            com.sun.org.apache.xalan.internal.xsltc.DOM r6 = r0.getNestedDOM()
            if (r6 == 0) goto L9a
            com.sun.org.apache.xalan.internal.xsltc.dom.DOMAdapter r13 = new com.sun.org.apache.xalan.internal.xsltc.dom.DOMAdapter
            java.lang.String[] r7 = r12.getNamesArray()
            java.lang.String[] r8 = r12.getUrisArray()
            int[] r9 = r12.getTypesArray()
            java.lang.String[] r10 = r12.getNamespaceArray()
            r5 = r13
            r5.<init>(r6, r7, r8, r9, r10)
            r11.addDOMAdapter(r13)
        L9a:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.xsltc.dom.MultiDOM.addDOMAdapter(com.sun.org.apache.xalan.internal.xsltc.dom.DOMAdapter, boolean):int");
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public void copy(DTMAxisIterator dTMAxisIterator, SerializationHandler serializationHandler) throws TransletException {
        while (true) {
            int next = dTMAxisIterator.next();
            if (next == -1) {
                return;
            } else {
                this._adapters[next >>> 16].copy(next, serializationHandler);
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public DOM getResultTreeFrag(int i, int i2, boolean z) {
        return this._main.getResultTreeFrag(i, i2, z);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public Node makeNode(DTMAxisIterator dTMAxisIterator) {
        return this._main.makeNode(dTMAxisIterator);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.DOM
    public NodeList makeNodeList(DTMAxisIterator dTMAxisIterator) {
        return this._main.makeNodeList(dTMAxisIterator);
    }
}
