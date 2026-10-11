package net.p110sf.saxon.tree.util;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sunia.HTREnginev2.gon;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Predicate;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.Reverse;
import net.p110sf.saxon.om.AbsolutePath;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.CopyOptions;
import net.p110sf.saxon.om.NameOfNode;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodePredicate;
import net.p110sf.saxon.pattern.NodeSelector;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.pattern.NodeTestPattern;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.pattern.SameNameTest;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.SingleNodeIterator;
import net.p110sf.saxon.tree.jiter.WrappingJavaIterator;
import net.p110sf.saxon.tree.tiny.TinyElementImpl;
import net.p110sf.saxon.tree.tiny.TinyNodeImpl;
import net.p110sf.saxon.tree.tiny.TinyTextualElement;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.tree.wrapper.SiblingCountingNode;
import net.p110sf.saxon.tree.wrapper.VirtualCopy;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.type.Untyped;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public final class Navigator {

    /* renamed from: a */
    public static final int[] f102673a = {-1, 3, 2, 3, -1, -1, -1, 3, 3, 0, -1, -1, -1, 1};

    /* renamed from: b */
    public static final /* synthetic */ boolean f102674b = false;

    /* loaded from: classes11.dex */
    public static final class AncestorEnumeration implements AxisIterator {

        /* renamed from: e */
        public final boolean f102675e;

        /* renamed from: f */
        public boolean f102676f = true;

        /* renamed from: g */
        public NodeInfo f102677g;

        public AncestorEnumeration(NodeInfo nodeInfo, boolean z) {
            this.f102675e = z;
            this.f102677g = nodeInfo;
        }

        @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
        public final NodeInfo next() {
            if (this.f102676f) {
                this.f102676f = false;
                if (this.f102675e) {
                    return this.f102677g;
                }
            }
            NodeInfo nodeInfo = this.f102677g;
            NodeInfo parent = nodeInfo == null ? null : nodeInfo.getParent();
            this.f102677g = parent;
            return parent;
        }
    }

    /* loaded from: classes11.dex */
    public static class AxisFilter implements AxisIterator {

        /* renamed from: e */
        public final AxisIterator f102678e;

        /* renamed from: f */
        public final NodePredicate f102679f;

        public AxisFilter(AxisIterator axisIterator, NodePredicate nodePredicate) {
            this.f102678e = axisIterator;
            this.f102679f = nodePredicate;
        }

        @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
        public NodeInfo next() {
            NodeInfo next;
            do {
                next = this.f102678e.next();
                if (next == null) {
                    return null;
                }
            } while (!this.f102679f.test(next));
            return next;
        }
    }

    /* loaded from: classes11.dex */
    public static final class DescendantEnumeration implements AxisIterator {

        /* renamed from: g */
        public final NodeInfo f102684g;

        /* renamed from: h */
        public final boolean f102685h;

        /* renamed from: i */
        public final boolean f102686i;

        /* renamed from: e */
        public SequenceIterator f102682e = null;

        /* renamed from: f */
        public AxisIterator f102683f = null;

        /* renamed from: j */
        public boolean f102687j = false;

        public DescendantEnumeration(NodeInfo nodeInfo, boolean z, boolean z2) {
            this.f102684g = nodeInfo;
            this.f102685h = z;
            this.f102686i = z2;
        }

        public void advance() {
        }

        @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
        public final NodeInfo next() {
            AxisIterator axisIterator = this.f102683f;
            if (axisIterator != null) {
                NodeInfo next = axisIterator.next();
                if (next != null) {
                    return next;
                }
                this.f102683f = null;
            }
            SequenceIterator sequenceIterator = this.f102682e;
            if (sequenceIterator != null) {
                NodeInfo nodeInfo = (NodeInfo) sequenceIterator.next();
                if (nodeInfo != null) {
                    if (!nodeInfo.hasChildNodes()) {
                        return nodeInfo;
                    }
                    if (this.f102686i) {
                        this.f102683f = new DescendantEnumeration(nodeInfo, false, true);
                        return nodeInfo;
                    }
                    this.f102683f = new DescendantEnumeration(nodeInfo, true, false);
                    return next();
                }
                if (this.f102686i || !this.f102685h) {
                    return null;
                }
                this.f102687j = true;
                this.f102682e = null;
                return this.f102684g;
            }
            if (this.f102687j) {
                return null;
            }
            if (this.f102684g.hasChildNodes()) {
                AxisIterator iterateAxis = this.f102684g.iterateAxis(3);
                this.f102682e = iterateAxis;
                if (!this.f102686i) {
                    this.f102682e = Reverse.getReverseIterator(iterateAxis);
                }
            } else {
                this.f102682e = EmptyIterator.ofNodes();
            }
            if (this.f102686i && this.f102685h) {
                return this.f102684g;
            }
            return next();
        }
    }

    /* loaded from: classes11.dex */
    public static class EmptyTextFilter implements AxisIterator {

        /* renamed from: e */
        public final AxisIterator f102688e;

        public EmptyTextFilter(AxisIterator axisIterator) {
            this.f102688e = axisIterator;
        }

        @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
        public NodeInfo next() {
            NodeInfo next;
            do {
                next = this.f102688e.next();
                if (next != null) {
                    if (next.getNodeKind() != 3) {
                        break;
                    }
                } else {
                    return null;
                }
            } while (next.getUnicodeStringValue().length() == 0);
            return next;
        }
    }

    /* loaded from: classes11.dex */
    public static final class FollowingEnumeration implements AxisIterator {

        /* renamed from: e */
        public final AxisIterator f102689e;

        /* renamed from: f */
        public AxisIterator f102690f;

        /* renamed from: g */
        public AxisIterator f102691g = null;

        public FollowingEnumeration(NodeInfo nodeInfo) {
            this.f102689e = new AncestorEnumeration(nodeInfo, false);
            int nodeKind = nodeInfo.getNodeKind();
            if (nodeKind != 1) {
                if (nodeKind != 2) {
                    if (nodeKind != 3 && nodeKind != 7 && nodeKind != 8) {
                        if (nodeKind != 13) {
                            this.f102690f = EmptyIterator.ofNodes();
                            return;
                        }
                    }
                }
                NodeInfo parent = nodeInfo.getParent();
                if (parent == null) {
                    this.f102690f = EmptyIterator.ofNodes();
                    return;
                } else {
                    this.f102690f = parent.iterateAxis(3);
                    return;
                }
            }
            this.f102690f = nodeInfo.iterateAxis(7);
        }

        @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
        public final NodeInfo next() {
            AxisIterator axisIterator = this.f102691g;
            if (axisIterator != null) {
                NodeInfo next = axisIterator.next();
                if (next != null) {
                    return next;
                }
                this.f102691g = null;
            }
            AxisIterator axisIterator2 = this.f102690f;
            if (axisIterator2 != null) {
                NodeInfo next2 = axisIterator2.next();
                if (next2 != null) {
                    if (next2.hasChildNodes()) {
                        this.f102691g = new DescendantEnumeration(next2, false, true);
                    } else {
                        this.f102691g = null;
                    }
                    return next2;
                }
                this.f102691g = null;
                this.f102690f = null;
            }
            NodeInfo next3 = this.f102689e.next();
            if (next3 == null) {
                return null;
            }
            if (next3.getNodeKind() == 9) {
                this.f102690f = EmptyIterator.ofNodes();
            } else {
                this.f102690f = next3.iterateAxis(7);
            }
            return next();
        }
    }

    /* loaded from: classes11.dex */
    public static final class PrecedingEnumeration implements AxisIterator {

        /* renamed from: e */
        public final AxisIterator f102692e;

        /* renamed from: f */
        public AxisIterator f102693f;

        /* renamed from: g */
        public AxisIterator f102694g = null;

        /* renamed from: h */
        public final boolean f102695h;

        public PrecedingEnumeration(NodeInfo nodeInfo, boolean z) {
            this.f102695h = z;
            this.f102692e = new AncestorEnumeration(nodeInfo, false);
            int nodeKind = nodeInfo.getNodeKind();
            if (nodeKind == 1 || nodeKind == 3 || nodeKind == 7 || nodeKind == 8) {
                this.f102693f = nodeInfo.iterateAxis(11);
            } else {
                this.f102693f = EmptyIterator.ofNodes();
            }
        }

        @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
        public final NodeInfo next() {
            AxisIterator axisIterator = this.f102694g;
            if (axisIterator != null) {
                NodeInfo next = axisIterator.next();
                if (next != null) {
                    return next;
                }
                this.f102694g = null;
            }
            AxisIterator axisIterator2 = this.f102693f;
            if (axisIterator2 != null) {
                NodeInfo next2 = axisIterator2.next();
                if (next2 != null) {
                    if (next2.hasChildNodes()) {
                        this.f102694g = new DescendantEnumeration(next2, true, false);
                        return next();
                    }
                    this.f102694g = null;
                    return next2;
                }
                this.f102694g = null;
                this.f102693f = null;
            }
            NodeInfo next3 = this.f102692e.next();
            if (next3 == null) {
                return null;
            }
            if (next3.getNodeKind() == 9) {
                this.f102693f = EmptyIterator.ofNodes();
            } else {
                this.f102693f = next3.iterateAxis(11);
            }
            return !this.f102695h ? next() : next3;
        }
    }

    public static String alphaKey(int i) {
        if (i < 1) {
            return "a";
        }
        if (i < 10) {
            return "b" + i;
        }
        if (i < 100) {
            return "c" + i;
        }
        if (i < 1000) {
            return "d" + i;
        }
        if (i < 10000) {
            return "e" + i;
        }
        if (i < 100000) {
            return C6997f.f39671c + i;
        }
        if (i < 1000000) {
            return C6998g.f39679a + i;
        }
        if (i < 10000000) {
            return C6999h.f39688c + i;
        }
        if (i < 100000000) {
            return "i" + i;
        }
        if (i < 1000000000) {
            return "j" + i;
        }
        return C4921e.f26537n + i;
    }

    public static void appendSequentialKey(SiblingCountingNode siblingCountingNode, StringBuilder sb, boolean z) {
        if (z) {
            sb.append('w');
            sb.append(siblingCountingNode.getTreeInfo().getDocumentNumber());
        }
        if (siblingCountingNode.getNodeKind() != 9) {
            NodeInfo parent = siblingCountingNode.getParent();
            if (parent != null) {
                appendSequentialKey((SiblingCountingNode) parent, sb, false);
            }
            if (siblingCountingNode.getNodeKind() == 2) {
                sb.append('A');
            }
        }
        sb.append(alphaKey(siblingCountingNode.getSiblingPosition()));
    }

    /* renamed from: b */
    public static NodeTest m64577b(Pattern pattern) {
        ItemType itemType = pattern.getItemType();
        return itemType instanceof NodeTest ? (NodeTest) itemType : pattern.getUType().overlaps(UType.ANY_NODE) ? AnyNodeTest.getInstance() : ErrorType.getInstance();
    }

    /* renamed from: c */
    public static /* synthetic */ boolean m64578c(NodeInfo nodeInfo) {
        NodeInfo parent = nodeInfo.getParent();
        return parent == null || !parent.getSystemId().equals(nodeInfo.getSystemId());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [net.sf.saxon.tree.wrapper.SiblingCountingNode, java.lang.Object, net.sf.saxon.om.NodeInfo] */
    /* JADX WARN: Type inference failed for: r7v1, types: [net.sf.saxon.om.NodeInfo] */
    /* JADX WARN: Type inference failed for: r7v2, types: [net.sf.saxon.om.NodeInfo] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7, types: [net.sf.saxon.om.NodeInfo] */
    public static int compareOrder(SiblingCountingNode siblingCountingNode, SiblingCountingNode siblingCountingNode2) {
        int siblingPosition;
        int siblingPosition2;
        int i = 0;
        if (siblingCountingNode.equals(siblingCountingNode2)) {
            return 0;
        }
        NodeInfo parent = siblingCountingNode.getParent();
        if (parent == null) {
            return -1;
        }
        NodeInfo parent2 = siblingCountingNode2.getParent();
        if (parent2 == null) {
            return 1;
        }
        if (!parent.equals(parent2)) {
            int i2 = 0;
            for (NodeInfo nodeInfo = siblingCountingNode; nodeInfo != null; nodeInfo = nodeInfo.getParent()) {
                i2++;
            }
            for (NodeInfo nodeInfo2 = siblingCountingNode2; nodeInfo2 != null; nodeInfo2 = nodeInfo2.getParent()) {
                i++;
            }
            NodeInfo nodeInfo3 = siblingCountingNode;
            while (i2 > i) {
                nodeInfo3 = nodeInfo3.getParent();
                if (nodeInfo3.equals(siblingCountingNode2)) {
                    return 1;
                }
                i2--;
            }
            while (i > i2) {
                siblingCountingNode2 = siblingCountingNode2.getParent();
                if (siblingCountingNode2.equals(siblingCountingNode)) {
                    return -1;
                }
                i--;
            }
            while (true) {
                NodeInfo parent3 = nodeInfo3.getParent();
                NodeInfo parent4 = siblingCountingNode2.getParent();
                if (parent3 == null || parent4 == null) {
                    break;
                }
                if (!parent3.equals(parent4)) {
                    nodeInfo3 = parent3;
                    siblingCountingNode2 = parent4;
                } else {
                    if (nodeInfo3.getNodeKind() == 2 && siblingCountingNode2.getNodeKind() != 2) {
                        return -1;
                    }
                    if (nodeInfo3.getNodeKind() != 2 && siblingCountingNode2.getNodeKind() == 2) {
                        return 1;
                    }
                    siblingPosition = ((SiblingCountingNode) nodeInfo3).getSiblingPosition();
                    siblingPosition2 = ((SiblingCountingNode) siblingCountingNode2).getSiblingPosition();
                }
            }
            throw new NullPointerException("Node order comparison - internal error");
        }
        int[] iArr = f102673a;
        int i3 = iArr[siblingCountingNode.getNodeKind()];
        int i4 = iArr[siblingCountingNode2.getNodeKind()];
        if (i3 != i4) {
            return i3 - i4;
        }
        siblingPosition = siblingCountingNode.getSiblingPosition();
        siblingPosition2 = siblingCountingNode2.getSiblingPosition();
        return siblingPosition - siblingPosition2;
    }

    public static int comparePosition(NodeInfo nodeInfo, NodeInfo nodeInfo2) {
        if (nodeInfo.getNodeKind() == 2 || nodeInfo.getNodeKind() == 13 || nodeInfo2.getNodeKind() == 2 || nodeInfo2.getNodeKind() == 13) {
            throw new UnsupportedOperationException();
        }
        if (nodeInfo.equals(nodeInfo2)) {
            return 12;
        }
        NodeInfo parent = nodeInfo.getParent();
        if (parent == null) {
            return 0;
        }
        NodeInfo parent2 = nodeInfo2.getParent();
        if (parent2 == null) {
            return 4;
        }
        if (parent.equals(parent2)) {
            return nodeInfo.compareOrder(nodeInfo2) < 0 ? 10 : 6;
        }
        int i = 0;
        for (NodeInfo nodeInfo3 = nodeInfo; nodeInfo3 != null; nodeInfo3 = nodeInfo3.getParent()) {
            i++;
        }
        int i2 = 0;
        for (NodeInfo nodeInfo4 = nodeInfo2; nodeInfo4 != null; nodeInfo4 = nodeInfo4.getParent()) {
            i2++;
        }
        NodeInfo nodeInfo5 = nodeInfo;
        while (i > i2) {
            nodeInfo5 = nodeInfo5.getParent();
            if (nodeInfo5.equals(nodeInfo2)) {
                return 4;
            }
            i--;
        }
        NodeInfo nodeInfo6 = nodeInfo2;
        while (i2 > i) {
            nodeInfo6 = nodeInfo6.getParent();
            if (nodeInfo6.equals(nodeInfo)) {
                return 0;
            }
            i2--;
        }
        return nodeInfo.compareOrder(nodeInfo2) < 0 ? 10 : 6;
    }

    public static void copy(NodeInfo nodeInfo, Receiver receiver, int i, Location location) throws XPathException {
        SchemaType untyped;
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 1) {
            if ((i & 4) != 0) {
                untyped = nodeInfo.getSchemaType();
            } else {
                untyped = Untyped.getInstance();
            }
            receiver.startElement(NameOfNode.makeName(nodeInfo), untyped, nodeInfo.attributes(), CopyOptions.includes(i, 2) ? nodeInfo.getAllNamespaces() : NamespaceMap.emptyMap(), location, 131136);
            Iterator<? extends NodeInfo> it2 = nodeInfo.children().iterator();
            while (it2.hasNext()) {
                it2.next().copy(receiver, i, location);
            }
            receiver.endElement();
            return;
        }
        if (nodeKind == 2) {
            throw new IllegalArgumentException("Cannot copy attribute to Receiver");
        }
        if (nodeKind == 3) {
            UnicodeString unicodeStringValue = nodeInfo.getUnicodeStringValue();
            if (unicodeStringValue.length() != 0) {
                receiver.characters(unicodeStringValue, location, 0);
                return;
            }
            return;
        }
        if (nodeKind == 7) {
            receiver.processingInstruction(nodeInfo.getLocalPart(), nodeInfo.getUnicodeStringValue(), location, 0);
            return;
        }
        if (nodeKind == 8) {
            receiver.comment(nodeInfo.getUnicodeStringValue(), location, 0);
            return;
        }
        if (nodeKind != 9) {
            if (nodeKind == 13) {
                throw new IllegalArgumentException("Cannot copy namespace to Receiver");
            }
            return;
        }
        receiver.startDocument(CopyOptions.getStartDocumentProperties(i));
        Iterator<? extends NodeInfo> it3 = nodeInfo.children().iterator();
        while (it3.hasNext()) {
            it3.next().copy(receiver, i, location);
        }
        receiver.endDocument();
    }

    public static AxisIterator filteredSingleton(NodeInfo nodeInfo, NodePredicate nodePredicate) {
        return (nodeInfo == null || !nodePredicate.test(nodeInfo)) ? EmptyIterator.ofNodes() : SingleNodeIterator.makeIterator(nodeInfo);
    }

    public static AbsolutePath getAbsolutePath(NodeInfo nodeInfo) {
        boolean isStreamedNode = nodeInfo.getConfiguration().isStreamedNode(nodeInfo);
        LinkedList linkedList = new LinkedList();
        String systemId = nodeInfo.getSystemId();
        while (nodeInfo != null && nodeInfo.getNodeKind() != 9) {
            linkedList.addFirst(new AbsolutePath.PathElement(nodeInfo.getNodeKind(), NameOfNode.makeName(nodeInfo), isStreamedNode ? -1 : getNumberSimple(nodeInfo, null)));
            nodeInfo = nodeInfo.getParent();
        }
        AbsolutePath absolutePath = new AbsolutePath(linkedList);
        absolutePath.setSystemId(systemId);
        return absolutePath;
    }

    public static String getAttributeValue(NodeInfo nodeInfo, String str, String str2) {
        return nodeInfo.getAttributeValue(str, str2);
    }

    public static String getBaseURI(NodeInfo nodeInfo) {
        return getBaseURI(nodeInfo, new Predicate() { // from class: com.sunia.HTREnginev2.jtj
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m64578c;
                m64578c = Navigator.m64578c((NodeInfo) obj);
                return m64578c;
            }
        });
    }

    public static String getInheritedAttributeValue(NodeInfo nodeInfo, String str, String str2) {
        while (nodeInfo != null) {
            String attributeValue = nodeInfo.getAttributeValue(str, str2);
            if (attributeValue != null) {
                return attributeValue;
            }
            nodeInfo = nodeInfo.getParent();
        }
        return null;
    }

    public static StructuredQName getNodeName(NodeInfo nodeInfo) {
        if (nodeInfo.getLocalPart() != null) {
            return new StructuredQName(nodeInfo.getPrefix(), nodeInfo.getURI(), nodeInfo.getLocalPart());
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0055, code lost:
    
        if (r11.m63465s(r10, r13) != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getNumberAny(net.p110sf.saxon.expr.Expression r9, net.p110sf.saxon.om.NodeInfo r10, net.p110sf.saxon.pattern.Pattern r11, net.p110sf.saxon.pattern.Pattern r12, net.p110sf.saxon.expr.XPathContext r13, boolean r14) throws net.p110sf.saxon.trans.XPathException {
        /*
            net.sf.saxon.Controller r0 = r13.getController()
            r1 = 1
            r2 = 0
            if (r14 != 0) goto Lc
            if (r12 != 0) goto Lc
            r14 = r1
            goto Ld
        Lc:
            r14 = r2
        Ld:
            java.lang.String r3 = "xsl:number"
            if (r14 == 0) goto L2a
            net.sf.saxon.s9api.Location r4 = r9.getLocation()
            java.lang.Object r4 = r0.getUserData(r4, r3)
            java.lang.Object[] r4 = (java.lang.Object[]) r4
            if (r4 == 0) goto L2a
            r5 = r4[r2]
            net.sf.saxon.om.NodeInfo r5 = (net.p110sf.saxon.om.NodeInfo) r5
            r4 = r4[r1]
            java.lang.Integer r4 = (java.lang.Integer) r4
            int r4 = r4.intValue()
            goto L2c
        L2a:
            r5 = 0
            r4 = r2
        L2c:
            if (r11 != 0) goto L51
            java.lang.String r11 = r10.getLocalPart()
            boolean r11 = r11.isEmpty()
            if (r11 == 0) goto L46
            net.sf.saxon.pattern.NodeTestPattern r11 = new net.sf.saxon.pattern.NodeTestPattern
            int r2 = r10.getNodeKind()
            net.sf.saxon.pattern.NodeTest r2 = net.p110sf.saxon.pattern.NodeKindTest.makeNodeKindTest(r2)
            r11.<init>(r2)
            goto L57
        L46:
            net.sf.saxon.pattern.NodeTestPattern r11 = new net.sf.saxon.pattern.NodeTestPattern
            net.sf.saxon.pattern.SameNameTest r2 = new net.sf.saxon.pattern.SameNameTest
            r2.<init>(r10)
            r11.<init>(r2)
            goto L57
        L51:
            boolean r6 = r11.m63465s(r10, r13)
            if (r6 == 0) goto L58
        L57:
            r2 = r1
        L58:
            if (r12 != 0) goto L5f
            net.sf.saxon.pattern.NodeTest r6 = m64577b(r11)
            goto L74
        L5f:
            net.sf.saxon.type.UType r6 = r12.getUType()
            net.sf.saxon.type.UType r7 = net.p110sf.saxon.type.UType.ELEMENT
            if (r6 != r7) goto L70
            net.sf.saxon.type.UType r6 = r11.getUType()
            if (r6 != r7) goto L70
            net.sf.saxon.pattern.NodeKindTest r6 = net.p110sf.saxon.pattern.NodeKindTest.ELEMENT
            goto L74
        L70:
            net.sf.saxon.pattern.AnyNodeTest r6 = net.p110sf.saxon.pattern.AnyNodeTest.getInstance()
        L74:
            if (r12 == 0) goto L7d
            boolean r7 = r12.m63465s(r10, r13)
            if (r7 == 0) goto L7d
            return r2
        L7d:
            r7 = 13
            net.sf.saxon.tree.iter.AxisIterator r6 = r10.iterateAxis(r7, r6)
        L83:
            net.sf.saxon.om.Item r7 = r6.next()
            net.sf.saxon.om.NodeInfo r7 = (net.p110sf.saxon.om.NodeInfo) r7
            if (r7 != 0) goto L8c
            goto La7
        L8c:
            boolean r8 = r11.m63465s(r7, r13)
            if (r8 == 0) goto L9f
            if (r2 != r1) goto L9d
            boolean r8 = r7.equals(r5)
            if (r8 == 0) goto L9d
            int r2 = r4 + 1
            goto La7
        L9d:
            int r2 = r2 + 1
        L9f:
            if (r12 == 0) goto L83
            boolean r7 = r12.m63465s(r7, r13)
            if (r7 == 0) goto L83
        La7:
            if (r14 == 0) goto Lb8
            java.lang.Integer r11 = java.lang.Integer.valueOf(r2)
            java.lang.Object[] r10 = new java.lang.Object[]{r10, r11}
            net.sf.saxon.s9api.Location r9 = r9.getLocation()
            r0.setUserData(r9, r3, r10)
        Lb8:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.tree.util.Navigator.getNumberAny(net.sf.saxon.expr.Expression, net.sf.saxon.om.NodeInfo, net.sf.saxon.pattern.Pattern, net.sf.saxon.pattern.Pattern, net.sf.saxon.expr.XPathContext, boolean):int");
    }

    public static List<Long> getNumberMulti(NodeInfo nodeInfo, Pattern pattern, Pattern pattern2, XPathContext xPathContext) throws XPathException {
        ArrayList arrayList = new ArrayList(5);
        if (pattern == null) {
            pattern = nodeInfo.getLocalPart().isEmpty() ? new NodeTestPattern(NodeKindTest.makeNodeKindTest(nodeInfo.getNodeKind())) : new NodeTestPattern(new SameNameTest(nodeInfo));
        }
        do {
            if (pattern.m63465s(nodeInfo, xPathContext)) {
                arrayList.add(0, Long.valueOf(getNumberSingle(nodeInfo, pattern, null, xPathContext)));
            }
            if (pattern2 != null && pattern2.m63465s(nodeInfo, xPathContext)) {
                break;
            }
            nodeInfo = nodeInfo.getParent();
        } while (nodeInfo != null);
        return arrayList;
    }

    public static int getNumberSimple(NodeInfo nodeInfo, XPathContext xPathContext) {
        int rememberedNumber;
        NodePredicate makeNodeKindTest = nodeInfo.getLocalPart().isEmpty() ? NodeKindTest.makeNodeKindTest(nodeInfo.getNodeKind()) : new SameNameTest(nodeInfo);
        Controller controller = xPathContext == null ? null : xPathContext.getController();
        AxisIterator iterateAxis = nodeInfo.iterateAxis(11, makeNodeKindTest);
        int i = 1;
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                if (controller != null) {
                    controller.setRememberedNumber(nodeInfo, i);
                }
                return i;
            }
            if (controller != null && (rememberedNumber = controller.getRememberedNumber(next)) > 0) {
                int i2 = rememberedNumber + i;
                controller.setRememberedNumber(nodeInfo, i2);
                return i2;
            }
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0032, code lost:
    
        if (r2 == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0038, code lost:
    
        if (r5.m63465s(r4, r7) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004b, code lost:
    
        if (r6 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
    
        if (r6.m63465s(r4, r7) == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0054, code lost:
    
        r4 = r4.getParent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0058, code lost:
    
        if (r4 != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005a, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003a, code lost:
    
        if (r6 != null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003d, code lost:
    
        r2 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0042, code lost:
    
        if (r6.m63465s(r2, r7) != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0044, code lost:
    
        r2 = r2.getParent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0048, code lost:
    
        if (r2 != null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x004a, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x005b, code lost:
    
        r4 = r4.iterateAxis(11, m64577b(r5));
        r6 = r5 instanceof net.p110sf.saxon.pattern.NodeTestPattern;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0067, code lost:
    
        r1 = (net.p110sf.saxon.om.NodeInfo) r4.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006d, code lost:
    
        if (r1 != null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0070, code lost:
    
        if (r6 != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0076, code lost:
    
        if (r5.m63465s(r1, r7) == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0078, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x006f, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getNumberSingle(net.p110sf.saxon.om.NodeInfo r4, net.p110sf.saxon.pattern.Pattern r5, net.p110sf.saxon.pattern.Pattern r6, net.p110sf.saxon.expr.XPathContext r7) throws net.p110sf.saxon.trans.XPathException {
        /*
            if (r5 != 0) goto L9
            if (r6 != 0) goto L9
            int r4 = getNumberSimple(r4, r7)
            return r4
        L9:
            r0 = 1
            r1 = 0
            if (r5 != 0) goto L31
            java.lang.String r5 = r4.getLocalPart()
            boolean r5 = r5.isEmpty()
            if (r5 == 0) goto L25
            net.sf.saxon.pattern.NodeTestPattern r5 = new net.sf.saxon.pattern.NodeTestPattern
            int r2 = r4.getNodeKind()
            net.sf.saxon.pattern.NodeTest r2 = net.p110sf.saxon.pattern.NodeKindTest.makeNodeKindTest(r2)
            r5.<init>(r2)
            goto L2f
        L25:
            net.sf.saxon.pattern.NodeTestPattern r5 = new net.sf.saxon.pattern.NodeTestPattern
            net.sf.saxon.pattern.SameNameTest r2 = new net.sf.saxon.pattern.SameNameTest
            r2.<init>(r4)
            r5.<init>(r2)
        L2f:
            r2 = r0
            goto L32
        L31:
            r2 = r1
        L32:
            if (r2 != 0) goto L5b
        L34:
            boolean r2 = r5.m63465s(r4, r7)
            if (r2 == 0) goto L4b
            if (r6 != 0) goto L3d
            goto L5b
        L3d:
            r2 = r4
        L3e:
            boolean r3 = r6.m63465s(r2, r7)
            if (r3 != 0) goto L5b
            net.sf.saxon.om.NodeInfo r2 = r2.getParent()
            if (r2 != 0) goto L3e
            return r1
        L4b:
            if (r6 == 0) goto L54
            boolean r2 = r6.m63465s(r4, r7)
            if (r2 == 0) goto L54
            return r1
        L54:
            net.sf.saxon.om.NodeInfo r4 = r4.getParent()
            if (r4 != 0) goto L34
            return r1
        L5b:
            r6 = 11
            net.sf.saxon.pattern.NodeTest r1 = m64577b(r5)
            net.sf.saxon.tree.iter.AxisIterator r4 = r4.iterateAxis(r6, r1)
            boolean r6 = r5 instanceof net.p110sf.saxon.pattern.NodeTestPattern
        L67:
            net.sf.saxon.om.Item r1 = r4.next()
            net.sf.saxon.om.NodeInfo r1 = (net.p110sf.saxon.om.NodeInfo) r1
            if (r1 != 0) goto L70
            return r0
        L70:
            if (r6 != 0) goto L78
            boolean r1 = r5.m63465s(r1, r7)
            if (r1 == 0) goto L67
        L78:
            int r0 = r0 + 1
            goto L67
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.tree.util.Navigator.getNumberSingle(net.sf.saxon.om.NodeInfo, net.sf.saxon.pattern.Pattern, net.sf.saxon.pattern.Pattern, net.sf.saxon.expr.XPathContext):int");
    }

    public static NodeInfo getOutermostElement(TreeInfo treeInfo) {
        return treeInfo.getRootNode().iterateAxis(3, NodeKindTest.ELEMENT).next();
    }

    public static String getPath(NodeInfo nodeInfo) {
        return getPath(nodeInfo, null);
    }

    public static int getSiblingPosition(NodeInfo nodeInfo, NodeTest nodeTest, int i) {
        if ((nodeInfo instanceof SiblingCountingNode) && (nodeTest instanceof AnyNodeTest)) {
            return ((SiblingCountingNode) nodeInfo).getSiblingPosition();
        }
        AxisIterator iterateAxis = nodeInfo.iterateAxis(11, nodeTest);
        int i2 = 1;
        while (iterateAxis.next() != null && (i2 = i2 + 1) <= i) {
        }
        return i2;
    }

    public static boolean haveSameName(NodeInfo nodeInfo, NodeInfo nodeInfo2) {
        return (nodeInfo.hasFingerprint() && nodeInfo2.hasFingerprint()) ? nodeInfo.getFingerprint() == nodeInfo2.getFingerprint() : nodeInfo.getLocalPart().equals(nodeInfo2.getLocalPart()) && nodeInfo.getURI().equals(nodeInfo2.getURI());
    }

    public static boolean isAncestorOrSelf(NodeInfo nodeInfo, NodeInfo nodeInfo2) {
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind != 1 && nodeKind != 9) {
            return nodeInfo.equals(nodeInfo2);
        }
        if (nodeInfo instanceof TinyNodeImpl) {
            if (nodeInfo2 instanceof TinyNodeImpl) {
                return ((TinyNodeImpl) nodeInfo).isAncestorOrSelf((TinyNodeImpl) nodeInfo2);
            }
            if (nodeInfo2 instanceof TinyTextualElement.TinyTextualElementText) {
                return nodeInfo.equals(nodeInfo2) || isAncestorOrSelf(nodeInfo, nodeInfo2.getParent());
            }
            if (nodeInfo2.getNodeKind() != 13 && !(nodeInfo2 instanceof VirtualCopy)) {
                return false;
            }
        }
        while (nodeInfo2 != null) {
            if (nodeInfo.equals(nodeInfo2)) {
                return true;
            }
            nodeInfo2 = nodeInfo2.getParent();
        }
        return false;
    }

    public static NodeTest nodeTestFromPredicate(final NodePredicate nodePredicate) {
        if (nodePredicate instanceof NodeTest) {
            return (NodeTest) nodePredicate;
        }
        nodePredicate.getClass();
        return NodeSelector.m63449of(new Predicate() { // from class: com.sunia.HTREnginev2.itj
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return NodePredicate.this.test((NodeInfo) obj);
            }
        });
    }

    public static String getBaseURI(NodeInfo nodeInfo, Predicate<NodeInfo> predicate) {
        String attributeValue;
        if (nodeInfo instanceof TinyElementImpl) {
            attributeValue = ((TinyElementImpl) nodeInfo).getAttributeValue(StandardNames.XML_BASE);
        } else {
            attributeValue = nodeInfo.getAttributeValue("http://www.w3.org/XML/1998/namespace", gon.f71271X);
        }
        if (attributeValue != null) {
            try {
                URI uri = new URI(attributeValue);
                if (uri.isAbsolute()) {
                    return attributeValue;
                }
                NodeInfo parent = nodeInfo.getParent();
                if (parent == null) {
                    URI uri2 = new URI(nodeInfo.getSystemId());
                    if (!attributeValue.isEmpty()) {
                        uri2 = uri2.resolve(uri);
                    }
                    return uri2.toString();
                }
                String systemId = nodeInfo.getSystemId();
                if (systemId == null) {
                    return null;
                }
                String systemId2 = parent.getSystemId();
                if (nodeInfo instanceof TinyElementImpl) {
                    ((TinyElementImpl) nodeInfo).getTree().isTopWithinEntity(((TinyElementImpl) nodeInfo).getNodeNumber());
                } else {
                    systemId.equals(systemId2);
                }
                if (!predicate.test(nodeInfo)) {
                    systemId = parent.getBaseURI();
                }
                URI uri3 = new URI(systemId);
                if (!attributeValue.isEmpty()) {
                    uri3 = uri3.resolve(uri);
                }
                return uri3.toString();
            } catch (URISyntaxException unused) {
                return attributeValue;
            }
        }
        String systemId3 = nodeInfo.getSystemId();
        if (systemId3 == null) {
            return null;
        }
        NodeInfo parent2 = nodeInfo.getParent();
        if (parent2 == null) {
            return systemId3;
        }
        String systemId4 = parent2.getSystemId();
        return (systemId3.equals(systemId4) || systemId4.isEmpty()) ? parent2.getBaseURI() : systemId3;
    }

    public static String getPath(NodeInfo nodeInfo, XPathContext xPathContext) {
        String str = "";
        if (nodeInfo == null) {
            return "";
        }
        boolean isStreamedNode = nodeInfo.getConfiguration().isStreamedNode(nodeInfo);
        NodeInfo parent = nodeInfo.getParent();
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 1) {
            if (parent == null) {
                return nodeInfo.getDisplayName();
            }
            String path = getPath(parent, xPathContext);
            if (path.equals("/")) {
                return '/' + nodeInfo.getDisplayName();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(path);
            sb.append('/');
            sb.append(nodeInfo.getDisplayName());
            if (!isStreamedNode) {
                str = IteratorUtils.f104923a + getNumberSimple(nodeInfo, xPathContext) + IteratorUtils.f104924b;
            }
            sb.append(str);
            return sb.toString();
        }
        if (nodeKind == 2) {
            return getPath(parent, xPathContext) + "/@" + nodeInfo.getDisplayName();
        }
        if (nodeKind == 3) {
            String path2 = getPath(parent, xPathContext);
            StringBuilder sb2 = new StringBuilder();
            if (path2.equals("/")) {
                path2 = "";
            }
            sb2.append(path2);
            sb2.append("/text()");
            if (!isStreamedNode) {
                str = IteratorUtils.f104923a + getNumberSimple(nodeInfo, xPathContext) + IteratorUtils.f104924b;
            }
            sb2.append(str);
            return sb2.toString();
        }
        if (nodeKind == 7) {
            String path3 = getPath(parent, xPathContext);
            StringBuilder sb3 = new StringBuilder();
            if (path3.equals("/")) {
                path3 = "";
            }
            sb3.append(path3);
            sb3.append("/processing-instruction()");
            if (!isStreamedNode) {
                str = IteratorUtils.f104923a + getNumberSimple(nodeInfo, xPathContext) + IteratorUtils.f104924b;
            }
            sb3.append(str);
            return sb3.toString();
        }
        if (nodeKind != 8) {
            if (nodeKind == 9) {
                return "/";
            }
            if (nodeKind != 13) {
                return "";
            }
            String localPart = nodeInfo.getLocalPart();
            if (localPart.isEmpty()) {
                localPart = "*[not(local-name()]";
            }
            return getPath(parent, xPathContext) + "/namespace::" + localPart;
        }
        String path4 = getPath(parent, xPathContext);
        StringBuilder sb4 = new StringBuilder();
        if (path4.equals("/")) {
            path4 = "";
        }
        sb4.append(path4);
        sb4.append("/comment()");
        if (!isStreamedNode) {
            str = IteratorUtils.f104923a + getNumberSimple(nodeInfo, xPathContext) + IteratorUtils.f104924b;
        }
        sb4.append(str);
        return sb4.toString();
    }

    /* loaded from: classes11.dex */
    public static class ChildrenAsIterable implements Iterable<NodeInfo> {

        /* renamed from: e */
        public final NodeInfo f102680e;

        /* renamed from: f */
        public NodePredicate f102681f;

        public ChildrenAsIterable(NodeInfo nodeInfo) {
            this.f102681f = null;
            this.f102680e = nodeInfo;
        }

        @Override // java.lang.Iterable
        public Iterator<NodeInfo> iterator() {
            NodePredicate nodePredicate = this.f102681f;
            return new WrappingJavaIterator(nodePredicate == null ? this.f102680e.iterateAxis(3) : this.f102680e.iterateAxis(3, nodePredicate));
        }

        public ChildrenAsIterable(NodeInfo nodeInfo, NodePredicate nodePredicate) {
            this.f102680e = nodeInfo;
            this.f102681f = nodePredicate;
        }
    }

    public static void copy(NodeInfo nodeInfo, Outputter outputter, int i, Location location) throws XPathException {
        boolean z = (i & 4) != 0;
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 1) {
            outputter.startElement(NameOfNode.makeName(nodeInfo), z ? nodeInfo.getSchemaType() : Untyped.getInstance(), location, 192);
            if ((i & 2) != 0) {
                Iterator<NamespaceBinding> it2 = nodeInfo.getAllNamespaces().iterator();
                while (it2.hasNext()) {
                    NamespaceBinding next = it2.next();
                    outputter.namespace(next.getPrefix(), next.getURI(), 0);
                }
            }
            for (AttributeInfo attributeInfo : nodeInfo.attributes()) {
                outputter.attribute(attributeInfo.getNodeName(), z ? attributeInfo.getType() : BuiltInAtomicType.UNTYPED_ATOMIC, attributeInfo.getValue(), attributeInfo.getLocation(), attributeInfo.getProperties());
            }
            Iterator<? extends NodeInfo> it3 = nodeInfo.children().iterator();
            while (it3.hasNext()) {
                copy(it3.next(), outputter, i, location);
            }
            outputter.endElement();
            return;
        }
        if (nodeKind == 2) {
            outputter.attribute(NameOfNode.makeName(nodeInfo), z ? (SimpleType) nodeInfo.getSchemaType() : BuiltInAtomicType.UNTYPED_ATOMIC, nodeInfo.getStringValue(), location, 0);
            return;
        }
        if (nodeKind == 3) {
            UnicodeString unicodeStringValue = nodeInfo.getUnicodeStringValue();
            if (unicodeStringValue.length() != 0) {
                outputter.characters(unicodeStringValue, location, 0);
                return;
            }
            return;
        }
        if (nodeKind == 7) {
            outputter.processingInstruction(nodeInfo.getLocalPart(), nodeInfo.getUnicodeStringValue(), location, 0);
            return;
        }
        if (nodeKind == 8) {
            outputter.comment(nodeInfo.getUnicodeStringValue(), location, 0);
            return;
        }
        if (nodeKind != 9) {
            if (nodeKind != 13) {
                return;
            }
            outputter.namespace(nodeInfo.getLocalPart(), nodeInfo.getStringValue(), 0);
        } else {
            outputter.startDocument(CopyOptions.getStartDocumentProperties(i));
            Iterator<? extends NodeInfo> it4 = nodeInfo.children().iterator();
            while (it4.hasNext()) {
                copy(it4.next(), outputter, i, location);
            }
            outputter.endDocument();
        }
    }
}
