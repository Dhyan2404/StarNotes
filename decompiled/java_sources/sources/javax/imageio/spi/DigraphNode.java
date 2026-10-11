package javax.imageio.spi;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes5.dex */
class DigraphNode<E> implements Cloneable, Serializable {
    private static final long serialVersionUID = 5308261378582246841L;
    protected E data;
    protected Set<DigraphNode<E>> outNodes = new HashSet();
    protected int inDegree = 0;
    private Set<DigraphNode<E>> inNodes = new HashSet();

    public DigraphNode(E e) {
        this.data = e;
    }

    private void decrementInDegree() {
        this.inDegree--;
    }

    private void incrementInDegree() {
        this.inDegree++;
    }

    public boolean addEdge(DigraphNode<E> digraphNode) {
        if (this.outNodes.contains(digraphNode)) {
            return false;
        }
        this.outNodes.add(digraphNode);
        digraphNode.inNodes.add(this);
        digraphNode.incrementInDegree();
        return true;
    }

    public void dispose() {
        for (Object obj : this.inNodes.toArray()) {
            ((DigraphNode) obj).removeEdge(this);
        }
        for (Object obj2 : this.outNodes.toArray()) {
            removeEdge((DigraphNode) obj2);
        }
    }

    public E getData() {
        return this.data;
    }

    public int getInDegree() {
        return this.inDegree;
    }

    public Iterator<DigraphNode<E>> getOutNodes() {
        return this.outNodes.iterator();
    }

    public boolean hasEdge(DigraphNode<E> digraphNode) {
        return this.outNodes.contains(digraphNode);
    }

    public boolean removeEdge(DigraphNode<E> digraphNode) {
        if (!this.outNodes.contains(digraphNode)) {
            return false;
        }
        this.outNodes.remove(digraphNode);
        digraphNode.inNodes.remove(this);
        digraphNode.decrementInDegree();
        return true;
    }
}
