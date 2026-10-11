package net.p110sf.saxon.tree.linked;

import com.sunia.HTREnginev2.itd;
import java.util.Arrays;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ArrayIterator;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.SingleNodeIterator;
import net.p110sf.saxon.tree.util.Navigator;

/* loaded from: classes11.dex */
public abstract class ParentNodeImpl extends NodeImpl {

    /* renamed from: h */
    public Object f102534h = null;

    /* renamed from: i */
    public int f102535i;

    public synchronized void addChild(NodeImpl nodeImpl, int i) {
        NodeImpl[] nodeImplArr;
        Object obj = this.f102534h;
        if (obj == null) {
            nodeImplArr = new NodeImpl[10];
        } else if (obj instanceof NodeImpl) {
            NodeImpl[] nodeImplArr2 = new NodeImpl[10];
            nodeImplArr2[0] = (NodeImpl) obj;
            nodeImplArr = nodeImplArr2;
        } else {
            nodeImplArr = (NodeImpl[]) obj;
        }
        if (i >= nodeImplArr.length) {
            nodeImplArr = (NodeImpl[]) Arrays.copyOf(nodeImplArr, nodeImplArr.length * 2);
        }
        nodeImplArr[i] = nodeImpl;
        nodeImpl.setRawParent(this);
        nodeImpl.setSiblingPosition(i);
        this.f102534h = nodeImplArr;
    }

    /* renamed from: b */
    public final NodeImpl[] m64540b(NodeInfo[] nodeInfoArr, boolean z) {
        NodeImpl[] nodeImplArr = new NodeImpl[nodeInfoArr.length];
        for (int i = 0; i < nodeInfoArr.length; i++) {
            NodeImpl m64542d = m64542d(nodeInfoArr[i]);
            nodeImplArr[i] = m64542d;
            m64542d.setRawParent(this);
            if (m64542d instanceof ElementImpl) {
                ((ElementImpl) m64542d).fixupInsertedNamespaces(z);
            }
        }
        return nodeImplArr;
    }

    /* renamed from: c */
    public final NodeImpl[] m64541c(NodeImpl[] nodeImplArr) {
        int length = nodeImplArr.length;
        NodeImpl[] nodeImplArr2 = new NodeImpl[length];
        int i = 0;
        boolean z = false;
        for (NodeImpl nodeImpl : nodeImplArr) {
            if (!(nodeImpl instanceof TextImpl)) {
                nodeImpl.setSiblingPosition(i);
                nodeImplArr2[i] = nodeImpl;
                i++;
                z = false;
            } else if (z) {
                TextImpl textImpl = (TextImpl) nodeImplArr2[i - 1];
                textImpl.replaceStringValue(textImpl.getUnicodeStringValue().concat(nodeImpl.getUnicodeStringValue()));
            } else if (!nodeImpl.getUnicodeStringValue().isEmpty()) {
                nodeImpl.setSiblingPosition(i);
                nodeImplArr2[i] = nodeImpl;
                z = true;
                i++;
            }
        }
        return i == length ? nodeImplArr2 : (NodeImpl[]) Arrays.copyOf(nodeImplArr2, i);
    }

