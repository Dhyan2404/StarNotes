package com.sun.org.apache.xml.internal.dtm.ref.sax2dtm;

import com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
import com.sun.org.apache.xml.internal.dtm.DTMException;
import com.sun.org.apache.xml.internal.dtm.DTMManager;
import com.sun.org.apache.xml.internal.dtm.DTMWSFilter;
import com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators;
import com.sun.org.apache.xml.internal.dtm.ref.ExtendedType;
import com.sun.org.apache.xml.internal.res.XMLMessages;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import com.sun.org.apache.xml.internal.utils.FastStringBuffer;
import com.sun.org.apache.xml.internal.utils.SuballocatedIntVector;
import com.sun.org.apache.xml.internal.utils.XMLString;
import com.sun.org.apache.xml.internal.utils.XMLStringDefault;
import com.sun.org.apache.xml.internal.utils.XMLStringFactory;
import java.util.Vector;
import javax.xml.transform.Source;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class SAX2DTM2 extends SAX2DTM {
    private static final String EMPTY_STR = "";
    private static final XMLString EMPTY_XML_STR = new XMLStringDefault("");
    protected static final int TEXT_LENGTH_BITS = 10;
    protected static final int TEXT_LENGTH_MAX = 1023;
    protected static final int TEXT_OFFSET_BITS = 21;
    protected static final int TEXT_OFFSET_MAX = 2097151;
    protected int m_MASK;
    protected int m_SHIFT;
    protected int m_blocksize;
    protected boolean m_buildIdIndex;
    private int[][] m_exptype_map;
    private int[] m_exptype_map0;
    protected ExtendedType[] m_extendedTypes;
    private int[][] m_firstch_map;
    private int[] m_firstch_map0;
    private int m_maxNodeIndex;
    private int[][] m_nextsib_map;
    private int[] m_nextsib_map0;
    private int[][] m_parent_map;
    private int[] m_parent_map0;
    private int m_valueIndex;
    protected Vector m_values;

    /* loaded from: classes10.dex */
    public class AncestorIterator extends DTMDefaultBaseIterators.InternalAxisIteratorBase {
        private static final int m_blocksize = 32;
        int[] m_ancestors;
        int m_ancestorsPos;
        int m_markedPos;
        int m_realStartNode;
        int m_size;

        public AncestorIterator() {
            super();
            this.m_ancestors = new int[32];
            this.m_size = 0;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator cloneIterator() {
            this._isRestartable = false;
            try {
                AncestorIterator ancestorIterator = (AncestorIterator) super.clone();
                ancestorIterator._startNode = this._startNode;
                return ancestorIterator;
            } catch (CloneNotSupportedException unused) {
                throw new DTMException(XMLMessages.createXMLMessage("ER_ITERATOR_CLONE_NOT_SUPPORTED", null));
            }
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int getStartNode() {
            return this.m_realStartNode;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.InternalAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public void gotoMark() {
            int i = this.m_markedPos;
            this.m_ancestorsPos = i;
            this._currentNode = i >= 0 ? this.m_ancestors[i] : -1;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public final boolean isReverse() {
            return true;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            int i2 = this.m_ancestorsPos - 1;
            this.m_ancestorsPos = i2;
            this._currentNode = i2 >= 0 ? this.m_ancestors[i2] : -1;
            return returnNode(i);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator reset() {
            int i = this.m_size - 1;
            this.m_ancestorsPos = i;
            this._currentNode = i >= 0 ? this.m_ancestors[i] : -1;
            return resetPosition();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.InternalAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public void setMark() {
            this.m_markedPos = this.m_ancestorsPos;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = SAX2DTM2.this.getDocument();
            }
            this.m_realStartNode = i;
            if (!this._isRestartable) {
                return this;
            }
            int makeNodeIdentity = SAX2DTM2.this.makeNodeIdentity(i);
            this.m_size = 0;
            if (makeNodeIdentity == -1) {
                this._currentNode = -1;
                this.m_ancestorsPos = 0;
                return this;
            }
            if (!this._includeSelf) {
                makeNodeIdentity = SAX2DTM2.this._parent2(makeNodeIdentity);
                i = SAX2DTM2.this.makeNodeHandle(makeNodeIdentity);
            }
            this._startNode = i;
            while (makeNodeIdentity != -1) {
                int i2 = this.m_size;
                int[] iArr = this.m_ancestors;
                if (i2 >= iArr.length) {
                    int[] iArr2 = new int[i2 * 2];
                    System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                    this.m_ancestors = iArr2;
                }
                int[] iArr3 = this.m_ancestors;
                int i3 = this.m_size;
                this.m_size = i3 + 1;
                iArr3[i3] = i;
                makeNodeIdentity = SAX2DTM2.this._parent2(makeNodeIdentity);
                i = SAX2DTM2.this.makeNodeHandle(makeNodeIdentity);
            }
            int i4 = this.m_size - 1;
            this.m_ancestorsPos = i4;
            this._currentNode = i4 >= 0 ? this.m_ancestors[i4] : -1;
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public final class AttributeIterator extends DTMDefaultBaseIterators.InternalAxisIteratorBase {
        public AttributeIterator() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            if (i == -1) {
                return -1;
            }
            this._currentNode = SAX2DTM2.this.getNextAttributeIdentity(i);
            return returnNode(SAX2DTM2.this.makeNodeHandle(i));
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = SAX2DTM2.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            SAX2DTM2 sax2dtm2 = SAX2DTM2.this;
            this._currentNode = sax2dtm2.getFirstAttributeIdentity(sax2dtm2.makeNodeIdentity(i));
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public final class ChildrenIterator extends DTMDefaultBaseIterators.InternalAxisIteratorBase {
        public ChildrenIterator() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            if (i == -1) {
                return -1;
            }
            this._currentNode = SAX2DTM2.this._nextsib2(i);
            return returnNode(SAX2DTM2.this.makeNodeHandle(i));
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = SAX2DTM2.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            int i2 = -1;
            if (i != -1) {
                SAX2DTM2 sax2dtm2 = SAX2DTM2.this;
                i2 = sax2dtm2._firstch2(sax2dtm2.makeNodeIdentity(i));
            }
            this._currentNode = i2;
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public class DescendantIterator extends DTMDefaultBaseIterators.InternalAxisIteratorBase {
        public DescendantIterator() {
            super();
        }

        public final boolean isDescendant(int i) {
            int _parent2 = SAX2DTM2.this._parent2(i);
            int i2 = this._startNode;
            return _parent2 >= i2 || i2 == i;
        }

        /* JADX WARN: Code restructure failed: missing block: B:46:0x0069, code lost:
        
            r7._currentNode = -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x006b, code lost:
        
            return -1;
         */
        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int next() {
            /*
                r7 = this;
                int r0 = r7._startNode
                r1 = -1
                if (r0 != r1) goto L6
                return r1
            L6:
                boolean r2 = r7._includeSelf
                if (r2 == 0) goto L1f
                int r2 = r7._currentNode
                int r3 = r2 + 1
                if (r3 != r0) goto L1f
                com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2 r0 = com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.this
                int r2 = r2 + 1
                r7._currentNode = r2
                int r0 = r0.makeNodeHandle(r2)
                int r7 = r7.returnNode(r0)
                return r7
            L1f:
                int r2 = r7._currentNode
                r3 = 13
                r4 = 2
                r5 = 3
                if (r0 != 0) goto L45
            L27:
                int r2 = r2 + 1
                com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2 r0 = com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.this
                int r0 = r0._exptype2(r2)
                if (r1 != r0) goto L34
                r7._currentNode = r1
                return r1
            L34:
                if (r0 == r5) goto L27
                com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2 r6 = com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.this
                com.sun.org.apache.xml.internal.dtm.ref.ExtendedType[] r6 = r6.m_extendedTypes
                r0 = r6[r0]
                int r0 = r0.getNodeType()
                if (r0 == r4) goto L27
                if (r0 == r3) goto L27
                goto L5c
            L45:
                int r2 = r2 + 1
                com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2 r0 = com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.this
                int r0 = r0._type2(r2)
                if (r1 == r0) goto L69
                boolean r6 = r7.isDescendant(r2)
                if (r6 != 0) goto L56
                goto L69
            L56:
                if (r4 == r0) goto L45
                if (r5 == r0) goto L45
                if (r3 == r0) goto L45
            L5c:
                r7._currentNode = r2
                com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2 r0 = com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.this
                int r0 = r0.makeNodeHandle(r2)
                int r7 = r7.returnNode(r0)
                return r7
            L69:
                r7._currentNode = r1
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.DescendantIterator.next():int");
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator reset() {
            boolean z = this._isRestartable;
            this._isRestartable = true;
            setStartNode(SAX2DTM2.this.makeNodeHandle(this._startNode));
            this._isRestartable = z;
            return this;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = SAX2DTM2.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            int makeNodeIdentity = SAX2DTM2.this.makeNodeIdentity(i);
            this._startNode = makeNodeIdentity;
            if (this._includeSelf) {
                makeNodeIdentity--;
            }
            this._currentNode = makeNodeIdentity;
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public class FollowingIterator extends DTMDefaultBaseIterators.InternalAxisIteratorBase {
        public FollowingIterator() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            int makeNodeIdentity = SAX2DTM2.this.makeNodeIdentity(i);
            while (true) {
                makeNodeIdentity++;
                int _type2 = SAX2DTM2.this._type2(makeNodeIdentity);
                if (-1 == _type2) {
                    this._currentNode = -1;
                    return returnNode(i);
                }
                if (2 != _type2 && 13 != _type2) {
                    this._currentNode = SAX2DTM2.this.makeNodeHandle(makeNodeIdentity);
                    return returnNode(i);
                }
            }
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            int _firstch2;
            int _nextsib2;
            if (i == 0) {
                i = SAX2DTM2.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            int makeNodeIdentity = SAX2DTM2.this.makeNodeIdentity(i);
            int _type2 = SAX2DTM2.this._type2(makeNodeIdentity);
            if ((2 == _type2 || 13 == _type2) && -1 != (_firstch2 = SAX2DTM2.this._firstch2((makeNodeIdentity = SAX2DTM2.this._parent2(makeNodeIdentity))))) {
                this._currentNode = SAX2DTM2.this.makeNodeHandle(_firstch2);
                return resetPosition();
            }
            do {
                _nextsib2 = SAX2DTM2.this._nextsib2(makeNodeIdentity);
                if (-1 == _nextsib2) {
                    makeNodeIdentity = SAX2DTM2.this._parent2(makeNodeIdentity);
                }
                if (-1 != _nextsib2) {
                    break;
                }
            } while (-1 != makeNodeIdentity);
            this._currentNode = SAX2DTM2.this.makeNodeHandle(_nextsib2);
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public class FollowingSiblingIterator extends DTMDefaultBaseIterators.InternalAxisIteratorBase {
        public FollowingSiblingIterator() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            int _nextsib2 = i != -1 ? SAX2DTM2.this._nextsib2(i) : -1;
            this._currentNode = _nextsib2;
            return returnNode(SAX2DTM2.this.makeNodeHandle(_nextsib2));
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = SAX2DTM2.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            this._currentNode = SAX2DTM2.this.makeNodeIdentity(i);
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public final class ParentIterator extends DTMDefaultBaseIterators.InternalAxisIteratorBase {
        private int _nodeType;

        public ParentIterator() {
            super();
            this._nodeType = -1;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            if (i == -1) {
                return -1;
            }
            int i2 = this._nodeType;
            if (i2 == -1) {
                this._currentNode = -1;
                return returnNode(SAX2DTM2.this.makeNodeHandle(i));
            }
            if (i2 >= 14) {
                if (i2 == SAX2DTM2.this._exptype2(i)) {
                    this._currentNode = -1;
                    return returnNode(SAX2DTM2.this.makeNodeHandle(i));
                }
            } else if (i2 == SAX2DTM2.this._type2(i)) {
                this._currentNode = -1;
                return returnNode(SAX2DTM2.this.makeNodeHandle(i));
            }
            return -1;
        }

        public DTMAxisIterator setNodeType(int i) {
            this._nodeType = i;
            return this;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = SAX2DTM2.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            if (i != -1) {
                SAX2DTM2 sax2dtm2 = SAX2DTM2.this;
                this._currentNode = sax2dtm2._parent2(sax2dtm2.makeNodeIdentity(i));
            } else {
                this._currentNode = -1;
            }
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public class PrecedingIterator extends DTMDefaultBaseIterators.InternalAxisIteratorBase {
        protected int _markedDescendant;
        protected int _markedNode;
        protected int _markedsp;
        private final int _maxAncestors;
        protected int _oldsp;
        protected int _sp;
        protected int[] _stack;

        public PrecedingIterator() {
            super();
            this._maxAncestors = 8;
            this._stack = new int[8];
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator cloneIterator() {
            this._isRestartable = false;
            try {
                PrecedingIterator precedingIterator = (PrecedingIterator) super.clone();
                int[] iArr = this._stack;
                int[] iArr2 = new int[iArr.length];
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                precedingIterator._stack = iArr2;
                return precedingIterator;
            } catch (CloneNotSupportedException unused) {
                throw new DTMException(XMLMessages.createXMLMessage("ER_ITERATOR_CLONE_NOT_SUPPORTED", null));
            }
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.InternalAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public void gotoMark() {
            this._sp = this._markedsp;
            this._currentNode = this._markedNode;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public boolean isReverse() {
            return true;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            while (true) {
                this._currentNode = i + 1;
                int i2 = this._sp;
                if (i2 < 0) {
                    return -1;
                }
                int i3 = this._currentNode;
                if (i3 < this._stack[i2]) {
                    int _type2 = SAX2DTM2.this._type2(i3);
                    if (_type2 != 2 && _type2 != 13) {
                        return returnNode(SAX2DTM2.this.makeNodeHandle(this._currentNode));
                    }
                } else {
                    this._sp = i2 - 1;
                }
                i = this._currentNode;
            }
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator reset() {
            this._sp = this._oldsp;
            return resetPosition();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.InternalAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public void setMark() {
            this._markedsp = this._sp;
            this._markedNode = this._currentNode;
            this._markedDescendant = this._stack[0];
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = SAX2DTM2.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            int makeNodeIdentity = SAX2DTM2.this.makeNodeIdentity(i);
            if (SAX2DTM2.this._type2(makeNodeIdentity) == 2) {
                makeNodeIdentity = SAX2DTM2.this._parent2(makeNodeIdentity);
            }
            this._startNode = makeNodeIdentity;
            this._stack[0] = makeNodeIdentity;
            int i2 = 0;
            while (true) {
                makeNodeIdentity = SAX2DTM2.this._parent2(makeNodeIdentity);
                if (makeNodeIdentity == -1) {
                    break;
                }
                i2++;
                int[] iArr = this._stack;
                if (i2 == iArr.length) {
                    int[] iArr2 = new int[i2 * 2];
                    System.arraycopy(iArr, 0, iArr2, 0, i2);
                    this._stack = iArr2;
                }
                this._stack[i2] = makeNodeIdentity;
            }
            if (i2 > 0) {
                i2--;
            }
            this._currentNode = this._stack[i2];
            this._sp = i2;
            this._oldsp = i2;
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public class PrecedingSiblingIterator extends DTMDefaultBaseIterators.InternalAxisIteratorBase {
        protected int _startNodeID;

        public PrecedingSiblingIterator() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public boolean isReverse() {
            return true;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            if (i == this._startNodeID || i == -1) {
                return -1;
            }
            this._currentNode = SAX2DTM2.this._nextsib2(i);
            return returnNode(SAX2DTM2.this.makeNodeHandle(i));
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = SAX2DTM2.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            int makeNodeIdentity = SAX2DTM2.this.makeNodeIdentity(i);
            this._startNodeID = makeNodeIdentity;
            if (makeNodeIdentity == -1) {
                this._currentNode = makeNodeIdentity;
                return resetPosition();
            }
            int _type2 = SAX2DTM2.this._type2(makeNodeIdentity);
            if (2 == _type2 || 13 == _type2) {
                this._currentNode = makeNodeIdentity;
            } else {
                int _parent2 = SAX2DTM2.this._parent2(makeNodeIdentity);
                this._currentNode = _parent2;
                if (-1 != _parent2) {
                    this._currentNode = SAX2DTM2.this._firstch2(_parent2);
                } else {
                    this._currentNode = makeNodeIdentity;
                }
            }
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public final class TypedAncestorIterator extends AncestorIterator {
        private final int _nodeType;

        public TypedAncestorIterator(int i) {
            super();
            this._nodeType = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int getLast() {
            return this.m_size;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int getNodeByPosition(int i) {
            if (i <= 0 || i > this.m_size) {
                return -1;
            }
            return this.m_ancestors[i - 1];
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.AncestorIterator, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = SAX2DTM2.this.getDocument();
            }
            this.m_realStartNode = i;
            if (!this._isRestartable) {
                return this;
            }
            int makeNodeIdentity = SAX2DTM2.this.makeNodeIdentity(i);
            this.m_size = 0;
            if (makeNodeIdentity == -1) {
                this._currentNode = -1;
                this.m_ancestorsPos = 0;
                return this;
            }
            int i2 = this._nodeType;
            if (!this._includeSelf) {
                makeNodeIdentity = SAX2DTM2.this._parent2(makeNodeIdentity);
                i = SAX2DTM2.this.makeNodeHandle(makeNodeIdentity);
            }
            this._startNode = i;
            if (i2 >= 14) {
                while (makeNodeIdentity != -1) {
                    if (SAX2DTM2.this._exptype2(makeNodeIdentity) == i2) {
                        int i3 = this.m_size;
                        int[] iArr = this.m_ancestors;
                        if (i3 >= iArr.length) {
                            int[] iArr2 = new int[i3 * 2];
                            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                            this.m_ancestors = iArr2;
                        }
                        int[] iArr3 = this.m_ancestors;
                        int i4 = this.m_size;
                        this.m_size = i4 + 1;
                        iArr3[i4] = SAX2DTM2.this.makeNodeHandle(makeNodeIdentity);
                    }
                    makeNodeIdentity = SAX2DTM2.this._parent2(makeNodeIdentity);
                }
            } else {
                while (makeNodeIdentity != -1) {
                    int _exptype2 = SAX2DTM2.this._exptype2(makeNodeIdentity);
                    if ((_exptype2 < 14 && _exptype2 == i2) || (_exptype2 >= 14 && SAX2DTM2.this.m_extendedTypes[_exptype2].getNodeType() == i2)) {
                        int i5 = this.m_size;
                        int[] iArr4 = this.m_ancestors;
                        if (i5 >= iArr4.length) {
                            int[] iArr5 = new int[i5 * 2];
                            System.arraycopy(iArr4, 0, iArr5, 0, iArr4.length);
                            this.m_ancestors = iArr5;
                        }
                        int[] iArr6 = this.m_ancestors;
                        int i6 = this.m_size;
                        this.m_size = i6 + 1;
                        iArr6[i6] = SAX2DTM2.this.makeNodeHandle(makeNodeIdentity);
                    }
                    makeNodeIdentity = SAX2DTM2.this._parent2(makeNodeIdentity);
                }
            }
            int i7 = this.m_size - 1;
            this.m_ancestorsPos = i7;
            this._currentNode = i7 >= 0 ? this.m_ancestors[i7] : -1;
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public final class TypedAttributeIterator extends DTMDefaultBaseIterators.InternalAxisIteratorBase {
        private final int _nodeType;

        public TypedAttributeIterator(int i) {
            super();
            this._nodeType = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            this._currentNode = -1;
            return returnNode(i);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            this._currentNode = SAX2DTM2.this.getTypedAttribute(i, this._nodeType);
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public final class TypedChildrenIterator extends DTMDefaultBaseIterators.InternalAxisIteratorBase {
        private final int _nodeType;

        public TypedChildrenIterator(int i) {
            super();
            this._nodeType = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int getNodeByPosition(int i) {
            if (i <= 0) {
                return -1;
            }
            int i2 = this._currentNode;
            int i3 = this._nodeType;
            int i4 = 0;
            if (i3 != 1) {
                while (i2 != -1) {
                    if (SAX2DTM2.this._exptype2(i2) == i3 && (i4 = i4 + 1) == i) {
                        return SAX2DTM2.this.makeNodeHandle(i2);
                    }
                    i2 = SAX2DTM2.this._nextsib2(i2);
                }
                return -1;
            }
            while (i2 != -1) {
                if (SAX2DTM2.this._exptype2(i2) >= 14 && (i4 = i4 + 1) == i) {
                    return SAX2DTM2.this.makeNodeHandle(i2);
                }
                i2 = SAX2DTM2.this._nextsib2(i2);
            }
            return -1;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            if (i == -1) {
                return -1;
            }
            int i2 = this._nodeType;
            if (i2 != 1) {
                while (i != -1 && SAX2DTM2.this._exptype2(i) != i2) {
                    i = SAX2DTM2.this._nextsib2(i);
                }
            } else {
                while (i != -1 && SAX2DTM2.this._exptype2(i) < 14) {
                    i = SAX2DTM2.this._nextsib2(i);
                }
            }
            if (i == -1) {
                this._currentNode = -1;
                return -1;
            }
            this._currentNode = SAX2DTM2.this._nextsib2(i);
            return returnNode(SAX2DTM2.this.makeNodeHandle(i));
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = SAX2DTM2.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            int i2 = -1;
            if (i != -1) {
                SAX2DTM2 sax2dtm2 = SAX2DTM2.this;
                i2 = sax2dtm2._firstch2(sax2dtm2.makeNodeIdentity(i));
            }
            this._currentNode = i2;
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public final class TypedDescendantIterator extends DescendantIterator {
        private final int _nodeType;

        public TypedDescendantIterator(int i) {
            super();
            this._nodeType = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.DescendantIterator, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int _exptype2;
            int i = this._startNode;
            if (i == -1) {
                return -1;
            }
            int i2 = this._currentNode;
            int i3 = this._nodeType;
            if (i3 == 1) {
                if (i != 0) {
                    while (true) {
                        i2++;
                        int _exptype22 = SAX2DTM2.this._exptype2(i2);
                        if (-1 != _exptype22 && (SAX2DTM2.this._parent2(i2) >= i || i == i2)) {
                            if (_exptype22 >= 14 && SAX2DTM2.this.m_extendedTypes[_exptype22].getNodeType() == 1) {
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    this._currentNode = -1;
                    return -1;
                }
                while (true) {
                    i2++;
                    int _exptype23 = SAX2DTM2.this._exptype2(i2);
                    if (-1 != _exptype23) {
                        if (_exptype23 >= 14 && SAX2DTM2.this.m_extendedTypes[_exptype23].getNodeType() == 1) {
                            break;
                        }
                    } else {
                        this._currentNode = -1;
                        return -1;
                    }
                }
                this._currentNode = i2;
                return returnNode(SAX2DTM2.this.makeNodeHandle(i2));
            }
            do {
                i2++;
                _exptype2 = SAX2DTM2.this._exptype2(i2);
                if (-1 == _exptype2 || (SAX2DTM2.this._parent2(i2) < i && i != i2)) {
                    this._currentNode = -1;
                    return -1;
                }
            } while (_exptype2 != i3);
            this._currentNode = i2;
            return returnNode(SAX2DTM2.this.makeNodeHandle(i2));
        }
    }

    /* loaded from: classes10.dex */
    public final class TypedFollowingIterator extends FollowingIterator {
        private final int _nodeType;

        public TypedFollowingIterator(int i) {
            super();
            this._nodeType = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.FollowingIterator, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i;
            int _type2;
            int _type22;
            int i2 = this._nodeType;
            int makeNodeIdentity = SAX2DTM2.this.makeNodeIdentity(this._currentNode);
            if (i2 < 14) {
                while (true) {
                    i = makeNodeIdentity;
                    while (true) {
                        i++;
                        _type2 = SAX2DTM2.this._type2(i);
                        if (_type2 == -1 || (2 != _type2 && 13 != _type2)) {
                            break;
                        }
                    }
                    if (_type2 == -1) {
                        i = -1;
                    }
                    if (makeNodeIdentity == -1 || SAX2DTM2.this._exptype2(makeNodeIdentity) == i2 || SAX2DTM2.this._type2(makeNodeIdentity) == i2) {
                        break;
                    }
                    makeNodeIdentity = i;
                }
            } else {
                while (true) {
                    i = makeNodeIdentity;
                    while (true) {
                        i++;
                        _type22 = SAX2DTM2.this._type2(i);
                        if (_type22 == -1 || (2 != _type22 && 13 != _type22)) {
                            break;
                        }
                    }
                    if (_type22 == -1) {
                        i = -1;
                    }
                    if (makeNodeIdentity == -1 || SAX2DTM2.this._exptype2(makeNodeIdentity) == i2) {
                        break;
                    }
                    makeNodeIdentity = i;
                }
            }
            this._currentNode = SAX2DTM2.this.makeNodeHandle(i);
            if (makeNodeIdentity == -1) {
                return -1;
            }
            return returnNode(SAX2DTM2.this.makeNodeHandle(makeNodeIdentity));
        }
    }

    /* loaded from: classes10.dex */
    public final class TypedFollowingSiblingIterator extends FollowingSiblingIterator {
        private final int _nodeType;

        public TypedFollowingSiblingIterator(int i) {
            super();
            this._nodeType = i;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
        
            if (r4.this$0._exptype2(r0) == r2) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
        
            r4._currentNode = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
        
            if (r0 != (-1)) goto L20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x003e, code lost:
        
            return returnNode(r4.this$0.makeNodeHandle(r0));
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:?, code lost:
        
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x001c, code lost:
        
            r0 = r4.this$0._nextsib2(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0022, code lost:
        
            if (r0 == (-1)) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x002c, code lost:
        
            if (r4.this$0._exptype2(r0) >= 14) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:6:0x0009, code lost:
        
            if (r2 != 1) goto L7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x000b, code lost:
        
            r0 = r4.this$0._nextsib2(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0011, code lost:
        
            if (r0 == (-1)) goto L22;
         */
        @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.FollowingSiblingIterator, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int next() {
            /*
                r4 = this;
                int r0 = r4._currentNode
                r1 = -1
                if (r0 != r1) goto L6
                return r1
            L6:
                int r2 = r4._nodeType
                r3 = 1
                if (r2 == r3) goto L1c
            Lb:
                com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2 r3 = com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.this
                int r0 = r3._nextsib2(r0)
                if (r0 == r1) goto L2f
                com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2 r3 = com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.this
                int r3 = r3._exptype2(r0)
                if (r3 == r2) goto L2f
                goto Lb
            L1c:
                com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2 r2 = com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.this
                int r0 = r2._nextsib2(r0)
                if (r0 == r1) goto L2f
                com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2 r2 = com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.this
                int r2 = r2._exptype2(r0)
                r3 = 14
                if (r2 >= r3) goto L2f
                goto L1c
            L2f:
                r4._currentNode = r0
                if (r0 != r1) goto L34
                goto L3e
            L34:
                com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2 r1 = com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.this
                int r0 = r1.makeNodeHandle(r0)
                int r1 = r4.returnNode(r0)
            L3e:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.TypedFollowingSiblingIterator.next():int");
        }
    }

    /* loaded from: classes10.dex */
    public final class TypedPrecedingIterator extends PrecedingIterator {
        private final int _nodeType;

        public TypedPrecedingIterator(int i) {
            super();
            this._nodeType = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.PrecedingIterator, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            int i2 = this._nodeType;
            if (i2 >= 14) {
                while (true) {
                    i++;
                    int i3 = this._sp;
                    if (i3 < 0) {
                        break;
                    }
                    if (i >= this._stack[i3]) {
                        int i4 = i3 - 1;
                        this._sp = i4;
                        if (i4 < 0) {
                            break;
                        }
                    } else if (SAX2DTM2.this._exptype2(i) == i2) {
                        break;
                    }
                }
                i = -1;
            } else {
                while (true) {
                    i++;
                    int i5 = this._sp;
                    if (i5 < 0) {
                        break;
                    }
                    if (i >= this._stack[i5]) {
                        int i6 = i5 - 1;
                        this._sp = i6;
                        if (i6 < 0) {
                            break;
                        }
                    } else {
                        int _exptype2 = SAX2DTM2.this._exptype2(i);
                        if (_exptype2 < 14) {
                            if (_exptype2 == i2) {
                                break;
                            }
                        } else if (SAX2DTM2.this.m_extendedTypes[_exptype2].getNodeType() == i2) {
                            break;
                        }
                    }
                }
                i = -1;
            }
            this._currentNode = i;
            if (i == -1) {
                return -1;
            }
            return returnNode(SAX2DTM2.this.makeNodeHandle(i));
        }
    }

    /* loaded from: classes10.dex */
    public final class TypedPrecedingSiblingIterator extends PrecedingSiblingIterator {
        private final int _nodeType;

        public TypedPrecedingSiblingIterator(int i) {
            super();
            this._nodeType = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int getLast() {
            int i = this._last;
            if (i != -1) {
                return i;
            }
            setMark();
            int i2 = this._currentNode;
            int i3 = this._nodeType;
            int i4 = this._startNodeID;
            int i5 = 0;
            if (i3 != 1) {
                while (i2 != -1 && i2 != i4) {
                    if (SAX2DTM2.this._exptype2(i2) == i3) {
                        i5++;
                    }
                    i2 = SAX2DTM2.this._nextsib2(i2);
                }
            } else {
                while (i2 != -1 && i2 != i4) {
                    if (SAX2DTM2.this._exptype2(i2) >= 14) {
                        i5++;
                    }
                    i2 = SAX2DTM2.this._nextsib2(i2);
                }
            }
            gotoMark();
            this._last = i5;
            return i5;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
        
            if (r0 != r2) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
        
            r5._currentNode = r5.this$0._nextsib2(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0049, code lost:
        
            return returnNode(r5.this$0.makeNodeHandle(r0));
         */
        @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.PrecedingSiblingIterator, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int next() {
            /*
                r5 = this;
                int r0 = r5._currentNode
                int r1 = r5._nodeType
                int r2 = r5._startNodeID
                r3 = 1
                r4 = -1
                if (r1 == r3) goto L1d
            La:
                if (r0 == r4) goto L32
                if (r0 == r2) goto L32
                com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2 r3 = com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.this
                int r3 = r3._exptype2(r0)
                if (r3 == r1) goto L32
                com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2 r3 = com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.this
                int r0 = r3._nextsib2(r0)
                goto La
            L1d:
                if (r0 == r4) goto L32
                if (r0 == r2) goto L32
                com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2 r1 = com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.this
                int r1 = r1._exptype2(r0)
                r3 = 14
                if (r1 >= r3) goto L32
                com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2 r1 = com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.this
                int r0 = r1._nextsib2(r0)
                goto L1d
            L32:
                if (r0 == r4) goto L4a
                if (r0 != r2) goto L37
                goto L4a
            L37:
                com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2 r1 = com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.this
                int r1 = r1._nextsib2(r0)
                r5._currentNode = r1
                com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2 r1 = com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.this
                int r0 = r1.makeNodeHandle(r0)
                int r5 = r5.returnNode(r0)
                return r5
            L4a:
                r5._currentNode = r4
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.TypedPrecedingSiblingIterator.next():int");
        }
    }

    /* loaded from: classes10.dex */
    public class TypedRootIterator extends DTMDefaultBaseIterators.RootIterator {
        private final int _nodeType;

        public TypedRootIterator(int i) {
            super();
            this._nodeType = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.RootIterator, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._startNode;
            if (i == this._currentNode) {
                return -1;
            }
            SAX2DTM2 sax2dtm2 = SAX2DTM2.this;
            int _exptype2 = sax2dtm2._exptype2(sax2dtm2.makeNodeIdentity(i));
            this._currentNode = i;
            int i2 = this._nodeType;
            if (i2 >= 14) {
                if (i2 == _exptype2) {
                    return returnNode(i);
                }
            } else if (_exptype2 < 14) {
                if (_exptype2 == i2) {
                    return returnNode(i);
                }
            } else if (SAX2DTM2.this.m_extendedTypes[_exptype2].getNodeType() == this._nodeType) {
                return returnNode(i);
            }
            return -1;
        }
    }

    /* loaded from: classes10.dex */
    public final class TypedSingletonIterator extends DTMDefaultBaseIterators.SingletonIterator {
        private final int _nodeType;

        public TypedSingletonIterator(int i) {
            super(SAX2DTM2.this);
            this._nodeType = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.SingletonIterator, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            if (i == -1) {
                return -1;
            }
            this._currentNode = -1;
            if (this._nodeType >= 14) {
                SAX2DTM2 sax2dtm2 = SAX2DTM2.this;
                if (sax2dtm2._exptype2(sax2dtm2.makeNodeIdentity(i)) == this._nodeType) {
                    return returnNode(i);
                }
            } else {
                SAX2DTM2 sax2dtm22 = SAX2DTM2.this;
                if (sax2dtm22._type2(sax2dtm22.makeNodeIdentity(i)) == this._nodeType) {
                    return returnNode(i);
                }
            }
            return -1;
        }
    }

    public SAX2DTM2(DTMManager dTMManager, Source source, int i, DTMWSFilter dTMWSFilter, XMLStringFactory xMLStringFactory, boolean z) {
        this(dTMManager, source, i, dTMWSFilter, xMLStringFactory, z, 512, true, true, false);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public final int _exptype(int i) {
        return this.m_exptype.elementAt(i);
    }

    public final int _exptype2(int i) {
        return i < this.m_blocksize ? this.m_exptype_map0[i] : this.m_exptype_map[i >>> this.m_SHIFT][this.m_MASK & i];
    }

    public final int _exptype2Type(int i) {
        if (-1 != i) {
            return this.m_extendedTypes[i].getNodeType();
        }
        return -1;
    }

    public final int _firstch2(int i) {
        return i < this.m_blocksize ? this.m_firstch_map0[i] : this.m_firstch_map[i >>> this.m_SHIFT][this.m_MASK & i];
    }

    public final int _nextsib2(int i) {
        return i < this.m_blocksize ? this.m_nextsib_map0[i] : this.m_nextsib_map[i >>> this.m_SHIFT][this.m_MASK & i];
    }

    public final int _parent2(int i) {
        return i < this.m_blocksize ? this.m_parent_map0[i] : this.m_parent_map[i >>> this.m_SHIFT][this.m_MASK & i];
    }

    public final int _type2(int i) {
        int i2 = i < this.m_blocksize ? this.m_exptype_map0[i] : this.m_exptype_map[i >>> this.m_SHIFT][i & this.m_MASK];
        if (-1 != i2) {
            return this.m_extendedTypes[i2].getNodeType();
        }
        return -1;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM
    public final int addNode(int i, int i2, int i3, int i4, int i5, boolean z) {
        int i6 = this.m_size;
        this.m_size = i6 + 1;
        if (i6 == this.m_maxNodeIndex) {
            addNewDTMID(i6);
            this.m_maxNodeIndex += 65536;
        }
        this.m_firstch.addElement(-1);
        this.m_nextsib.addElement(-1);
        this.m_parent.addElement(i3);
        this.m_exptype.addElement(i2);
        this.m_dataOrQName.addElement(i5);
        SuballocatedIntVector suballocatedIntVector = this.m_prevsib;
        if (suballocatedIntVector != null) {
            suballocatedIntVector.addElement(i4);
        }
        if (this.m_locator != null && this.m_useSourceLocationProperty) {
            setSourceLocation();
        }
        if (i != 2) {
            if (i == 13) {
                declareNamespaceInContext(i3, i6);
            } else if (-1 != i4) {
                this.m_nextsib.setElementAt(i6, i4);
            } else if (-1 != i3) {
                this.m_firstch.setElementAt(i6, i3);
            }
        }
        return i6;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM
    public final void charactersFlush() {
        if (this.m_textPendingStart >= 0) {
            int size = this.m_chars.size() - this.m_textPendingStart;
            if (getShouldStripWhitespace() ? this.m_chars.isWhitespace(this.m_textPendingStart, size) : false) {
                this.m_chars.setLength(this.m_textPendingStart);
            } else if (size > 0) {
                if (size > 1023 || this.m_textPendingStart > TEXT_OFFSET_MAX) {
                    this.m_previous = addNode(this.m_coalescedTextType, 3, this.m_parents.peek(), this.m_previous, -this.m_data.size(), false);
                    this.m_data.addElement(this.m_textPendingStart);
                    this.m_data.addElement(size);
                } else {
                    this.m_previous = addNode(this.m_coalescedTextType, 3, this.m_parents.peek(), this.m_previous, size + (this.m_textPendingStart << 10), false);
                }
            }
            this.m_textPendingStart = -1;
            this.m_coalescedTextType = 3;
            this.m_textType = 3;
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM, org.xml.sax.ext.LexicalHandler
    public void comment(char[] cArr, int i, int i2) throws SAXException {
        if (this.m_insideDTD) {
            return;
        }
        charactersFlush();
        this.m_values.addElement(new String(cArr, i, i2));
        int i3 = this.m_valueIndex;
        this.m_valueIndex = i3 + 1;
        this.m_previous = addNode(8, 8, this.m_parents.peek(), this.m_previous, i3, false);
    }

    public final void copyAttribute(int i, int i2, SerializationHandler serializationHandler) throws SAXException {
        String str;
        ExtendedType extendedType = this.m_extendedTypes[i2];
        String namespace = extendedType.getNamespace();
        String localName = extendedType.getLocalName();
        int _dataOrQName = _dataOrQName(i);
        String str2 = null;
        if (_dataOrQName <= 0) {
            int i3 = -_dataOrQName;
            int elementAt = this.m_data.elementAt(i3);
            _dataOrQName = this.m_data.elementAt(i3 + 1);
            str = this.m_valuesOrPrefixes.indexToString(elementAt);
            int indexOf = str.indexOf(58);
            if (indexOf > 0) {
                str2 = str.substring(0, indexOf);
            }
        } else {
            str = null;
        }
        if (namespace.length() != 0) {
            serializationHandler.namespaceAfterStartElement(str2, namespace);
        }
        if (str2 != null) {
            localName = str;
        }
        serializationHandler.addAttribute(localName, (String) this.m_values.elementAt(_dataOrQName));
    }

    public final void copyAttributes(int i, SerializationHandler serializationHandler) throws SAXException {
        int firstAttributeIdentity = getFirstAttributeIdentity(i);
        while (firstAttributeIdentity != -1) {
            copyAttribute(firstAttributeIdentity, _exptype2(firstAttributeIdentity), serializationHandler);
            firstAttributeIdentity = getNextAttributeIdentity(firstAttributeIdentity);
        }
    }

    public final String copyElement(int i, int i2, SerializationHandler serializationHandler) throws SAXException {
        ExtendedType extendedType = this.m_extendedTypes[i2];
        String namespace = extendedType.getNamespace();
        String localName = extendedType.getLocalName();
        if (namespace.length() == 0) {
            serializationHandler.startElement(localName);
            return localName;
        }
        int elementAt = this.m_dataOrQName.elementAt(i);
        if (elementAt == 0) {
            serializationHandler.startElement(localName);
            serializationHandler.namespaceAfterStartElement("", namespace);
            return localName;
        }
        if (elementAt < 0) {
            elementAt = this.m_data.elementAt(-elementAt);
        }
        String indexToString = this.m_valuesOrPrefixes.indexToString(elementAt);
        serializationHandler.startElement(indexToString);
        int indexOf = indexToString.indexOf(58);
        serializationHandler.namespaceAfterStartElement(indexOf > 0 ? indexToString.substring(0, indexOf) : null, namespace);
        return indexToString;
    }

    public final void copyNS(int i, SerializationHandler serializationHandler, boolean z) throws SAXException {
        int nextNamespaceNode2;
        SuballocatedIntVector suballocatedIntVector;
        Vector vector;
        SuballocatedIntVector suballocatedIntVector2 = this.m_namespaceDeclSetElements;
        if (suballocatedIntVector2 == null || suballocatedIntVector2.size() != 1 || (vector = this.m_namespaceDeclSets) == null || ((SuballocatedIntVector) vector.elementAt(0)).size() != 1) {
            if (z) {
                suballocatedIntVector = findNamespaceContext(i);
                if (suballocatedIntVector == null || suballocatedIntVector.size() < 1) {
                    return;
                } else {
                    nextNamespaceNode2 = makeNodeIdentity(suballocatedIntVector.elementAt(0));
                }
            } else {
                nextNamespaceNode2 = getNextNamespaceNode2(i);
                suballocatedIntVector = null;
            }
            int i2 = 1;
            while (nextNamespaceNode2 != -1) {
                String localName = this.m_extendedTypes[_exptype2(nextNamespaceNode2)].getLocalName();
                int elementAt = this.m_dataOrQName.elementAt(nextNamespaceNode2);
                if (elementAt < 0) {
                    elementAt = this.m_data.elementAt((-elementAt) + 1);
                }
                serializationHandler.namespaceAfterStartElement(localName, (String) this.m_values.elementAt(elementAt));
                if (!z) {
                    nextNamespaceNode2 = getNextNamespaceNode2(nextNamespaceNode2);
                } else {
                    if (i2 >= suballocatedIntVector.size()) {
                        return;
                    }
                    nextNamespaceNode2 = makeNodeIdentity(suballocatedIntVector.elementAt(i2));
                    i2++;
                }
            }
        }
    }

    public final void copyTextNode(int i, SerializationHandler serializationHandler) throws SAXException {
        if (i != -1) {
            int elementAt = this.m_dataOrQName.elementAt(i);
            if (elementAt >= 0) {
                this.m_chars.sendSAXcharacters(serializationHandler, elementAt >>> 10, elementAt & 1023);
            } else {
                int i2 = -elementAt;
                this.m_chars.sendSAXcharacters(serializationHandler, this.m_data.elementAt(i2), this.m_data.elementAt(i2 + 1));
            }
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM, com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public final void dispatchCharactersEvents(int i, ContentHandler contentHandler, boolean z) throws SAXException {
        int elementAt;
        int makeNodeIdentity = makeNodeIdentity(i);
        if (makeNodeIdentity == -1) {
            return;
        }
        int _type2 = _type2(makeNodeIdentity);
        int i2 = 0;
        if (_type2 == 1 || _type2 == 9) {
            int _firstch2 = _firstch2(makeNodeIdentity);
            if (-1 != _firstch2) {
                int i3 = -1;
                do {
                    int _exptype2 = _exptype2(_firstch2);
                    if (_exptype2 == 3 || _exptype2 == 4) {
                        int elementAt2 = this.m_dataOrQName.elementAt(_firstch2);
                        if (elementAt2 >= 0) {
                            if (-1 == i3) {
                                i3 = elementAt2 >>> 10;
                            }
                            elementAt = elementAt2 & 1023;
                        } else {
                            if (-1 == i3) {
                                i3 = this.m_data.elementAt(-elementAt2);
                            }
                            elementAt = this.m_data.elementAt((-elementAt2) + 1);
                        }
                        i2 += elementAt;
                    }
                    _firstch2++;
                } while (_parent2(_firstch2) >= makeNodeIdentity);
                if (i2 > 0) {
                    if (z) {
                        this.m_chars.sendNormalizedSAXcharacters(contentHandler, i3, i2);
                        return;
                    } else {
                        this.m_chars.sendSAXcharacters(contentHandler, i3, i2);
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (3 != _type2 && 4 != _type2) {
            int elementAt3 = this.m_dataOrQName.elementAt(makeNodeIdentity);
            if (elementAt3 < 0) {
                elementAt3 = this.m_data.elementAt((-elementAt3) + 1);
            }
            String str = (String) this.m_values.elementAt(elementAt3);
            if (z) {
                FastStringBuffer.sendNormalizedSAXcharacters(str.toCharArray(), 0, str.length(), contentHandler);
                return;
            } else {
                contentHandler.characters(str.toCharArray(), 0, str.length());
                return;
            }
        }
        int elementAt4 = this.m_dataOrQName.elementAt(makeNodeIdentity);
        if (elementAt4 >= 0) {
            if (z) {
                this.m_chars.sendNormalizedSAXcharacters(contentHandler, elementAt4 >>> 10, elementAt4 & 1023);
                return;
            } else {
                this.m_chars.sendSAXcharacters(contentHandler, elementAt4 >>> 10, elementAt4 & 1023);
                return;
            }
        }
        if (z) {
            int i4 = -elementAt4;
            this.m_chars.sendNormalizedSAXcharacters(contentHandler, this.m_data.elementAt(i4), this.m_data.elementAt(i4 + 1));
        } else {
            int i5 = -elementAt4;
            this.m_chars.sendSAXcharacters(contentHandler, this.m_data.elementAt(i5), this.m_data.elementAt(i5 + 1));
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM, org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        super.endDocument();
        this.m_exptype.addElement(-1);
        this.m_parent.addElement(-1);
        this.m_nextsib.addElement(-1);
        this.m_firstch.addElement(-1);
        this.m_extendedTypes = this.m_expandedNameTable.getExtendedTypes();
        this.m_exptype_map = this.m_exptype.getMap();
        this.m_nextsib_map = this.m_nextsib.getMap();
        this.m_firstch_map = this.m_firstch.getMap();
        this.m_parent_map = this.m_parent.getMap();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        charactersFlush();
        this.m_contextIndexes.quickPop(1);
        int peek = this.m_contextIndexes.peek();
        if (peek != this.m_prefixMappings.size()) {
            this.m_prefixMappings.setSize(peek);
        }
        this.m_previous = this.m_parents.pop();
        popShouldStripWhitespace();
    }

    public final int getExpandedTypeID2(int i) {
        int makeNodeIdentity = makeNodeIdentity(i);
        if (makeNodeIdentity != -1) {
            return makeNodeIdentity < this.m_blocksize ? this.m_exptype_map0[makeNodeIdentity] : this.m_exptype_map[makeNodeIdentity >>> this.m_SHIFT][this.m_MASK & makeNodeIdentity];
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
    
        if (13 == r1) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x001b, code lost:
    
        return makeNodeHandle(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0020, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
    
        if (1 != _type2(r5)) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000f, code lost:
    
        r5 = r5 + 1;
        r1 = _type2(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
    
        if (r1 != 2) goto L11;
     */
    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int getFirstAttribute(int r5) {
        /*
            r4 = this;
            int r5 = r4.makeNodeIdentity(r5)
            r0 = -1
            if (r5 != r0) goto L8
            return r0
        L8:
            int r1 = r4._type2(r5)
            r2 = 1
            if (r2 != r1) goto L20
        Lf:
            int r5 = r5 + r2
            int r1 = r4._type2(r5)
            r3 = 2
            if (r1 != r3) goto L1c
            int r4 = r4.makeNodeHandle(r5)
            return r4
        L1c:
            r3 = 13
            if (r3 == r1) goto Lf
        L20:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.getFirstAttribute(int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0016, code lost:
    
        if (13 == r1) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0013, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0018, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0009, code lost:
    
        if (1 != _type2(r5)) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000b, code lost:
    
        r5 = r5 + 1;
        r1 = _type2(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0011, code lost:
    
        if (r1 != 2) goto L10;
     */
    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getFirstAttributeIdentity(int r5) {
        /*
            r4 = this;
            r0 = -1
            if (r5 != r0) goto L4
            return r0
        L4:
            int r1 = r4._type2(r5)
            r2 = 1
            if (r2 != r1) goto L18
        Lb:
            int r5 = r5 + r2
            int r1 = r4._type2(r5)
            r3 = 2
            if (r1 != r3) goto L14
            return r5
        L14:
            r3 = 13
            if (r3 == r1) goto Lb
        L18:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2.getFirstAttributeIdentity(int):int");
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM
    public int getIdForNamespace(String str) {
        int indexOf = this.m_values.indexOf(str);
        if (indexOf >= 0) {
            return indexOf;
        }
        this.m_values.addElement(str);
        int i = this.m_valueIndex;
        this.m_valueIndex = i + 1;
        return i;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM, com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getLocalName(int i) {
        int _exptype = _exptype(makeNodeIdentity(i));
        if (_exptype != 7) {
            return this.m_expandedNameTable.getLocalName(_exptype);
        }
        return this.m_valuesOrPrefixes.indexToString(this.m_data.elementAt(-_dataOrQName(makeNodeIdentity(i))));
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public int getNextAttributeIdentity(int i) {
        int _type2;
        do {
            i++;
            _type2 = _type2(i);
            if (_type2 == 2) {
                return i;
            }
        } while (_type2 == 13);
        return -1;
    }

    public final int getNextNamespaceNode2(int i) {
        int _type2;
        do {
            i++;
            _type2 = _type2(i);
        } while (_type2 == 2);
        if (_type2 == 13) {
            return i;
        }
        return -1;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM, com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getNodeName(int i) {
        int makeNodeIdentity = makeNodeIdentity(i);
        ExtendedType extendedType = this.m_extendedTypes[_exptype2(makeNodeIdentity)];
        if (extendedType.getNamespace().length() != 0) {
            int elementAt = this.m_dataOrQName.elementAt(makeNodeIdentity);
            if (elementAt == 0) {
                return extendedType.getLocalName();
            }
            if (elementAt < 0) {
                elementAt = this.m_data.elementAt(-elementAt);
            }
            return this.m_valuesOrPrefixes.indexToString(elementAt);
        }
        int nodeType = extendedType.getNodeType();
        String localName = extendedType.getLocalName();
        if (nodeType != 13) {
            if (nodeType == 7) {
                return this.m_valuesOrPrefixes.indexToString(this.m_data.elementAt(-_dataOrQName(makeNodeIdentity)));
            }
            return localName.length() == 0 ? getFixedNames(nodeType) : localName;
        }
        if (localName.length() == 0) {
            return "xmlns";
        }
        return "xmlns:" + localName;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM, com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public final String getNodeNameX(int i) {
        int elementAt;
        int makeNodeIdentity = makeNodeIdentity(i);
        int _exptype2 = _exptype2(makeNodeIdentity);
        if (_exptype2 == 7) {
            return this.m_valuesOrPrefixes.indexToString(this.m_data.elementAt(-_dataOrQName(makeNodeIdentity)));
        }
        ExtendedType extendedType = this.m_extendedTypes[_exptype2];
        if (extendedType.getNamespace().length() != 0 && (elementAt = this.m_dataOrQName.elementAt(makeNodeIdentity)) != 0) {
            if (elementAt < 0) {
                elementAt = this.m_data.elementAt(-elementAt);
            }
            return this.m_valuesOrPrefixes.indexToString(elementAt);
        }
        return extendedType.getLocalName();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM, com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public String getNodeValue(int i) {
        int makeNodeIdentity = makeNodeIdentity(i);
        int _type2 = _type2(makeNodeIdentity);
        if (_type2 == 3 || _type2 == 4) {
            int _dataOrQName = _dataOrQName(makeNodeIdentity);
            if (_dataOrQName > 0) {
                return this.m_chars.getString(_dataOrQName >>> 10, _dataOrQName & 1023);
            }
            int i2 = -_dataOrQName;
            return this.m_chars.getString(this.m_data.elementAt(i2), this.m_data.elementAt(i2 + 1));
        }
        if (1 == _type2 || 11 == _type2 || 9 == _type2) {
            return null;
        }
        int elementAt = this.m_dataOrQName.elementAt(makeNodeIdentity);
        if (elementAt < 0) {
            elementAt = this.m_data.elementAt((-elementAt) + 1);
        }
        return (String) this.m_values.elementAt(elementAt);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM, com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase, com.sun.org.apache.xml.internal.dtm.DTM
    public XMLString getStringValue(int i) {
        int elementAt;
        int makeNodeIdentity = makeNodeIdentity(i);
        if (makeNodeIdentity == -1) {
            return EMPTY_XML_STR;
        }
        int _type2 = _type2(makeNodeIdentity);
        if (_type2 != 1 && _type2 != 9) {
            if (3 != _type2 && 4 != _type2) {
                int elementAt2 = this.m_dataOrQName.elementAt(makeNodeIdentity);
                if (elementAt2 < 0) {
                    elementAt2 = this.m_data.elementAt((-elementAt2) + 1);
                }
                XMLStringFactory xMLStringFactory = this.m_xstrf;
                if (xMLStringFactory != null) {
                    return xMLStringFactory.newstr((String) this.m_values.elementAt(elementAt2));
                }
                return new XMLStringDefault((String) this.m_values.elementAt(elementAt2));
            }
            int elementAt3 = this.m_dataOrQName.elementAt(makeNodeIdentity);
            if (elementAt3 >= 0) {
                XMLStringFactory xMLStringFactory2 = this.m_xstrf;
                if (xMLStringFactory2 != null) {
                    return xMLStringFactory2.newstr(this.m_chars, elementAt3 >>> 10, elementAt3 & 1023);
                }
                return new XMLStringDefault(this.m_chars.getString(elementAt3 >>> 10, elementAt3 & 1023));
            }
            XMLStringFactory xMLStringFactory3 = this.m_xstrf;
            if (xMLStringFactory3 != null) {
                int i2 = -elementAt3;
                return xMLStringFactory3.newstr(this.m_chars, this.m_data.elementAt(i2), this.m_data.elementAt(i2 + 1));
            }
            int i3 = -elementAt3;
            return new XMLStringDefault(this.m_chars.getString(this.m_data.elementAt(i3), this.m_data.elementAt(i3 + 1)));
        }
        int _firstch2 = _firstch2(makeNodeIdentity);
        if (-1 != _firstch2) {
            int i4 = 0;
            int i5 = -1;
            do {
                int _exptype2 = _exptype2(_firstch2);
                if (_exptype2 == 3 || _exptype2 == 4) {
                    int elementAt4 = this.m_dataOrQName.elementAt(_firstch2);
                    if (elementAt4 >= 0) {
                        if (-1 == i5) {
                            i5 = elementAt4 >>> 10;
                        }
                        elementAt = elementAt4 & 1023;
                    } else {
                        if (-1 == i5) {
                            i5 = this.m_data.elementAt(-elementAt4);
                        }
                        elementAt = this.m_data.elementAt((-elementAt4) + 1);
                    }
                    i4 += elementAt;
                }
                _firstch2++;
            } while (_parent2(_firstch2) >= makeNodeIdentity);
            if (i4 > 0) {
                XMLStringFactory xMLStringFactory4 = this.m_xstrf;
                if (xMLStringFactory4 != null) {
                    return xMLStringFactory4.newstr(this.m_chars, i5, i4);
                }
                return new XMLStringDefault(this.m_chars.getString(i5, i4));
            }
            return EMPTY_XML_STR;
        }
        return EMPTY_XML_STR;
    }

    public final String getStringValueX(int i) {
        int elementAt;
        int makeNodeIdentity = makeNodeIdentity(i);
        if (makeNodeIdentity == -1) {
            return "";
        }
        int _type2 = _type2(makeNodeIdentity);
        if (_type2 != 1 && _type2 != 9) {
            if (3 != _type2 && 4 != _type2) {
                int elementAt2 = this.m_dataOrQName.elementAt(makeNodeIdentity);
                if (elementAt2 < 0) {
                    elementAt2 = this.m_data.elementAt((-elementAt2) + 1);
                }
                return (String) this.m_values.elementAt(elementAt2);
            }
            int elementAt3 = this.m_dataOrQName.elementAt(makeNodeIdentity);
            if (elementAt3 >= 0) {
                return this.m_chars.getString(elementAt3 >>> 10, elementAt3 & 1023);
            }
            int i2 = -elementAt3;
            return this.m_chars.getString(this.m_data.elementAt(i2), this.m_data.elementAt(i2 + 1));
        }
        int _firstch2 = _firstch2(makeNodeIdentity);
        if (-1 != _firstch2) {
            int i3 = 0;
            int i4 = -1;
            do {
                int _exptype2 = _exptype2(_firstch2);
                if (_exptype2 == 3 || _exptype2 == 4) {
                    int elementAt4 = this.m_dataOrQName.elementAt(_firstch2);
                    if (elementAt4 >= 0) {
                        if (-1 == i4) {
                            i4 = elementAt4 >>> 10;
                        }
                        elementAt = elementAt4 & 1023;
                    } else {
                        if (-1 == i4) {
                            i4 = this.m_data.elementAt(-elementAt4);
                        }
                        elementAt = this.m_data.elementAt((-elementAt4) + 1);
                    }
                    i3 += elementAt;
                }
                _firstch2++;
            } while (_parent2(_firstch2) >= makeNodeIdentity);
            if (i3 > 0) {
                return this.m_chars.getString(i4, i3);
            }
        }
        return "";
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase
    public final int getTypedAttribute(int i, int i2) {
        int makeNodeIdentity = makeNodeIdentity(i);
        if (makeNodeIdentity != -1 && 1 == _type2(makeNodeIdentity)) {
            while (true) {
                makeNodeIdentity++;
                int _exptype2 = _exptype2(makeNodeIdentity);
                if (_exptype2 == -1) {
                    break;
                }
                int nodeType = this.m_extendedTypes[_exptype2].getNodeType();
                if (nodeType == 2) {
                    if (_exptype2 == i2) {
                        return makeNodeHandle(makeNodeIdentity);
                    }
                } else if (13 != nodeType) {
                    break;
                }
            }
        }
        return -1;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM, org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        charactersFlush();
        this.m_previous = addNode(7, 7, this.m_parents.peek(), this.m_previous, -this.m_data.size(), false);
        this.m_data.addElement(this.m_valuesOrPrefixes.stringToIndex(str));
        this.m_values.addElement(str2);
        SuballocatedIntVector suballocatedIntVector = this.m_data;
        int i = this.m_valueIndex;
        this.m_valueIndex = i + 1;
        suballocatedIntVector.addElement(i);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        this.m_parents.push(addNode(9, 9, -1, -1, 0, true));
        this.m_previous = -1;
        this.m_contextIndexes.push(this.m_prefixMappings.size());
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        int i;
        charactersFlush();
        boolean z = true;
        int expandedTypeID = this.m_expandedNameTable.getExpandedTypeID(str, str2, 1);
        int addNode = addNode(1, expandedTypeID, this.m_parents.peek(), this.m_previous, str3.length() != str2.length() ? this.m_valuesOrPrefixes.stringToIndex(str3) : 0, true);
        if (this.m_indexing) {
            indexNode(expandedTypeID, addNode);
        }
        this.m_parents.push(addNode);
        int size = this.m_prefixMappings.size();
        if (!this.m_pastFirstElement) {
            int expandedTypeID2 = this.m_expandedNameTable.getExpandedTypeID(null, "xml", 13);
            this.m_values.addElement("http://www.w3.org/XML/1998/namespace");
            int i2 = this.m_valueIndex;
            this.m_valueIndex = i2 + 1;
            addNode(13, expandedTypeID2, addNode, -1, i2, false);
            this.m_pastFirstElement = true;
        }
        for (int peek = this.m_contextIndexes.peek(); peek < size; peek += 2) {
            String str4 = (String) this.m_prefixMappings.elementAt(peek);
            if (str4 != null) {
                String str5 = (String) this.m_prefixMappings.elementAt(peek + 1);
                int expandedTypeID3 = this.m_expandedNameTable.getExpandedTypeID(null, str4, 13);
                this.m_values.addElement(str5);
                int i3 = this.m_valueIndex;
                this.m_valueIndex = i3 + 1;
                addNode(13, expandedTypeID3, addNode, -1, i3, false);
            }
        }
        int length = attributes.getLength();
        for (int i4 = 0; i4 < length; i4++) {
            String uri = attributes.getURI(i4);
            String qName = attributes.getQName(i4);
            String value = attributes.getValue(i4);
            String localName = attributes.getLocalName(i4);
            if (qName == null || !(qName.equals("xmlns") || qName.startsWith("xmlns:"))) {
                if (this.m_buildIdIndex && attributes.getType(i4).equalsIgnoreCase("ID")) {
                    setIDAttribute(value, addNode);
                }
                i = 2;
            } else if (!declAlreadyDeclared(getPrefix(qName, uri))) {
                i = 13;
            }
            if (value == null) {
                value = "";
            }
            this.m_values.addElement(value);
            int i5 = this.m_valueIndex;
            this.m_valueIndex = i5 + 1;
            if (localName.length() != qName.length()) {
                int stringToIndex = this.m_valuesOrPrefixes.stringToIndex(qName);
                int size2 = this.m_data.size();
                this.m_data.addElement(stringToIndex);
                this.m_data.addElement(i5);
                i5 = -size2;
            }
            addNode(i, this.m_expandedNameTable.getExpandedTypeID(uri, localName, i), addNode, -1, i5, false);
        }
        DTMWSFilter dTMWSFilter = this.m_wsfilter;
        if (dTMWSFilter != null) {
            short shouldStripSpace = dTMWSFilter.getShouldStripSpace(makeNodeHandle(addNode), this);
            if (3 == shouldStripSpace) {
                z = getShouldStripWhitespace();
            } else if (2 != shouldStripSpace) {
                z = false;
            }
            pushShouldStripWhitespace(z);
        }
        this.m_previous = -1;
        this.m_contextIndexes.push(this.m_prefixMappings.size());
    }

    public SAX2DTM2(DTMManager dTMManager, Source source, int i, DTMWSFilter dTMWSFilter, XMLStringFactory xMLStringFactory, boolean z, int i2, boolean z2, boolean z3, boolean z4) {
        super(dTMManager, source, i, dTMWSFilter, xMLStringFactory, z, i2, z2, z4);
        this.m_valueIndex = 0;
        this.m_buildIdIndex = true;
        int i3 = 0;
        int i4 = i2;
        while (true) {
            i4 >>>= 1;
            if (i4 == 0) {
                int i5 = 1 << i3;
                this.m_blocksize = i5;
                this.m_SHIFT = i3;
                this.m_MASK = i5 - 1;
                this.m_buildIdIndex = z3;
                this.m_values = new Vector(32, 512);
                this.m_maxNodeIndex = 65536;
                this.m_exptype_map0 = this.m_exptype.getMap0();
                this.m_nextsib_map0 = this.m_nextsib.getMap0();
                this.m_firstch_map0 = this.m_firstch.getMap0();
                this.m_parent_map0 = this.m_parent.getMap0();
                return;
            }
            i3++;
        }
    }

    public String getStringValue() {
        int _firstch2 = _firstch2(0);
        if (_firstch2 == -1) {
            return "";
        }
        if (_exptype2(_firstch2) == 3 && _nextsib2(_firstch2) == -1) {
            int elementAt = this.m_dataOrQName.elementAt(_firstch2);
            if (elementAt >= 0) {
                return this.m_chars.getString(elementAt >>> 10, elementAt & 1023);
            }
            int i = -elementAt;
            return this.m_chars.getString(this.m_data.elementAt(i), this.m_data.elementAt(i + 1));
        }
        return getStringValueX(getDocument());
    }
}
