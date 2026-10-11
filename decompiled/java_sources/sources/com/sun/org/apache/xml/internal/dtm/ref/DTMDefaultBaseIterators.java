package com.sun.org.apache.xml.internal.dtm.ref;

import com.sun.org.apache.xml.internal.dtm.Axis;
import com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
import com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
import com.sun.org.apache.xml.internal.dtm.DTMException;
import com.sun.org.apache.xml.internal.dtm.DTMManager;
import com.sun.org.apache.xml.internal.dtm.DTMWSFilter;
import com.sun.org.apache.xml.internal.res.XMLMessages;
import com.sun.org.apache.xml.internal.utils.NodeVector;
import com.sun.org.apache.xml.internal.utils.XMLStringFactory;
import javax.xml.transform.Source;

/* loaded from: classes10.dex */
public abstract class DTMDefaultBaseIterators extends DTMDefaultBaseTraversers {

    /* loaded from: classes10.dex */
    public class AncestorIterator extends InternalAxisIteratorBase {
        NodeVector m_ancestors;
        int m_ancestorsPos;
        int m_markedPos;
        int m_realStartNode;

        public AncestorIterator() {
            super();
            this.m_ancestors = new NodeVector();
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
            this._currentNode = i >= 0 ? this.m_ancestors.elementAt(i) : -1;
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
            this._currentNode = i2 >= 0 ? this.m_ancestors.elementAt(i2) : -1;
            return returnNode(i);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator reset() {
            int size = this.m_ancestors.size() - 1;
            this.m_ancestorsPos = size;
            this._currentNode = size >= 0 ? this.m_ancestors.elementAt(size) : -1;
            return resetPosition();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.InternalAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public void setMark() {
            this.m_markedPos = this.m_ancestorsPos;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = DTMDefaultBaseIterators.this.getDocument();
            }
            this.m_realStartNode = i;
            if (!this._isRestartable) {
                return this;
            }
            int makeNodeIdentity = DTMDefaultBaseIterators.this.makeNodeIdentity(i);
            if (!this._includeSelf && i != -1) {
                makeNodeIdentity = DTMDefaultBaseIterators.this._parent(makeNodeIdentity);
                i = DTMDefaultBaseIterators.this.makeNodeHandle(makeNodeIdentity);
            }
            this._startNode = i;
            while (makeNodeIdentity != -1) {
                this.m_ancestors.addElement(i);
                makeNodeIdentity = DTMDefaultBaseIterators.this._parent(makeNodeIdentity);
                i = DTMDefaultBaseIterators.this.makeNodeHandle(makeNodeIdentity);
            }
            int size = this.m_ancestors.size() - 1;
            this.m_ancestorsPos = size;
            this._currentNode = size >= 0 ? this.m_ancestors.elementAt(size) : -1;
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public final class AttributeIterator extends InternalAxisIteratorBase {
        public AttributeIterator() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            if (i == -1) {
                return -1;
            }
            this._currentNode = DTMDefaultBaseIterators.this.getNextAttributeIdentity(i);
            return returnNode(DTMDefaultBaseIterators.this.makeNodeHandle(i));
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = DTMDefaultBaseIterators.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            DTMDefaultBaseIterators dTMDefaultBaseIterators = DTMDefaultBaseIterators.this;
            this._currentNode = dTMDefaultBaseIterators.getFirstAttributeIdentity(dTMDefaultBaseIterators.makeNodeIdentity(i));
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public final class ChildrenIterator extends InternalAxisIteratorBase {
        public ChildrenIterator() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            if (i == -1) {
                return -1;
            }
            this._currentNode = DTMDefaultBaseIterators.this._nextsib(i);
            return returnNode(DTMDefaultBaseIterators.this.makeNodeHandle(i));
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = DTMDefaultBaseIterators.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            int i2 = -1;
            if (i != -1) {
                DTMDefaultBaseIterators dTMDefaultBaseIterators = DTMDefaultBaseIterators.this;
                i2 = dTMDefaultBaseIterators._firstch(dTMDefaultBaseIterators.makeNodeIdentity(i));
            }
            this._currentNode = i2;
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public class DescendantIterator extends InternalAxisIteratorBase {
        public DescendantIterator() {
            super();
        }

        public boolean isDescendant(int i) {
            int _parent = DTMDefaultBaseIterators.this._parent(i);
            int i2 = this._startNode;
            return _parent >= i2 || i2 == i;
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x0049, code lost:
        
            r4._currentNode = -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x004b, code lost:
        
            return -1;
         */
        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int next() {
            /*
                r4 = this;
                int r0 = r4._startNode
                r1 = -1
                if (r0 != r1) goto L6
                return r1
            L6:
                boolean r2 = r4._includeSelf
                if (r2 == 0) goto L1f
                int r2 = r4._currentNode
                int r3 = r2 + 1
                if (r3 != r0) goto L1f
                com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators r0 = com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.this
                int r2 = r2 + 1
                r4._currentNode = r2
                int r0 = r0.makeNodeHandle(r2)
                int r4 = r4.returnNode(r0)
                return r4
            L1f:
                int r0 = r4._currentNode
            L21:
                int r0 = r0 + 1
                com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators r2 = com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.this
                short r2 = r2._type(r0)
                if (r1 == r2) goto L49
                boolean r3 = r4.isDescendant(r0)
                if (r3 != 0) goto L32
                goto L49
            L32:
                r3 = 2
                if (r3 == r2) goto L21
                r3 = 3
                if (r3 == r2) goto L21
                r3 = 13
                if (r3 == r2) goto L21
                r4._currentNode = r0
                com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators r1 = com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.this
                int r0 = r1.makeNodeHandle(r0)
                int r4 = r4.returnNode(r0)
                return r4
            L49:
                r4._currentNode = r1
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DescendantIterator.next():int");
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator reset() {
            boolean z = this._isRestartable;
            this._isRestartable = true;
            setStartNode(DTMDefaultBaseIterators.this.makeNodeHandle(this._startNode));
            this._isRestartable = z;
            return this;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = DTMDefaultBaseIterators.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            int makeNodeIdentity = DTMDefaultBaseIterators.this.makeNodeIdentity(i);
            this._startNode = makeNodeIdentity;
            if (this._includeSelf) {
                makeNodeIdentity--;
            }
            this._currentNode = makeNodeIdentity;
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public class FollowingIterator extends InternalAxisIteratorBase {
        DTMAxisTraverser m_traverser;

        public FollowingIterator() {
            super();
            this.m_traverser = DTMDefaultBaseIterators.this.getAxisTraverser(6);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            this._currentNode = this.m_traverser.next(this._startNode, i);
            return returnNode(i);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = DTMDefaultBaseIterators.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            this._currentNode = this.m_traverser.first(i);
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public class FollowingSiblingIterator extends InternalAxisIteratorBase {
        public FollowingSiblingIterator() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            int _nextsib = i != -1 ? DTMDefaultBaseIterators.this._nextsib(i) : -1;
            this._currentNode = _nextsib;
            return returnNode(DTMDefaultBaseIterators.this.makeNodeHandle(_nextsib));
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = DTMDefaultBaseIterators.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            this._currentNode = DTMDefaultBaseIterators.this.makeNodeIdentity(i);
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public abstract class InternalAxisIteratorBase extends DTMAxisIteratorBase {
        protected int _currentNode;

        public InternalAxisIteratorBase() {
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public void gotoMark() {
            this._currentNode = this._markedNode;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public void setMark() {
            this._markedNode = this._currentNode;
        }
    }

    /* loaded from: classes10.dex */
    public final class NamespaceAttributeIterator extends InternalAxisIteratorBase {
        private final int _nsType;

        public NamespaceAttributeIterator(int i) {
            super();
            this._nsType = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            if (-1 != i) {
                this._currentNode = DTMDefaultBaseIterators.this.getNextNamespaceNode(this._startNode, i, false);
            }
            return returnNode(i);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = DTMDefaultBaseIterators.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            this._currentNode = DTMDefaultBaseIterators.this.getFirstNamespaceNode(i, false);
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public final class NamespaceChildrenIterator extends InternalAxisIteratorBase {
        private final int _nsType;

        public NamespaceChildrenIterator(int i) {
            super();
            this._nsType = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int _nextsib;
            int i = this._currentNode;
            if (i != -1) {
                if (-2 == i) {
                    DTMDefaultBaseIterators dTMDefaultBaseIterators = DTMDefaultBaseIterators.this;
                    _nextsib = dTMDefaultBaseIterators._firstch(dTMDefaultBaseIterators.makeNodeIdentity(this._startNode));
                } else {
                    _nextsib = DTMDefaultBaseIterators.this._nextsib(i);
                }
                while (_nextsib != -1) {
                    DTMDefaultBaseIterators dTMDefaultBaseIterators2 = DTMDefaultBaseIterators.this;
                    if (dTMDefaultBaseIterators2.m_expandedNameTable.getNamespaceID(dTMDefaultBaseIterators2._exptype(_nextsib)) == this._nsType) {
                        this._currentNode = _nextsib;
                        return returnNode(_nextsib);
                    }
                    _nextsib = DTMDefaultBaseIterators.this._nextsib(_nextsib);
                }
            }
            return -1;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = DTMDefaultBaseIterators.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            this._currentNode = i != -1 ? -2 : -1;
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public class NamespaceIterator extends InternalAxisIteratorBase {
        public NamespaceIterator() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            if (-1 != i) {
                this._currentNode = DTMDefaultBaseIterators.this.getNextNamespaceNode(this._startNode, i, true);
            }
            return returnNode(i);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = DTMDefaultBaseIterators.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            this._currentNode = DTMDefaultBaseIterators.this.getFirstNamespaceNode(i, true);
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public class NthDescendantIterator extends DescendantIterator {
        int _pos;

        public NthDescendantIterator(int i) {
            super();
            this._pos = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DescendantIterator, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int makeNodeIdentity;
            int _firstch;
            do {
                int next = super.next();
                if (next == -1) {
                    return -1;
                }
                makeNodeIdentity = DTMDefaultBaseIterators.this.makeNodeIdentity(next);
                _firstch = DTMDefaultBaseIterators.this._firstch(DTMDefaultBaseIterators.this._parent(makeNodeIdentity));
                int i = 0;
                do {
                    if (1 == DTMDefaultBaseIterators.this._type(_firstch)) {
                        i++;
                    }
                    if (i >= this._pos) {
                        break;
                    }
                    _firstch = DTMDefaultBaseIterators.this._nextsib(_firstch);
                } while (_firstch != -1);
            } while (makeNodeIdentity != _firstch);
            return makeNodeIdentity;
        }
    }

    /* loaded from: classes10.dex */
    public final class ParentIterator extends InternalAxisIteratorBase {
        private int _nodeType;

        public ParentIterator() {
            super();
            this._nodeType = -1;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            int i2 = this._nodeType;
            if (i2 < 14 ? !(i2 == -1 || i2 == DTMDefaultBaseIterators.this.getNodeType(i)) : i2 != DTMDefaultBaseIterators.this.getExpandedTypeID(i)) {
                i = -1;
            }
            this._currentNode = -1;
            return returnNode(i);
        }

        public DTMAxisIterator setNodeType(int i) {
            this._nodeType = i;
            return this;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = DTMDefaultBaseIterators.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            this._currentNode = DTMDefaultBaseIterators.this.getParent(i);
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public class PrecedingIterator extends InternalAxisIteratorBase {
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
            this._currentNode++;
            while (true) {
                int i = this._sp;
                if (i < 0) {
                    return -1;
                }
                int i2 = this._currentNode;
                if (i2 >= this._stack[i]) {
                    this._sp = i - 1;
                } else if (DTMDefaultBaseIterators.this._type(i2) != 2 && DTMDefaultBaseIterators.this._type(this._currentNode) != 13) {
                    return returnNode(DTMDefaultBaseIterators.this.makeNodeHandle(this._currentNode));
                }
                this._currentNode++;
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
                i = DTMDefaultBaseIterators.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            int makeNodeIdentity = DTMDefaultBaseIterators.this.makeNodeIdentity(i);
            if (DTMDefaultBaseIterators.this._type(makeNodeIdentity) == 2) {
                makeNodeIdentity = DTMDefaultBaseIterators.this._parent(makeNodeIdentity);
            }
            this._startNode = makeNodeIdentity;
            this._stack[0] = makeNodeIdentity;
            int i2 = 0;
            while (true) {
                makeNodeIdentity = DTMDefaultBaseIterators.this._parent(makeNodeIdentity);
                if (makeNodeIdentity == -1) {
                    break;
                }
                i2++;
                int[] iArr = this._stack;
                if (i2 == iArr.length) {
                    int[] iArr2 = new int[i2 + 4];
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
    public class PrecedingSiblingIterator extends InternalAxisIteratorBase {
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
            this._currentNode = DTMDefaultBaseIterators.this._nextsib(i);
            return returnNode(DTMDefaultBaseIterators.this.makeNodeHandle(i));
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = DTMDefaultBaseIterators.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            int makeNodeIdentity = DTMDefaultBaseIterators.this.makeNodeIdentity(i);
            this._startNodeID = makeNodeIdentity;
            if (makeNodeIdentity == -1) {
                this._currentNode = makeNodeIdentity;
                return resetPosition();
            }
            DTMDefaultBaseIterators dTMDefaultBaseIterators = DTMDefaultBaseIterators.this;
            short type = dTMDefaultBaseIterators.m_expandedNameTable.getType(dTMDefaultBaseIterators._exptype(makeNodeIdentity));
            if (2 == type || 13 == type) {
                this._currentNode = makeNodeIdentity;
            } else {
                int _parent = DTMDefaultBaseIterators.this._parent(makeNodeIdentity);
                this._currentNode = _parent;
                if (-1 != _parent) {
                    this._currentNode = DTMDefaultBaseIterators.this._firstch(_parent);
                } else {
                    this._currentNode = makeNodeIdentity;
                }
            }
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public class RootIterator extends InternalAxisIteratorBase {
        public RootIterator() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._startNode;
            if (i == this._currentNode) {
                return -1;
            }
            this._currentNode = i;
            return returnNode(i);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = DTMDefaultBaseIterators.this.getDocumentRoot(i);
            this._currentNode = -1;
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public class SingletonIterator extends InternalAxisIteratorBase {
        private boolean _isConstant;

        public SingletonIterator(DTMDefaultBaseIterators dTMDefaultBaseIterators) {
            this(Integer.MIN_VALUE, false);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            this._currentNode = -1;
            return returnNode(i);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator reset() {
            if (this._isConstant) {
                this._currentNode = this._startNode;
                return resetPosition();
            }
            boolean z = this._isRestartable;
            this._isRestartable = true;
            setStartNode(this._startNode);
            this._isRestartable = z;
            return this;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = DTMDefaultBaseIterators.this.getDocument();
            }
            if (this._isConstant) {
                this._currentNode = this._startNode;
                return resetPosition();
            }
            if (!this._isRestartable) {
                return this;
            }
            if (this._currentNode == Integer.MIN_VALUE) {
                this._startNode = i;
                this._currentNode = i;
            }
            return resetPosition();
        }

        public SingletonIterator(DTMDefaultBaseIterators dTMDefaultBaseIterators, int i) {
            this(i, false);
        }

        public SingletonIterator(int i, boolean z) {
            super();
            this._startNode = i;
            this._currentNode = i;
            this._isConstant = z;
        }
    }

    /* loaded from: classes10.dex */
    public final class TypedAncestorIterator extends AncestorIterator {
        private final int _nodeType;

        public TypedAncestorIterator(int i) {
            super();
            this._nodeType = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.AncestorIterator, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = DTMDefaultBaseIterators.this.getDocument();
            }
            this.m_realStartNode = i;
            if (!this._isRestartable) {
                return this;
            }
            int makeNodeIdentity = DTMDefaultBaseIterators.this.makeNodeIdentity(i);
            int i2 = this._nodeType;
            if (!this._includeSelf && i != -1) {
                makeNodeIdentity = DTMDefaultBaseIterators.this._parent(makeNodeIdentity);
            }
            this._startNode = i;
            if (i2 >= 14) {
                while (makeNodeIdentity != -1) {
                    if (DTMDefaultBaseIterators.this._exptype(makeNodeIdentity) == i2) {
                        this.m_ancestors.addElement(DTMDefaultBaseIterators.this.makeNodeHandle(makeNodeIdentity));
                    }
                    makeNodeIdentity = DTMDefaultBaseIterators.this._parent(makeNodeIdentity);
                }
            } else {
                while (makeNodeIdentity != -1) {
                    int _exptype = DTMDefaultBaseIterators.this._exptype(makeNodeIdentity);
                    if ((_exptype >= 14 && DTMDefaultBaseIterators.this.m_expandedNameTable.getType(_exptype) == i2) || (_exptype < 14 && _exptype == i2)) {
                        this.m_ancestors.addElement(DTMDefaultBaseIterators.this.makeNodeHandle(makeNodeIdentity));
                    }
                    makeNodeIdentity = DTMDefaultBaseIterators.this._parent(makeNodeIdentity);
                }
            }
            int size = this.m_ancestors.size() - 1;
            this.m_ancestorsPos = size;
            this._currentNode = size >= 0 ? this.m_ancestors.elementAt(size) : -1;
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public final class TypedAttributeIterator extends InternalAxisIteratorBase {
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
            this._currentNode = DTMDefaultBaseIterators.this.getTypedAttribute(i, this._nodeType);
            return resetPosition();
        }
    }

    /* loaded from: classes10.dex */
    public final class TypedChildrenIterator extends InternalAxisIteratorBase {
        private final int _nodeType;

        public TypedChildrenIterator(int i) {
            super();
            this._nodeType = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            int i2 = this._nodeType;
            if (i2 >= 14) {
                while (i != -1 && DTMDefaultBaseIterators.this._exptype(i) != i2) {
                    i = DTMDefaultBaseIterators.this._nextsib(i);
                }
            } else {
                while (i != -1) {
                    int _exptype = DTMDefaultBaseIterators.this._exptype(i);
                    if (_exptype < 14) {
                        if (_exptype == i2) {
                            break;
                        }
                        i = DTMDefaultBaseIterators.this._nextsib(i);
                    } else {
                        if (DTMDefaultBaseIterators.this.m_expandedNameTable.getType(_exptype) == i2) {
                            break;
                        }
                        i = DTMDefaultBaseIterators.this._nextsib(i);
                    }
                }
            }
            if (i == -1) {
                this._currentNode = -1;
                return -1;
            }
            this._currentNode = DTMDefaultBaseIterators.this._nextsib(i);
            return returnNode(DTMDefaultBaseIterators.this.makeNodeHandle(i));
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public DTMAxisIterator setStartNode(int i) {
            if (i == 0) {
                i = DTMDefaultBaseIterators.this.getDocument();
            }
            if (!this._isRestartable) {
                return this;
            }
            this._startNode = i;
            int i2 = -1;
            if (i != -1) {
                DTMDefaultBaseIterators dTMDefaultBaseIterators = DTMDefaultBaseIterators.this;
                i2 = dTMDefaultBaseIterators._firstch(dTMDefaultBaseIterators.makeNodeIdentity(i));
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

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DescendantIterator, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            if (this._startNode == -1) {
                return -1;
            }
            int i = this._currentNode;
            do {
                i++;
                short _type = DTMDefaultBaseIterators.this._type(i);
                if (-1 != _type && isDescendant(i)) {
                    if (_type == this._nodeType) {
                        break;
                    }
                } else {
                    this._currentNode = -1;
                    return -1;
                }
            } while (DTMDefaultBaseIterators.this._exptype(i) != this._nodeType);
            this._currentNode = i;
            return returnNode(DTMDefaultBaseIterators.this.makeNodeHandle(i));
        }
    }

    /* loaded from: classes10.dex */
    public final class TypedFollowingIterator extends FollowingIterator {
        private final int _nodeType;

        public TypedFollowingIterator(int i) {
            super();
            this._nodeType = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.FollowingIterator, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i;
            do {
                i = this._currentNode;
                this._currentNode = this.m_traverser.next(this._startNode, i);
                if (i == -1 || DTMDefaultBaseIterators.this.getExpandedTypeID(i) == this._nodeType) {
                    break;
                }
            } while (DTMDefaultBaseIterators.this.getNodeType(i) != this._nodeType);
            if (i == -1) {
                return -1;
            }
            return returnNode(i);
        }
    }

    /* loaded from: classes10.dex */
    public final class TypedFollowingSiblingIterator extends FollowingSiblingIterator {
        private final int _nodeType;

        public TypedFollowingSiblingIterator(int i) {
            super();
            this._nodeType = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
        /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.FollowingSiblingIterator, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int next() {
            /*
                r6 = this;
                int r0 = r6._currentNode
                r1 = -1
                if (r0 != r1) goto L6
                return r1
            L6:
                int r2 = r6._nodeType
                r3 = 14
                if (r2 < r3) goto L1d
            Lc:
                com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators r3 = com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.this
                int r0 = r3._nextsib(r0)
                if (r0 == r1) goto L3a
                com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators r3 = com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.this
                int r3 = r3._exptype(r0)
                if (r3 != r2) goto Lc
                goto L3a
            L1d:
                com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators r4 = com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.this
                int r0 = r4._nextsib(r0)
                if (r0 == r1) goto L3a
                com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators r4 = com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.this
                int r4 = r4._exptype(r0)
                if (r4 >= r3) goto L30
                if (r4 != r2) goto L1d
                goto L3a
            L30:
                com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators r5 = com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.this
                com.sun.org.apache.xml.internal.dtm.ref.ExpandedNameTable r5 = r5.m_expandedNameTable
                short r4 = r5.getType(r4)
                if (r4 != r2) goto L1d
            L3a:
                r6._currentNode = r0
                if (r0 != r1) goto L3f
                goto L49
            L3f:
                com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators r1 = com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.this
                int r0 = r1.makeNodeHandle(r0)
                int r1 = r6.returnNode(r0)
            L49:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.TypedFollowingSiblingIterator.next():int");
        }
    }

    /* loaded from: classes10.dex */
    public class TypedNamespaceIterator extends NamespaceIterator {
        private final int _nodeType;

        public TypedNamespaceIterator(int i) {
            super();
            this._nodeType = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.NamespaceIterator, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            while (i != -1) {
                if (DTMDefaultBaseIterators.this.getExpandedTypeID(i) == this._nodeType || DTMDefaultBaseIterators.this.getNodeType(i) == this._nodeType || DTMDefaultBaseIterators.this.getNamespaceType(i) == this._nodeType) {
                    this._currentNode = i;
                    return returnNode(i);
                }
                i = DTMDefaultBaseIterators.this.getNextNamespaceNode(this._startNode, i, true);
            }
            this._currentNode = -1;
            return -1;
        }
    }

    /* loaded from: classes10.dex */
    public final class TypedPrecedingIterator extends PrecedingIterator {
        private final int _nodeType;

        public TypedPrecedingIterator(int i) {
            super();
            this._nodeType = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.PrecedingIterator, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
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
                    } else if (DTMDefaultBaseIterators.this._exptype(i) == i2) {
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
                        int _exptype = DTMDefaultBaseIterators.this._exptype(i);
                        if (_exptype < 14) {
                            if (_exptype == i2) {
                                break;
                            }
                        } else if (DTMDefaultBaseIterators.this.m_expandedNameTable.getType(_exptype) == i2) {
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
            return returnNode(DTMDefaultBaseIterators.this.makeNodeHandle(i));
        }
    }

    /* loaded from: classes10.dex */
    public final class TypedPrecedingSiblingIterator extends PrecedingSiblingIterator {
        private final int _nodeType;

        public TypedPrecedingSiblingIterator(int i) {
            super();
            this._nodeType = i;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0043, code lost:
        
            if (r0 != r7._startNodeID) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0046, code lost:
        
            r7._currentNode = r7.this$0._nextsib(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0058, code lost:
        
            return returnNode(r7.this$0.makeNodeHandle(r0));
         */
        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.PrecedingSiblingIterator, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int next() {
            /*
                r7 = this;
                int r0 = r7._currentNode
                int r1 = r7._nodeType
                int r2 = r7._startNodeID
                r3 = -1
                r4 = 14
                if (r1 < r4) goto L1e
            Lb:
                if (r0 == r3) goto L3f
                if (r0 == r2) goto L3f
                com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators r4 = com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.this
                int r4 = r4._exptype(r0)
                if (r4 == r1) goto L3f
                com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators r4 = com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.this
                int r0 = r4._nextsib(r0)
                goto Lb
            L1e:
                if (r0 == r3) goto L3f
                if (r0 == r2) goto L3f
                com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators r5 = com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.this
                int r5 = r5._exptype(r0)
                if (r5 >= r4) goto L2d
                if (r5 != r1) goto L38
                goto L3f
            L2d:
                com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators r6 = com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.this
                com.sun.org.apache.xml.internal.dtm.ref.ExpandedNameTable r6 = r6.m_expandedNameTable
                short r5 = r6.getType(r5)
                if (r5 != r1) goto L38
                goto L3f
            L38:
                com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators r5 = com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.this
                int r0 = r5._nextsib(r0)
                goto L1e
            L3f:
                if (r0 == r3) goto L59
                int r1 = r7._startNodeID
                if (r0 != r1) goto L46
                goto L59
            L46:
                com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators r1 = com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.this
                int r1 = r1._nextsib(r0)
                r7._currentNode = r1
                com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators r1 = com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.this
                int r0 = r1.makeNodeHandle(r0)
                int r7 = r7.returnNode(r0)
                return r7
            L59:
                r7._currentNode = r3
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.TypedPrecedingSiblingIterator.next():int");
        }
    }

    /* loaded from: classes10.dex */
    public class TypedRootIterator extends RootIterator {
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
            int i2 = this._nodeType;
            int expandedTypeID = DTMDefaultBaseIterators.this.getExpandedTypeID(i);
            this._currentNode = i;
            if (i2 >= 14) {
                if (i2 == expandedTypeID) {
                    return returnNode(i);
                }
            } else if (expandedTypeID < 14) {
                if (expandedTypeID == i2) {
                    return returnNode(i);
                }
            } else if (DTMDefaultBaseIterators.this.m_expandedNameTable.getType(expandedTypeID) == i2) {
                return returnNode(i);
            }
            return -1;
        }
    }

    /* loaded from: classes10.dex */
    public final class TypedSingletonIterator extends SingletonIterator {
        private final int _nodeType;

        public TypedSingletonIterator(int i) {
            super(DTMDefaultBaseIterators.this);
            this._nodeType = i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.SingletonIterator, com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
        public int next() {
            int i = this._currentNode;
            int i2 = this._nodeType;
            this._currentNode = -1;
            if (i2 >= 14) {
                if (DTMDefaultBaseIterators.this.getExpandedTypeID(i) == i2) {
                    return returnNode(i);
                }
            } else if (DTMDefaultBaseIterators.this.getNodeType(i) == i2) {
                return returnNode(i);
            }
            return -1;
        }
    }

    public DTMDefaultBaseIterators(DTMManager dTMManager, Source source, int i, DTMWSFilter dTMWSFilter, XMLStringFactory xMLStringFactory, boolean z) {
        super(dTMManager, source, i, dTMWSFilter, xMLStringFactory, z);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public DTMAxisIterator getAxisIterator(int i) {
        if (i == 19) {
            return new RootIterator();
        }
        switch (i) {
            case 0:
                return new AncestorIterator();
            case 1:
                return new AncestorIterator().includeSelf();
            case 2:
                return new AttributeIterator();
            case 3:
                return new ChildrenIterator();
            case 4:
                return new DescendantIterator();
            case 5:
                return new DescendantIterator().includeSelf();
            case 6:
                return new FollowingIterator();
            case 7:
                return new FollowingSiblingIterator();
            default:
                switch (i) {
                    case 9:
                        return new NamespaceIterator();
                    case 10:
                        return new ParentIterator();
                    case 11:
                        return new PrecedingIterator();
                    case 12:
                        return new PrecedingSiblingIterator();
                    case 13:
                        return new SingletonIterator(this);
                    default:
                        throw new DTMException(XMLMessages.createXMLMessage("ER_ITERATOR_AXIS_NOT_IMPLEMENTED", new Object[]{Axis.getNames(i)}));
                }
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public DTMAxisIterator getTypedAxisIterator(int i, int i2) {
        if (i == 19) {
            return new TypedRootIterator(i2);
        }
        switch (i) {
            case 0:
                return new TypedAncestorIterator(i2);
            case 1:
                return new TypedAncestorIterator(i2).includeSelf();
            case 2:
                return new TypedAttributeIterator(i2);
            case 3:
                return new TypedChildrenIterator(i2);
            case 4:
                return new TypedDescendantIterator(i2);
            case 5:
                return new TypedDescendantIterator(i2).includeSelf();
            case 6:
                return new TypedFollowingIterator(i2);
            case 7:
                return new TypedFollowingSiblingIterator(i2);
            default:
                switch (i) {
                    case 9:
                        return new TypedNamespaceIterator(i2);
                    case 10:
                        return new ParentIterator().setNodeType(i2);
                    case 11:
                        return new TypedPrecedingIterator(i2);
                    case 12:
                        return new TypedPrecedingSiblingIterator(i2);
                    case 13:
                        return new TypedSingletonIterator(i2);
                    default:
                        throw new DTMException(XMLMessages.createXMLMessage("ER_TYPED_ITERATOR_AXIS_NOT_IMPLEMENTED", new Object[]{Axis.getNames(i)}));
                }
        }
    }

    public DTMDefaultBaseIterators(DTMManager dTMManager, Source source, int i, DTMWSFilter dTMWSFilter, XMLStringFactory xMLStringFactory, boolean z, int i2, boolean z2, boolean z3) {
        super(dTMManager, source, i, dTMWSFilter, xMLStringFactory, z, i2, z2, z3);
    }
}
