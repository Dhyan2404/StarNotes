package org.apache.commons.math3.geometry.partitioning.utilities;

import java.lang.Comparable;

@Deprecated
/* loaded from: classes12.dex */
public class AVLTree<T extends Comparable<T>> {

    /* renamed from: a */
    public AVLTree<T>.Node f108394a = null;

    /* loaded from: classes12.dex */
    public class Node {

        /* renamed from: a */
        public T f108395a;

        /* renamed from: d */
        public AVLTree<T>.Node f108398d;

        /* renamed from: b */
        public AVLTree<T>.Node f108396b = null;

        /* renamed from: c */
        public AVLTree<T>.Node f108397c = null;

        /* renamed from: e */
        public Skew f108399e = Skew.BALANCED;

        public Node(T t, AVLTree<T>.Node node) {
            this.f108395a = t;
            this.f108398d = node;
        }

        /* renamed from: d */
        public AVLTree<T>.Node m67744d() {
            while (true) {
                AVLTree<T>.Node node = this.f108397c;
                if (node == null) {
                    return this;
                }
                this = node;
            }
        }

        public void delete() {
            boolean z;
            AVLTree<T>.Node node = this.f108398d;
            AVLTree<T>.Node node2 = null;
            if (node == null && this.f108396b == null && this.f108397c == null) {
                this.f108395a = null;
                AVLTree.this.f108394a = null;
                return;
            }
            AVLTree<T>.Node node3 = this.f108396b;
            if (node3 == null && this.f108397c == null) {
                this.f108395a = null;
                z = this == node.f108396b;
            } else {
                AVLTree<T>.Node m67744d = node3 != null ? node3.m67744d() : this.f108397c.m67745e();
                this.f108395a = (T) m67744d.f108395a;
                boolean z2 = m67744d == m67744d.f108398d.f108396b;
                node2 = m67744d.f108396b;
                if (node2 == null) {
                    node2 = m67744d.f108397c;
                }
                AVLTree<T>.Node node4 = m67744d;
                z = z2;
                this = node4;
            }
            AVLTree<T>.Node node5 = this.f108398d;
            if (z) {
                node5.f108396b = node2;
            } else {
                node5.f108397c = node2;
            }
            if (node2 != null) {
                node2.f108398d = node5;
            }
            while (true) {
                if (z) {
                    if (!node5.m67748h()) {
                        return;
                    }
                } else if (!node5.m67750j()) {
                    return;
                }
                AVLTree<T>.Node node6 = node5.f108398d;
                if (node6 == null) {
                    return;
                }
                z = node5 == node6.f108396b;
                node5 = node6;
            }
        }

        /* renamed from: e */
        public AVLTree<T>.Node m67745e() {
            while (true) {
                AVLTree<T>.Node node = this.f108396b;
                if (node == null) {
                    return this;
                }
                this = node;
            }
        }

        /* renamed from: f */
        public boolean m67746f(T t) {
            if (t.compareTo(this.f108395a) < 0) {
                AVLTree<T>.Node node = this.f108396b;
                if (node == null) {
                    this.f108396b = new Node(t, this);
                    return m67747g();
                }
                if (node.m67746f(t)) {
                    return m67747g();
                }
                return false;
            }
            AVLTree<T>.Node node2 = this.f108397c;
            if (node2 == null) {
                this.f108397c = new Node(t, this);
                return m67749i();
            }
            if (node2.m67746f(t)) {
                return m67749i();
            }
            return false;
        }

        /* renamed from: g */
        public final boolean m67747g() {
            int[] iArr = C19142a.f108401a;
            int i = iArr[this.f108399e.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    this.f108399e = Skew.LEFT_HIGH;
                    return true;
                }
                this.f108399e = Skew.BALANCED;
                return false;
            }
            AVLTree<T>.Node node = this.f108396b;
            Skew skew = node.f108399e;
            Skew skew2 = Skew.LEFT_HIGH;
            if (skew == skew2) {
                m67752l();
                Skew skew3 = Skew.BALANCED;
                this.f108399e = skew3;
                this.f108397c.f108399e = skew3;
            } else {
                Skew skew4 = node.f108397c.f108399e;
                node.m67751k();
                m67752l();
                int i2 = iArr[skew4.ordinal()];
                if (i2 == 1) {
                    this.f108396b.f108399e = Skew.BALANCED;
                    this.f108397c.f108399e = Skew.RIGHT_HIGH;
                } else if (i2 != 2) {
                    AVLTree<T>.Node node2 = this.f108396b;
                    Skew skew5 = Skew.BALANCED;
                    node2.f108399e = skew5;
                    this.f108397c.f108399e = skew5;
                } else {
                    this.f108396b.f108399e = skew2;
                    this.f108397c.f108399e = Skew.BALANCED;
                }
                this.f108399e = Skew.BALANCED;
            }
            return false;
        }

