package net.p110sf.saxon.tree.util;

import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.LocalNameTest;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NamespaceTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.tree.iter.AxisIterator;

/* loaded from: classes11.dex */
public abstract class SteppingNavigator {

    /* renamed from: net.sf.saxon.tree.util.SteppingNavigator$a */
    /* loaded from: classes11.dex */
    public static class C18549a implements InterfaceC18553e {

        /* renamed from: a */
        public SteppingNode f102707a;

        /* renamed from: b */
        public String f102708b;

        /* renamed from: c */
        public String f102709c;

        public C18549a(SteppingNode steppingNode, String str, String str2) {
            this.f102707a = steppingNode;
            this.f102708b = str;
            this.f102709c = str2;
        }

        @Override // net.p110sf.saxon.tree.util.SteppingNavigator.InterfaceC18553e
        /* renamed from: a */
        public SteppingNode mo64582a(SteppingNode steppingNode) {
            return steppingNode.getSuccessorElement(this.f102707a, this.f102708b, this.f102709c);
        }
    }

    /* renamed from: net.sf.saxon.tree.util.SteppingNavigator$b */
    /* loaded from: classes11.dex */
    public static class C18550b implements InterfaceC18553e {

        /* renamed from: a */
        public SteppingNode f102710a;

        /* renamed from: b */
        public NodeTest f102711b;

        public C18550b(SteppingNode steppingNode, NodeTest nodeTest) {
            this.f102710a = steppingNode;
            this.f102711b = nodeTest;
        }

        @Override // net.p110sf.saxon.tree.util.SteppingNavigator.InterfaceC18553e
        /* renamed from: a */
        public SteppingNode mo64582a(SteppingNode steppingNode) {
            do {
                steppingNode = SteppingNavigator.m64581a(steppingNode, this.f102710a);
                if (steppingNode == null) {
                    break;
                }
            } while (!this.f102711b.test(steppingNode));
            return steppingNode;
        }
    }

    /* renamed from: net.sf.saxon.tree.util.SteppingNavigator$c */
    /* loaded from: classes11.dex */
    public static class C18551c implements InterfaceC18553e {

        /* renamed from: a */
        public SteppingNode f102712a;

        /* renamed from: b */
        public int f102713b;

        public C18551c(SteppingNode steppingNode, int i) {
            this.f102712a = steppingNode;
            this.f102713b = i;
        }

        @Override // net.p110sf.saxon.tree.util.SteppingNavigator.InterfaceC18553e
        /* renamed from: a */
        public SteppingNode mo64582a(SteppingNode steppingNode) {
            do {
                steppingNode = SteppingNavigator.m64581a(steppingNode, this.f102712a);
                if (steppingNode == null) {
                    break;
                }
            } while (steppingNode.getFingerprint() != this.f102713b);
            return steppingNode;
        }
    }

    /* renamed from: net.sf.saxon.tree.util.SteppingNavigator$d */
    /* loaded from: classes11.dex */
    public static class C18552d implements InterfaceC18553e {

        /* renamed from: a */
        public SteppingNode f102714a;

        public C18552d(SteppingNode steppingNode) {
            this.f102714a = steppingNode;
        }

        @Override // net.p110sf.saxon.tree.util.SteppingNavigator.InterfaceC18553e
        /* renamed from: a */
        public SteppingNode mo64582a(SteppingNode steppingNode) {
            return SteppingNavigator.m64581a(steppingNode, this.f102714a);
        }
    }

    /* renamed from: net.sf.saxon.tree.util.SteppingNavigator$e */
    /* loaded from: classes11.dex */
    public interface InterfaceC18553e {
        /* renamed from: a */
        SteppingNode mo64582a(SteppingNode steppingNode);
    }

    /* renamed from: a */
    public static SteppingNode m64581a(SteppingNode steppingNode, SteppingNode steppingNode2) {
        SteppingNode parent;
        SteppingNode firstChild = steppingNode.getFirstChild();
        if (firstChild != null) {
            return firstChild;
        }
        if (steppingNode.isSameNodeInfo(steppingNode2)) {
            return null;
        }
        SteppingNode parent2 = steppingNode.getParent();
        while (true) {
            SteppingNode nextSibling = steppingNode.getNextSibling();
            if (nextSibling != null) {
                return nextSibling;
            }
            if (parent2.isSameNodeInfo(steppingNode2) || (parent = parent2.getParent()) == null) {
                return null;
            }
            SteppingNode steppingNode3 = parent2;
            parent2 = parent;
            steppingNode = steppingNode3;
        }
    }

    /* loaded from: classes11.dex */
    public static class DescendantAxisIterator implements AxisIterator {

        /* renamed from: e */
        public final SteppingNode f102704e;

        /* renamed from: f */
        public SteppingNode f102705f;

        /* renamed from: g */
        public final InterfaceC18553e f102706g;

        public DescendantAxisIterator(SteppingNode steppingNode, boolean z, NodeTest nodeTest) {
            this.f102704e = steppingNode;
            if (!z || !nodeTest.test(steppingNode)) {
                this.f102705f = steppingNode;
            }
            if (nodeTest == null || nodeTest == AnyNodeTest.getInstance()) {
                this.f102706g = new C18552d(steppingNode);
                return;
            }
            if (nodeTest instanceof NameTest) {
                NameTest nameTest = (NameTest) nodeTest;
                if (nameTest.getPrimitiveType() != 1) {
                    this.f102706g = new C18550b(steppingNode, nodeTest);
                    return;
                } else if (steppingNode.hasFingerprint()) {
                    this.f102706g = new C18551c(steppingNode, nameTest.getFingerprint());
                    return;
                } else {
                    this.f102706g = new C18549a(steppingNode, nameTest.getNamespaceURI(), nameTest.getLocalPart());
                    return;
                }
            }
            if (nodeTest instanceof NodeKindTest) {
                if (((NodeKindTest) nodeTest).getPrimitiveType() == 1) {
                    this.f102706g = new C18549a(steppingNode, null, null);
                    return;
                } else {
                    this.f102706g = new C18550b(steppingNode, nodeTest);
                    return;
                }
            }
            if (nodeTest instanceof LocalNameTest) {
                LocalNameTest localNameTest = (LocalNameTest) nodeTest;
                if (localNameTest.getPrimitiveType() == 1) {
                    this.f102706g = new C18549a(steppingNode, null, localNameTest.getLocalName());
                    return;
                } else {
                    this.f102706g = new C18550b(steppingNode, nodeTest);
                    return;
                }
            }
            if (!(nodeTest instanceof NamespaceTest)) {
                this.f102706g = new C18550b(steppingNode, nodeTest);
                return;
            }
            NamespaceTest namespaceTest = (NamespaceTest) nodeTest;
            if (namespaceTest.getPrimitiveType() == 1) {
                this.f102706g = new C18549a(steppingNode, namespaceTest.getNamespaceURI(), null);
            } else {
                this.f102706g = new C18550b(steppingNode, nodeTest);
            }
        }

        @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
        public SteppingNode next() {
            SteppingNode steppingNode = this.f102705f;
            if (steppingNode == null) {
                SteppingNode steppingNode2 = this.f102704e;
                this.f102705f = steppingNode2;
                return steppingNode2;
            }
            SteppingNode mo64582a = this.f102706g.mo64582a(steppingNode);
            this.f102705f = mo64582a;
            return mo64582a;
        }
    }
}