    public synchronized void compact(int i) {
        try {
            if (i == 0) {
                this.f102534h = null;
            } else if (i == 1) {
                Object obj = this.f102534h;
                if (obj instanceof NodeImpl[]) {
                    this.f102534h = ((NodeImpl[]) obj)[0];
                }
            } else {
                this.f102534h = Arrays.copyOf((NodeImpl[]) this.f102534h, i);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: d */
    public final NodeImpl m64542d(NodeInfo nodeInfo) {
        if (nodeInfo instanceof NodeImpl) {
            return (NodeImpl) nodeInfo;
        }
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 1) {
            try {
                LinkedTreeBuilder linkedTreeBuilder = new LinkedTreeBuilder(getConfiguration().makePipelineConfiguration());
                linkedTreeBuilder.open();
                nodeInfo.copy(linkedTreeBuilder, 2, Loc.NONE);
                linkedTreeBuilder.close();
                return (NodeImpl) linkedTreeBuilder.getCurrentRoot();
            } catch (XPathException unused) {
                throw new IllegalArgumentException("Failed to convert inserted element node to an instance of net.sf.saxon.om.tree.ElementImpl");
            }
        }
        if (nodeKind == 3) {
            return new TextImpl(nodeInfo.getUnicodeStringValue());
        }
        if (nodeKind == 7) {
            return new ProcInstImpl(nodeInfo.getLocalPart(), nodeInfo.getUnicodeStringValue());
        }
        if (nodeKind == 8) {
            return new CommentImpl(nodeInfo.getUnicodeStringValue());
        }
        throw new IllegalArgumentException("Cannot insert a node unless it is an element, comment, text node, or processing instruction");
    }

    public final NodeImpl getNthChild(int i) {
        Object obj = this.f102534h;
        if (obj == null) {
            return null;
        }
        if (obj instanceof NodeImpl) {
            if (i == 0) {
                return (NodeImpl) obj;
            }
            return null;
        }
        NodeImpl[] nodeImplArr = (NodeImpl[]) obj;
        if (i < 0 || i >= nodeImplArr.length) {
            return null;
        }
        return nodeImplArr[i];
    }

    public final int getNumberOfChildren() {
        Object obj = this.f102534h;
        if (obj == null) {
            return 0;
        }
        if (obj instanceof NodeImpl) {
            return 1;
        }
        return ((NodeInfo[]) obj).length;
    }

    public final int getRawSequenceNumber() {
        return this.f102535i;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl
    public final long getSequenceNumber() {
        if (getRawSequenceNumber() == -1) {
            return -1L;
        }
        return getRawSequenceNumber() << 32;
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        NodeImpl firstChild = getFirstChild();
        UnicodeBuilder unicodeBuilder = null;
        while (firstChild != null) {
            if (firstChild instanceof TextImpl) {
                if (unicodeBuilder == null) {
                    unicodeBuilder = new UnicodeBuilder();
                }
                unicodeBuilder.accept(firstChild.getUnicodeStringValue());
            }
            firstChild = firstChild.getNextInDocument(this);
        }
        return unicodeBuilder == null ? EmptyUnicodeString.getInstance() : unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public final boolean hasChildNodes() {
        return this.f102534h != null;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.MutableNodeInfo
    public void insertChildren(NodeInfo[] nodeInfoArr, boolean z, boolean z2) {
        if (z) {
            insertChildrenAt(nodeInfoArr, 0, z2);
        } else {
            insertChildrenAt(nodeInfoArr, getNumberOfChildren(), z2);
        }
    }

    public synchronized void insertChildrenAt(NodeInfo[] nodeInfoArr, int i, boolean z) {
        if (nodeInfoArr.length == 0) {
            return;
        }
        NodeImpl[] m64540b = m64540b(nodeInfoArr, z);
        Object obj = this.f102534h;
        if (obj == null) {
            if (m64540b.length == 1) {
                NodeImpl nodeImpl = m64540b[0];
                this.f102534h = nodeImpl;
                nodeImpl.setSiblingPosition(0);
            } else {
                this.f102534h = m64541c(m64540b);
            }
        } else if (obj instanceof NodeImpl) {
            int length = i == 0 ? m64540b.length - 1 : 0;
            if (obj instanceof TextImpl) {
                NodeImpl nodeImpl2 = m64540b[length];
                if (nodeImpl2 instanceof TextImpl) {
                    if (i == 0) {
                        nodeImpl2.replaceStringValue(nodeImpl2.getUnicodeStringValue().concat(((TextImpl) this.f102534h).getUnicodeStringValue()));
                    } else {
                        nodeImpl2.replaceStringValue(((TextImpl) obj).getUnicodeStringValue().concat(m64540b[length].getUnicodeStringValue()));
                    }
                    this.f102534h = m64541c(m64540b);
                }
            }
            NodeImpl[] nodeImplArr = new NodeImpl[m64540b.length + 1];
            if (i == 0) {
                System.arraycopy(m64540b, 0, nodeImplArr, 0, m64540b.length);
                nodeImplArr[m64540b.length] = (NodeImpl) this.f102534h;
            } else {
                nodeImplArr[0] = (NodeImpl) obj;
                System.arraycopy(m64540b, 0, nodeImplArr, 1, m64540b.length);
            }
            this.f102534h = m64541c(nodeImplArr);
        } else {
            NodeImpl[] nodeImplArr2 = (NodeImpl[]) obj;
            NodeImpl[] nodeImplArr3 = new NodeImpl[nodeImplArr2.length + m64540b.length];
            System.arraycopy(nodeImplArr2, 0, nodeImplArr3, 0, i);
            System.arraycopy(m64540b, 0, nodeImplArr3, i, m64540b.length);
            System.arraycopy(nodeImplArr2, i, nodeImplArr3, m64540b.length + i, nodeImplArr2.length - i);
            this.f102534h = m64541c(nodeImplArr3);
        }
    }

    public final AxisIterator iterateChildren(NodeTest nodeTest) {
        Object obj = this.f102534h;
        if (obj == null) {
            return EmptyIterator.ofNodes();
        }
        if (!(obj instanceof NodeImpl)) {
            return (nodeTest == null || nodeTest == AnyNodeTest.getInstance()) ? new ArrayIterator.OfNodes((NodeImpl[]) this.f102534h) : new itd(this, nodeTest);
        }
        NodeImpl nodeImpl = (NodeImpl) obj;
        return (nodeTest == null || nodeTest == AnyNodeTest.getInstance()) ? SingleNodeIterator.makeIterator(nodeImpl) : Navigator.filteredSingleton(nodeImpl, nodeTest);
    }

    public void removeChild(NodeImpl nodeImpl) {
        Object obj = this.f102534h;
        if (obj == null) {
            return;
        }
        if (obj == nodeImpl) {
            this.f102534h = null;
            return;
        }
        NodeImpl[] nodeImplArr = (NodeImpl[]) obj;
        for (int i = 0; i < nodeImplArr.length; i++) {
            if (nodeImplArr[i] == nodeImpl) {
                if (nodeImplArr.length == 2) {
                    this.f102534h = nodeImplArr[1 - i];
                    return;
                }
                NodeImpl[] nodeImplArr2 = new NodeImpl[nodeImplArr.length - 1];
                if (i > 0) {
                    System.arraycopy(nodeImplArr, 0, nodeImplArr2, 0, i);
                }
                if (i < nodeImplArr.length - 1) {
                    System.arraycopy(nodeImplArr, i + 1, nodeImplArr2, i, (nodeImplArr.length - i) - 1);
                }
                this.f102534h = m64541c(nodeImplArr2);
                return;
            }
        }
    }

    public synchronized void replaceChildrenAt(NodeInfo[] nodeInfoArr, int i, boolean z) {
        if (this.f102534h == null) {
            return;
        }
        NodeImpl[] m64540b = m64540b(nodeInfoArr, z);
        Object obj = this.f102534h;
        if (!(obj instanceof NodeImpl)) {
            NodeImpl[] nodeImplArr = (NodeImpl[]) obj;
            NodeImpl[] nodeImplArr2 = new NodeImpl[(nodeImplArr.length + m64540b.length) - 1];
            System.arraycopy(nodeImplArr, 0, nodeImplArr2, 0, i);
            System.arraycopy(m64540b, 0, nodeImplArr2, i, m64540b.length);
            System.arraycopy(nodeImplArr, i + 1, nodeImplArr2, m64540b.length + i, (nodeImplArr.length - i) - 1);
            this.f102534h = m64541c(nodeImplArr2);
        } else if (m64540b.length == 0) {
            this.f102534h = null;
        } else if (m64540b.length == 1) {
            this.f102534h = m64540b[0];
        } else {
            NodeImpl[] nodeImplArr3 = new NodeImpl[m64540b.length];
            System.arraycopy(m64540b, 0, nodeImplArr3, 0, nodeInfoArr.length);
            this.f102534h = m64541c(nodeImplArr3);
        }
    }

    public final void setChildren(Object obj) {
        this.f102534h = obj;
    }

    public final void setRawSequenceNumber(int i) {
        this.f102535i = i;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.tree.util.SteppingNode
    public final NodeImpl getFirstChild() {
        Object obj = this.f102534h;
        if (obj == null) {
            return null;
        }
        if (obj instanceof NodeImpl) {
            return (NodeImpl) obj;
        }
        return ((NodeImpl[]) obj)[0];
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl
    public final NodeImpl getLastChild() {
        Object obj = this.f102534h;
        if (obj == null) {
            return null;
        }
        if (obj instanceof NodeImpl) {
            return (NodeImpl) obj;
        }
        return ((NodeImpl[]) obj)[r1.length - 1];
    }
}
