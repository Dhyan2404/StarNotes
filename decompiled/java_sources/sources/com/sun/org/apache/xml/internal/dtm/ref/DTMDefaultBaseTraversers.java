package com.sun.org.apache.xml.internal.dtm.ref;

import com.sun.org.apache.xml.internal.dtm.Axis;
import com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
import com.sun.org.apache.xml.internal.dtm.DTMException;
import com.sun.org.apache.xml.internal.dtm.DTMManager;
import com.sun.org.apache.xml.internal.dtm.DTMWSFilter;
import com.sun.org.apache.xml.internal.res.XMLMessages;
import com.sun.org.apache.xml.internal.utils.XMLStringFactory;
import javax.xml.transform.Source;

/* loaded from: classes10.dex */
public abstract class DTMDefaultBaseTraversers extends DTMDefaultBase {

    /* loaded from: classes10.dex */
    public class AllFromNodeTraverser extends DescendantOrSelfTraverser {
        private AllFromNodeTraverser() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantTraverser, com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2) {
            int makeNodeIdentity = DTMDefaultBaseTraversers.this.makeNodeIdentity(i);
            int makeNodeIdentity2 = DTMDefaultBaseTraversers.this.makeNodeIdentity(i2) + 1;
            DTMDefaultBaseTraversers.this._exptype(makeNodeIdentity2);
            if (isDescendant(makeNodeIdentity, makeNodeIdentity2)) {
                return DTMDefaultBaseTraversers.this.makeNodeHandle(makeNodeIdentity2);
            }
            return -1;
        }
    }

    /* loaded from: classes10.dex */
    public class AllFromRootTraverser extends AllFromNodeTraverser {
        private AllFromRootTraverser() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantOrSelfTraverser, com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i) {
            return DTMDefaultBaseTraversers.this.getDocumentRoot(i);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.AllFromNodeTraverser, com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantTraverser, com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2) {
            DTMDefaultBaseTraversers.this.makeNodeIdentity(i);
            int makeNodeIdentity = DTMDefaultBaseTraversers.this.makeNodeIdentity(i2) + 1;
            if (DTMDefaultBaseTraversers.this._type(makeNodeIdentity) == -1) {
                return -1;
            }
            return DTMDefaultBaseTraversers.this.makeNodeHandle(makeNodeIdentity);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantTraverser, com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i, int i2) {
            DTMDefaultBaseTraversers dTMDefaultBaseTraversers = DTMDefaultBaseTraversers.this;
            return dTMDefaultBaseTraversers.getExpandedTypeID(dTMDefaultBaseTraversers.getDocumentRoot(i)) == i2 ? i : next(i, i, i2);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantTraverser, com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2, int i3) {
            int _exptype;
            DTMDefaultBaseTraversers.this.makeNodeIdentity(i);
            int makeNodeIdentity = DTMDefaultBaseTraversers.this.makeNodeIdentity(i2);
            do {
                makeNodeIdentity++;
                _exptype = DTMDefaultBaseTraversers.this._exptype(makeNodeIdentity);
                if (_exptype == -1) {
                    return -1;
                }
            } while (_exptype != i3);
            return DTMDefaultBaseTraversers.this.makeNodeHandle(makeNodeIdentity);
        }
    }

    /* loaded from: classes10.dex */
    public class AncestorOrSelfTraverser extends AncestorTraverser {
        private AncestorOrSelfTraverser() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i) {
            return i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i, int i2) {
            return DTMDefaultBaseTraversers.this.getExpandedTypeID(i) == i2 ? i : next(i, i, i2);
        }
    }

    /* loaded from: classes10.dex */
    public class AncestorTraverser extends DTMAxisTraverser {
        private AncestorTraverser() {
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2) {
            return DTMDefaultBaseTraversers.this.getParent(i2);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2, int i3) {
            int makeNodeIdentity = DTMDefaultBaseTraversers.this.makeNodeIdentity(i2);
            do {
                makeNodeIdentity = DTMDefaultBaseTraversers.this.m_parent.elementAt(makeNodeIdentity);
                if (-1 == makeNodeIdentity) {
                    return -1;
                }
            } while (DTMDefaultBaseTraversers.this.m_exptype.elementAt(makeNodeIdentity) != i3);
            return DTMDefaultBaseTraversers.this.makeNodeHandle(makeNodeIdentity);
        }
    }

    /* loaded from: classes10.dex */
    public class AttributeTraverser extends DTMAxisTraverser {
        private AttributeTraverser() {
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2) {
            DTMDefaultBaseTraversers dTMDefaultBaseTraversers = DTMDefaultBaseTraversers.this;
            return i == i2 ? dTMDefaultBaseTraversers.getFirstAttribute(i) : dTMDefaultBaseTraversers.getNextAttribute(i2);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2, int i3) {
            int firstAttribute = i == i2 ? DTMDefaultBaseTraversers.this.getFirstAttribute(i) : DTMDefaultBaseTraversers.this.getNextAttribute(i2);
            while (DTMDefaultBaseTraversers.this.getExpandedTypeID(firstAttribute) != i3) {
                firstAttribute = DTMDefaultBaseTraversers.this.getNextAttribute(firstAttribute);
                if (-1 == firstAttribute) {
                    return -1;
                }
            }
            return firstAttribute;
        }
    }

    /* loaded from: classes10.dex */
    public class ChildTraverser extends DTMAxisTraverser {
        private ChildTraverser() {
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i) {
            return DTMDefaultBaseTraversers.this.getFirstChild(i);
        }

        public int getNextIndexed(int i, int i2, int i3) {
            int namespaceID = DTMDefaultBaseTraversers.this.m_expandedNameTable.getNamespaceID(i3);
            int localNameID = DTMDefaultBaseTraversers.this.m_expandedNameTable.getLocalNameID(i3);
            while (true) {
                int findElementFromIndex = DTMDefaultBaseTraversers.this.findElementFromIndex(namespaceID, localNameID, i2);
                if (-2 != findElementFromIndex) {
                    int elementAt = DTMDefaultBaseTraversers.this.m_parent.elementAt(findElementFromIndex);
                    if (elementAt == i) {
                        return findElementFromIndex;
                    }
                    if (elementAt < i) {
                        return -1;
                    }
                    do {
                        elementAt = DTMDefaultBaseTraversers.this.m_parent.elementAt(elementAt);
                        if (elementAt < i) {
                            return -1;
                        }
                    } while (elementAt > i);
                    i2 = findElementFromIndex + 1;
                } else {
                    DTMDefaultBaseTraversers.this.nextNode();
                    if (DTMDefaultBaseTraversers.this.m_nextsib.elementAt(i) != -2) {
                        return -1;
                    }
                }
            }
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2) {
            return DTMDefaultBaseTraversers.this.getNextSibling(i2);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i, int i2) {
            int makeNodeIdentity = DTMDefaultBaseTraversers.this.makeNodeIdentity(i);
            return DTMDefaultBaseTraversers.this.makeNodeHandle(getNextIndexed(makeNodeIdentity, DTMDefaultBaseTraversers.this._firstch(makeNodeIdentity), i2));
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2, int i3) {
            DTMDefaultBaseTraversers dTMDefaultBaseTraversers = DTMDefaultBaseTraversers.this;
            int _nextsib = dTMDefaultBaseTraversers._nextsib(dTMDefaultBaseTraversers.makeNodeIdentity(i2));
            while (-1 != _nextsib) {
                if (DTMDefaultBaseTraversers.this.m_exptype.elementAt(_nextsib) == i3) {
                    return DTMDefaultBaseTraversers.this.makeNodeHandle(_nextsib);
                }
                _nextsib = DTMDefaultBaseTraversers.this._nextsib(_nextsib);
            }
            return -1;
        }
    }

    /* loaded from: classes10.dex */
    public class DescendantFromRootTraverser extends DescendantTraverser {
        private DescendantFromRootTraverser() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i) {
            DTMDefaultBaseTraversers dTMDefaultBaseTraversers = DTMDefaultBaseTraversers.this;
            return dTMDefaultBaseTraversers.makeNodeHandle(dTMDefaultBaseTraversers._firstch(0));
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantTraverser
        public int getFirstPotential(int i) {
            return DTMDefaultBaseTraversers.this._firstch(0);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantTraverser
        public int getSubtreeRoot(int i) {
            return 0;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantTraverser, com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i, int i2) {
            if (isIndexed(i2)) {
                return DTMDefaultBaseTraversers.this.makeNodeHandle(getNextIndexed(0, getFirstPotential(0), i2));
            }
            int documentRoot = DTMDefaultBaseTraversers.this.getDocumentRoot(i);
            return next(documentRoot, documentRoot, i2);
        }
    }

    /* loaded from: classes10.dex */
    public class DescendantOrSelfFromRootTraverser extends DescendantTraverser {
        private DescendantOrSelfFromRootTraverser() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i) {
            return DTMDefaultBaseTraversers.this.getDocumentRoot(i);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantTraverser
        public int getFirstPotential(int i) {
            return i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantTraverser
        public int getSubtreeRoot(int i) {
            DTMDefaultBaseTraversers dTMDefaultBaseTraversers = DTMDefaultBaseTraversers.this;
            return dTMDefaultBaseTraversers.makeNodeIdentity(dTMDefaultBaseTraversers.getDocument());
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantTraverser, com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i, int i2) {
            if (isIndexed(i2)) {
                return DTMDefaultBaseTraversers.this.makeNodeHandle(getNextIndexed(0, getFirstPotential(0), i2));
            }
            int first = first(i);
            return next(first, first, i2);
        }
    }

    /* loaded from: classes10.dex */
    public class DescendantOrSelfTraverser extends DescendantTraverser {
        private DescendantOrSelfTraverser() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i) {
            return i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantTraverser
        public int getFirstPotential(int i) {
            return i;
        }
    }

    /* loaded from: classes10.dex */
    public class FollowingSiblingTraverser extends DTMAxisTraverser {
        private FollowingSiblingTraverser() {
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2) {
            return DTMDefaultBaseTraversers.this.getNextSibling(i2);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2, int i3) {
            do {
                i2 = DTMDefaultBaseTraversers.this.getNextSibling(i2);
                if (-1 == i2) {
                    return -1;
                }
            } while (DTMDefaultBaseTraversers.this.getExpandedTypeID(i2) != i3);
            return i2;
        }
    }

    /* loaded from: classes10.dex */
    public abstract class IndexedDTMAxisTraverser extends DTMAxisTraverser {
        private IndexedDTMAxisTraverser() {
        }

        public abstract boolean axisHasBeenProcessed(int i);

        public int getNextIndexed(int i, int i2, int i3) {
            int namespaceID = DTMDefaultBaseTraversers.this.m_expandedNameTable.getNamespaceID(i3);
            int localNameID = DTMDefaultBaseTraversers.this.m_expandedNameTable.getLocalNameID(i3);
            while (true) {
                int findElementFromIndex = DTMDefaultBaseTraversers.this.findElementFromIndex(namespaceID, localNameID, i2);
                if (-2 != findElementFromIndex) {
                    if (isAfterAxis(i, findElementFromIndex)) {
                        return -1;
                    }
                    return findElementFromIndex;
                }
                if (axisHasBeenProcessed(i)) {
                    return -1;
                }
                DTMDefaultBaseTraversers.this.nextNode();
            }
        }

        public abstract boolean isAfterAxis(int i, int i2);

        public final boolean isIndexed(int i) {
            DTMDefaultBaseTraversers dTMDefaultBaseTraversers = DTMDefaultBaseTraversers.this;
            return dTMDefaultBaseTraversers.m_indexing && 1 == dTMDefaultBaseTraversers.m_expandedNameTable.getType(i);
        }
    }

    /* loaded from: classes10.dex */
    public class NamespaceDeclsTraverser extends DTMAxisTraverser {
        private NamespaceDeclsTraverser() {
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2) {
            DTMDefaultBaseTraversers dTMDefaultBaseTraversers = DTMDefaultBaseTraversers.this;
            return i == i2 ? dTMDefaultBaseTraversers.getFirstNamespaceNode(i, false) : dTMDefaultBaseTraversers.getNextNamespaceNode(i, i2, false);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2, int i3) {
            int firstNamespaceNode = i == i2 ? DTMDefaultBaseTraversers.this.getFirstNamespaceNode(i, false) : DTMDefaultBaseTraversers.this.getNextNamespaceNode(i, i2, false);
            while (DTMDefaultBaseTraversers.this.getExpandedTypeID(firstNamespaceNode) != i3) {
                firstNamespaceNode = DTMDefaultBaseTraversers.this.getNextNamespaceNode(i, firstNamespaceNode, false);
                if (-1 == firstNamespaceNode) {
                    return -1;
                }
            }
            return firstNamespaceNode;
        }
    }

    /* loaded from: classes10.dex */
    public class NamespaceTraverser extends DTMAxisTraverser {
        private NamespaceTraverser() {
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2) {
            DTMDefaultBaseTraversers dTMDefaultBaseTraversers = DTMDefaultBaseTraversers.this;
            return i == i2 ? dTMDefaultBaseTraversers.getFirstNamespaceNode(i, true) : dTMDefaultBaseTraversers.getNextNamespaceNode(i, i2, true);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2, int i3) {
            int firstNamespaceNode = i == i2 ? DTMDefaultBaseTraversers.this.getFirstNamespaceNode(i, true) : DTMDefaultBaseTraversers.this.getNextNamespaceNode(i, i2, true);
            while (DTMDefaultBaseTraversers.this.getExpandedTypeID(firstNamespaceNode) != i3) {
                firstNamespaceNode = DTMDefaultBaseTraversers.this.getNextNamespaceNode(i, firstNamespaceNode, true);
                if (-1 == firstNamespaceNode) {
                    return -1;
                }
            }
            return firstNamespaceNode;
        }
    }

    /* loaded from: classes10.dex */
    public class ParentTraverser extends DTMAxisTraverser {
        private ParentTraverser() {
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i) {
            return DTMDefaultBaseTraversers.this.getParent(i);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2) {
            return -1;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i, int i2) {
            int makeNodeIdentity = DTMDefaultBaseTraversers.this.makeNodeIdentity(i);
            do {
                makeNodeIdentity = DTMDefaultBaseTraversers.this.m_parent.elementAt(makeNodeIdentity);
                if (-1 == makeNodeIdentity) {
                    return -1;
                }
            } while (DTMDefaultBaseTraversers.this.m_exptype.elementAt(makeNodeIdentity) != i2);
            return DTMDefaultBaseTraversers.this.makeNodeHandle(makeNodeIdentity);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2, int i3) {
            return -1;
        }
    }

    /* loaded from: classes10.dex */
    public class PrecedingSiblingTraverser extends DTMAxisTraverser {
        private PrecedingSiblingTraverser() {
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2) {
            return DTMDefaultBaseTraversers.this.getPreviousSibling(i2);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2, int i3) {
            do {
                i2 = DTMDefaultBaseTraversers.this.getPreviousSibling(i2);
                if (-1 == i2) {
                    return -1;
                }
            } while (DTMDefaultBaseTraversers.this.getExpandedTypeID(i2) != i3);
            return i2;
        }
    }

    /* loaded from: classes10.dex */
    public class RootTraverser extends AllFromRootTraverser {
        private RootTraverser() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.AllFromRootTraverser, com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantTraverser, com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i, int i2) {
            int documentRoot = DTMDefaultBaseTraversers.this.getDocumentRoot(i);
            if (DTMDefaultBaseTraversers.this.getExpandedTypeID(documentRoot) == i2) {
                return documentRoot;
            }
            return -1;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.AllFromRootTraverser, com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.AllFromNodeTraverser, com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantTraverser, com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2) {
            return -1;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.AllFromRootTraverser, com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantTraverser, com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2, int i3) {
            return -1;
        }
    }

    /* loaded from: classes10.dex */
    public class SelfTraverser extends DTMAxisTraverser {
        private SelfTraverser() {
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i) {
            return i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2) {
            return -1;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i, int i2) {
            if (DTMDefaultBaseTraversers.this.getExpandedTypeID(i) == i2) {
                return i;
            }
            return -1;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2, int i3) {
            return -1;
        }
    }

    public DTMDefaultBaseTraversers(DTMManager dTMManager, Source source, int i, DTMWSFilter dTMWSFilter, XMLStringFactory xMLStringFactory, boolean z) {
        super(dTMManager, source, i, dTMWSFilter, xMLStringFactory, z);
    }

    @Override // com.sun.org.apache.xml.internal.dtm.DTM
    public DTMAxisTraverser getAxisTraverser(int i) {
        DTMAxisTraverser ancestorTraverser;
        DTMAxisTraverser[] dTMAxisTraverserArr = this.m_traversers;
        if (dTMAxisTraverserArr == null) {
            this.m_traversers = new DTMAxisTraverser[Axis.getNamesLength()];
        } else {
            DTMAxisTraverser dTMAxisTraverser = dTMAxisTraverserArr[i];
            if (dTMAxisTraverser != null) {
                return dTMAxisTraverser;
            }
        }
        switch (i) {
            case 0:
                ancestorTraverser = new AncestorTraverser();
                break;
            case 1:
                ancestorTraverser = new AncestorOrSelfTraverser();
                break;
            case 2:
                ancestorTraverser = new AttributeTraverser();
                break;
            case 3:
                ancestorTraverser = new ChildTraverser();
                break;
            case 4:
                ancestorTraverser = new DescendantTraverser();
                break;
            case 5:
                ancestorTraverser = new DescendantOrSelfTraverser();
                break;
            case 6:
                ancestorTraverser = new FollowingTraverser();
                break;
            case 7:
                ancestorTraverser = new FollowingSiblingTraverser();
                break;
            case 8:
                ancestorTraverser = new NamespaceDeclsTraverser();
                break;
            case 9:
                ancestorTraverser = new NamespaceTraverser();
                break;
            case 10:
                ancestorTraverser = new ParentTraverser();
                break;
            case 11:
                ancestorTraverser = new PrecedingTraverser();
                break;
            case 12:
                ancestorTraverser = new PrecedingSiblingTraverser();
                break;
            case 13:
                ancestorTraverser = new SelfTraverser();
                break;
            case 14:
                ancestorTraverser = new AllFromNodeTraverser();
                break;
            case 15:
                ancestorTraverser = new PrecedingAndAncestorTraverser();
                break;
            case 16:
                ancestorTraverser = new AllFromRootTraverser();
                break;
            case 17:
                ancestorTraverser = new DescendantFromRootTraverser();
                break;
            case 18:
                ancestorTraverser = new DescendantOrSelfFromRootTraverser();
                break;
            case 19:
                ancestorTraverser = new RootTraverser();
                break;
            case 20:
                return null;
            default:
                throw new DTMException(XMLMessages.createXMLMessage("ER_UNKNOWN_AXIS_TYPE", new Object[]{Integer.toString(i)}));
        }
        this.m_traversers[i] = ancestorTraverser;
        return ancestorTraverser;
    }

    public DTMDefaultBaseTraversers(DTMManager dTMManager, Source source, int i, DTMWSFilter dTMWSFilter, XMLStringFactory xMLStringFactory, boolean z, int i2, boolean z2, boolean z3) {
        super(dTMManager, source, i, dTMWSFilter, xMLStringFactory, z, i2, z2, z3);
    }

    /* loaded from: classes10.dex */
    public class FollowingTraverser extends DescendantTraverser {
        private FollowingTraverser() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i) {
            int _firstch;
            int _nextsib;
            int makeNodeIdentity = DTMDefaultBaseTraversers.this.makeNodeIdentity(i);
            short _type = DTMDefaultBaseTraversers.this._type(makeNodeIdentity);
            if ((2 == _type || 13 == _type) && -1 != (_firstch = DTMDefaultBaseTraversers.this._firstch((makeNodeIdentity = DTMDefaultBaseTraversers.this._parent(makeNodeIdentity))))) {
                return DTMDefaultBaseTraversers.this.makeNodeHandle(_firstch);
            }
            do {
                _nextsib = DTMDefaultBaseTraversers.this._nextsib(makeNodeIdentity);
                if (-1 == _nextsib) {
                    makeNodeIdentity = DTMDefaultBaseTraversers.this._parent(makeNodeIdentity);
                }
                if (-1 != _nextsib) {
                    break;
                }
            } while (-1 != makeNodeIdentity);
            return DTMDefaultBaseTraversers.this.makeNodeHandle(_nextsib);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantTraverser, com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2) {
            int makeNodeIdentity = DTMDefaultBaseTraversers.this.makeNodeIdentity(i2);
            while (true) {
                makeNodeIdentity++;
                short _type = DTMDefaultBaseTraversers.this._type(makeNodeIdentity);
                if (-1 == _type) {
                    return -1;
                }
                if (2 != _type && 13 != _type) {
                    return DTMDefaultBaseTraversers.this.makeNodeHandle(makeNodeIdentity);
                }
            }
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantTraverser, com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2, int i3) {
            int _exptype;
            int makeNodeIdentity = DTMDefaultBaseTraversers.this.makeNodeIdentity(i2);
            do {
                makeNodeIdentity++;
                _exptype = DTMDefaultBaseTraversers.this._exptype(makeNodeIdentity);
                if (-1 == _exptype) {
                    return -1;
                }
            } while (_exptype != i3);
            return DTMDefaultBaseTraversers.this.makeNodeHandle(makeNodeIdentity);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.DescendantTraverser, com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i, int i2) {
            int firstChild;
            int nextSibling;
            short nodeType = DTMDefaultBaseTraversers.this.getNodeType(i);
            if ((2 == nodeType || 13 == nodeType) && -1 != (firstChild = DTMDefaultBaseTraversers.this.getFirstChild((i = DTMDefaultBaseTraversers.this.getParent(i))))) {
                return DTMDefaultBaseTraversers.this.getExpandedTypeID(firstChild) == i2 ? firstChild : next(i, firstChild, i2);
            }
            do {
                nextSibling = DTMDefaultBaseTraversers.this.getNextSibling(i);
                if (-1 != nextSibling) {
                    return DTMDefaultBaseTraversers.this.getExpandedTypeID(nextSibling) == i2 ? nextSibling : next(i, nextSibling, i2);
                }
                i = DTMDefaultBaseTraversers.this.getParent(i);
                if (-1 != nextSibling) {
                    break;
                }
            } while (-1 != i);
            return nextSibling;
        }
    }

    /* loaded from: classes10.dex */
    public class PrecedingAndAncestorTraverser extends DTMAxisTraverser {
        private PrecedingAndAncestorTraverser() {
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2) {
            DTMDefaultBaseTraversers.this.makeNodeIdentity(i);
            for (int makeNodeIdentity = DTMDefaultBaseTraversers.this.makeNodeIdentity(i2) - 1; makeNodeIdentity >= 0; makeNodeIdentity--) {
                short _type = DTMDefaultBaseTraversers.this._type(makeNodeIdentity);
                if (2 != _type && 13 != _type) {
                    return DTMDefaultBaseTraversers.this.makeNodeHandle(makeNodeIdentity);
                }
            }
            return -1;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2, int i3) {
            DTMDefaultBaseTraversers.this.makeNodeIdentity(i);
            for (int makeNodeIdentity = DTMDefaultBaseTraversers.this.makeNodeIdentity(i2) - 1; makeNodeIdentity >= 0; makeNodeIdentity--) {
                if (DTMDefaultBaseTraversers.this.m_exptype.elementAt(makeNodeIdentity) == i3) {
                    return DTMDefaultBaseTraversers.this.makeNodeHandle(makeNodeIdentity);
                }
            }
            return -1;
        }
    }

    /* loaded from: classes10.dex */
    public class DescendantTraverser extends IndexedDTMAxisTraverser {
        private DescendantTraverser() {
            super();
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.IndexedDTMAxisTraverser
        public boolean axisHasBeenProcessed(int i) {
            return DTMDefaultBaseTraversers.this.m_nextsib.elementAt(i) != -2;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int first(int i, int i2) {
            if (!isIndexed(i2)) {
                return next(i, i, i2);
            }
            int subtreeRoot = getSubtreeRoot(i);
            return DTMDefaultBaseTraversers.this.makeNodeHandle(getNextIndexed(subtreeRoot, getFirstPotential(subtreeRoot), i2));
        }

        public int getFirstPotential(int i) {
            return i + 1;
        }

        public int getSubtreeRoot(int i) {
            return DTMDefaultBaseTraversers.this.makeNodeIdentity(i);
        }

        @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers.IndexedDTMAxisTraverser
        public boolean isAfterAxis(int i, int i2) {
            while (i2 != i) {
                i2 = DTMDefaultBaseTraversers.this.m_parent.elementAt(i2);
                if (i2 < i) {
                    return true;
                }
            }
            return false;
        }

        public boolean isDescendant(int i, int i2) {
            return DTMDefaultBaseTraversers.this._parent(i2) >= i;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2) {
            int subtreeRoot = getSubtreeRoot(i);
            int makeNodeIdentity = DTMDefaultBaseTraversers.this.makeNodeIdentity(i2);
            while (true) {
                makeNodeIdentity++;
                short _type = DTMDefaultBaseTraversers.this._type(makeNodeIdentity);
                if (!isDescendant(subtreeRoot, makeNodeIdentity)) {
                    return -1;
                }
                if (2 != _type && 13 != _type) {
                    return DTMDefaultBaseTraversers.this.makeNodeHandle(makeNodeIdentity);
                }
            }
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2, int i3) {
            int subtreeRoot = getSubtreeRoot(i);
            int makeNodeIdentity = DTMDefaultBaseTraversers.this.makeNodeIdentity(i2) + 1;
            if (isIndexed(i3)) {
                return DTMDefaultBaseTraversers.this.makeNodeHandle(getNextIndexed(subtreeRoot, makeNodeIdentity, i3));
            }
            while (true) {
                int _exptype = DTMDefaultBaseTraversers.this._exptype(makeNodeIdentity);
                if (!isDescendant(subtreeRoot, makeNodeIdentity)) {
                    return -1;
                }
                if (_exptype == i3) {
                    return DTMDefaultBaseTraversers.this.makeNodeHandle(makeNodeIdentity);
                }
                makeNodeIdentity++;
            }
        }
    }

    /* loaded from: classes10.dex */
    public class PrecedingTraverser extends DTMAxisTraverser {
        private PrecedingTraverser() {
        }

        public boolean isAncestor(int i, int i2) {
            int elementAt = DTMDefaultBaseTraversers.this.m_parent.elementAt(i);
            while (-1 != elementAt) {
                if (elementAt == i2) {
                    return true;
                }
                elementAt = DTMDefaultBaseTraversers.this.m_parent.elementAt(elementAt);
            }
            return false;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2) {
            int makeNodeIdentity = DTMDefaultBaseTraversers.this.makeNodeIdentity(i);
            for (int makeNodeIdentity2 = DTMDefaultBaseTraversers.this.makeNodeIdentity(i2) - 1; makeNodeIdentity2 >= 0; makeNodeIdentity2--) {
                short _type = DTMDefaultBaseTraversers.this._type(makeNodeIdentity2);
                if (2 != _type && 13 != _type && !isAncestor(makeNodeIdentity, makeNodeIdentity2)) {
                    return DTMDefaultBaseTraversers.this.makeNodeHandle(makeNodeIdentity2);
                }
            }
            return -1;
        }

        @Override // com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser
        public int next(int i, int i2, int i3) {
            int makeNodeIdentity = DTMDefaultBaseTraversers.this.makeNodeIdentity(i);
            for (int makeNodeIdentity2 = DTMDefaultBaseTraversers.this.makeNodeIdentity(i2) - 1; makeNodeIdentity2 >= 0; makeNodeIdentity2--) {
                if (DTMDefaultBaseTraversers.this.m_exptype.elementAt(makeNodeIdentity2) == i3 && !isAncestor(makeNodeIdentity, makeNodeIdentity2)) {
                    return DTMDefaultBaseTraversers.this.makeNodeHandle(makeNodeIdentity2);
                }
            }
            return -1;
        }
    }
}
