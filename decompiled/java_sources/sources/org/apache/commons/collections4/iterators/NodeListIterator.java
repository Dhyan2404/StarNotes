package org.apache.commons.collections4.iterators;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes11.dex */
public class NodeListIterator implements Iterator<Node> {

    /* renamed from: e */
    public final NodeList f105071e;

    /* renamed from: f */
    public int f105072f = 0;

    public NodeListIterator(Node node) {
        if (node != null) {
            this.f105071e = node.getChildNodes();
            return;
        }
        throw new NullPointerException("Node must not be null.");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        NodeList nodeList = this.f105071e;
        return nodeList != null && this.f105072f < nodeList.getLength();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove() method not supported for a NodeListIterator.");
    }

    @Override // java.util.Iterator
    public Node next() {
        NodeList nodeList = this.f105071e;
        if (nodeList != null && this.f105072f < nodeList.getLength()) {
            NodeList nodeList2 = this.f105071e;
            int i = this.f105072f;
            this.f105072f = i + 1;
            return nodeList2.item(i);
        }
        throw new NoSuchElementException("underlying nodeList has no more elements");
    }

    public NodeListIterator(NodeList nodeList) {
        if (nodeList != null) {
            this.f105071e = nodeList;
            return;
        }
        throw new NullPointerException("NodeList must not be null.");
    }
}