        public T getElement() {
            return this.f108395a;
        }

        public AVLTree<T>.Node getNext() {
            AVLTree<T>.Node m67745e;
            AVLTree<T>.Node node = this.f108397c;
            if (node != null && (m67745e = node.m67745e()) != null) {
                return m67745e;
            }
            while (true) {
                AVLTree<T>.Node node2 = this.f108398d;
                if (node2 == null) {
                    return null;
                }
                if (this != node2.f108397c) {
                    return node2;
                }
                this = node2;
            }
        }

        public AVLTree<T>.Node getPrevious() {
            AVLTree<T>.Node m67744d;
            AVLTree<T>.Node node = this.f108396b;
            if (node != null && (m67744d = node.m67744d()) != null) {
                return m67744d;
            }
            while (true) {
                AVLTree<T>.Node node2 = this.f108398d;
                if (node2 == null) {
                    return null;
                }
                if (this != node2.f108396b) {
                    return node2;
                }
                this = node2;
            }
        }

        /* renamed from: h */
        public final boolean m67748h() {
            int[] iArr = C19142a.f108401a;
            int i = iArr[this.f108399e.ordinal()];
            if (i == 1) {
                this.f108399e = Skew.BALANCED;
                return true;
            }
            if (i != 2) {
                this.f108399e = Skew.RIGHT_HIGH;
                return false;
            }
            AVLTree<T>.Node node = this.f108397c;
            Skew skew = node.f108399e;
            Skew skew2 = Skew.RIGHT_HIGH;
            if (skew == skew2) {
                m67751k();
                Skew skew3 = Skew.BALANCED;
                this.f108399e = skew3;
                this.f108396b.f108399e = skew3;
                return true;
            }
            Skew skew4 = Skew.BALANCED;
            if (skew == skew4) {
                m67751k();
                this.f108399e = Skew.LEFT_HIGH;
                this.f108396b.f108399e = skew2;
                return false;
            }
            Skew skew5 = node.f108396b.f108399e;
            node.m67752l();
            m67751k();
            int i2 = iArr[skew5.ordinal()];
            if (i2 == 1) {
                this.f108396b.f108399e = skew4;
                this.f108397c.f108399e = skew2;
            } else if (i2 != 2) {
                this.f108396b.f108399e = skew4;
                this.f108397c.f108399e = skew4;
            } else {
                this.f108396b.f108399e = Skew.LEFT_HIGH;
                this.f108397c.f108399e = skew4;
            }
            this.f108399e = skew4;
            return true;
        }

        /* renamed from: i */
        public final boolean m67749i() {
            int[] iArr = C19142a.f108401a;
            int i = iArr[this.f108399e.ordinal()];
            if (i == 1) {
                this.f108399e = Skew.BALANCED;
                return false;
            }
            if (i != 2) {
                this.f108399e = Skew.RIGHT_HIGH;
                return true;
            }
            AVLTree<T>.Node node = this.f108397c;
            Skew skew = node.f108399e;
            Skew skew2 = Skew.RIGHT_HIGH;
            if (skew == skew2) {
                m67751k();
                Skew skew3 = Skew.BALANCED;
                this.f108399e = skew3;
                this.f108396b.f108399e = skew3;
            } else {
                Skew skew4 = node.f108396b.f108399e;
                node.m67752l();
                m67751k();
                int i2 = iArr[skew4.ordinal()];
                if (i2 == 1) {
                    this.f108396b.f108399e = Skew.BALANCED;
                    this.f108397c.f108399e = skew2;
                } else if (i2 != 2) {
                    AVLTree<T>.Node node2 = this.f108396b;
                    Skew skew5 = Skew.BALANCED;
                    node2.f108399e = skew5;
                    this.f108397c.f108399e = skew5;
                } else {
                    this.f108396b.f108399e = Skew.LEFT_HIGH;
                    this.f108397c.f108399e = Skew.BALANCED;
                }
                this.f108399e = Skew.BALANCED;
            }
            return false;
        }

        /* renamed from: j */
        public final boolean m67750j() {
            int[] iArr = C19142a.f108401a;
            int i = iArr[this.f108399e.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    this.f108399e = Skew.LEFT_HIGH;
                    return false;
                }
                this.f108399e = Skew.BALANCED;
                return true;
            }
            AVLTree<T>.Node node = this.f108396b;
            Skew skew = node.f108399e;
            Skew skew2 = Skew.LEFT_HIGH;
            if (skew == skew2) {
                m67752l();
                Skew skew3 = Skew.BALANCED;
                this.f108399e = skew3;
                this.f108397c.f108399e = skew3;
                return true;
            }
            Skew skew4 = Skew.BALANCED;
            if (skew == skew4) {
                m67752l();
                this.f108399e = Skew.RIGHT_HIGH;
                this.f108397c.f108399e = skew2;
                return false;
            }
            Skew skew5 = node.f108397c.f108399e;
            node.m67751k();
            m67752l();
            int i2 = iArr[skew5.ordinal()];
            if (i2 == 1) {
                this.f108396b.f108399e = skew4;
                this.f108397c.f108399e = Skew.RIGHT_HIGH;
            } else if (i2 != 2) {
                this.f108396b.f108399e = skew4;
                this.f108397c.f108399e = skew4;
            } else {
                this.f108396b.f108399e = skew2;
                this.f108397c.f108399e = skew4;
            }
            this.f108399e = skew4;
            return true;
        }

        /* renamed from: k */
        public final void m67751k() {
            T t = this.f108395a;
            AVLTree<T>.Node node = this.f108397c;
            this.f108395a = (T) node.f108395a;
            node.f108395a = t;
            this.f108397c = node.f108397c;
            node.f108397c = node.f108396b;
            node.f108396b = this.f108396b;
            this.f108396b = node;
            AVLTree<T>.Node node2 = this.f108397c;
            if (node2 != null) {
                node2.f108398d = this;
            }
            AVLTree<T>.Node node3 = node.f108396b;
            if (node3 != null) {
                node3.f108398d = node;
            }
        }

        /* renamed from: l */
        public final void m67752l() {
            T t = this.f108395a;
            AVLTree<T>.Node node = this.f108396b;
            this.f108395a = (T) node.f108395a;
            node.f108395a = t;
            this.f108396b = node.f108396b;
            node.f108396b = node.f108397c;
            node.f108397c = this.f108397c;
            this.f108397c = node;
            AVLTree<T>.Node node2 = this.f108396b;
            if (node2 != null) {
                node2.f108398d = this;
            }
            AVLTree<T>.Node node3 = node.f108397c;
            if (node3 != null) {
                node3.f108398d = node;
            }
        }

        /* renamed from: m */
        public int m67753m() {
            AVLTree<T>.Node node = this.f108396b;
            int m67753m = (node == null ? 0 : node.m67753m()) + 1;
            AVLTree<T>.Node node2 = this.f108397c;
            return m67753m + (node2 != null ? node2.m67753m() : 0);
        }
    }

    /* loaded from: classes12.dex */
    public enum Skew {
        LEFT_HIGH,
        RIGHT_HIGH,
        BALANCED
    }

    /* renamed from: org.apache.commons.math3.geometry.partitioning.utilities.AVLTree$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19142a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f108401a;

        static {
            int[] iArr = new int[Skew.values().length];
            f108401a = iArr;
            try {
                iArr[Skew.LEFT_HIGH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f108401a[Skew.RIGHT_HIGH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public boolean delete(T t) {
        if (t != null) {
            for (AVLTree<T>.Node notSmaller = getNotSmaller(t); notSmaller != null; notSmaller = notSmaller.getNext()) {
                if (notSmaller.f108395a == t) {
                    notSmaller.delete();
                    return true;
                }
                if (notSmaller.f108395a.compareTo(t) > 0) {
                    return false;
                }
            }
        }
        return false;
    }

    public AVLTree<T>.Node getLargest() {
        AVLTree<T>.Node node = this.f108394a;
        if (node == null) {
            return null;
        }
        return node.m67744d();
    }

    public AVLTree<T>.Node getNotLarger(T t) {
        AVLTree<T>.Node node = this.f108394a;
        AVLTree<T>.Node node2 = null;
        while (node != null) {
            if (node.f108395a.compareTo(t) > 0) {
                if (node.f108396b == null) {
                    return node2;
                }
                node = node.f108396b;
            } else {
                if (node.f108397c == null) {
                    return node;
                }
                node2 = node;
                node = node.f108397c;
            }
        }
        return null;
    }

    public AVLTree<T>.Node getNotSmaller(T t) {
        AVLTree<T>.Node node = this.f108394a;
        AVLTree<T>.Node node2 = null;
        while (node != null) {
            if (node.f108395a.compareTo(t) < 0) {
                if (node.f108397c == null) {
                    return node2;
                }
                node = node.f108397c;
            } else {
                if (node.f108396b == null) {
                    return node;
                }
                node2 = node;
                node = node.f108396b;
            }
        }
        return null;
    }

    public AVLTree<T>.Node getSmallest() {
        AVLTree<T>.Node node = this.f108394a;
        if (node == null) {
            return null;
        }
        return node.m67745e();
    }

    public void insert(T t) {
        if (t != null) {
            AVLTree<T>.Node node = this.f108394a;
            if (node == null) {
                this.f108394a = new Node(t, null);
            } else {
                node.m67746f(t);
            }
        }
    }

    public boolean isEmpty() {
        return this.f108394a == null;
    }

    public int size() {
        AVLTree<T>.Node node = this.f108394a;
        if (node == null) {
            return 0;
        }
        return node.m67753m();
    }
}
