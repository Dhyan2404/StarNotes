package javax.imageio.spi;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

/* renamed from: javax.imageio.spi.b */
/* loaded from: classes5.dex */
public class C17884b<E> implements Iterator<E> {

    /* renamed from: e */
    public LinkedList<DigraphNode<E>> f97962e = new LinkedList<>();

    /* renamed from: f */
    public Map<DigraphNode<E>, Integer> f97963f = new HashMap();

    public C17884b(Iterator<DigraphNode<E>> it2) {
        while (it2.hasNext()) {
            DigraphNode<E> next = it2.next();
            int inDegree = next.getInDegree();
            this.f97963f.put(next, Integer.valueOf(inDegree));
            if (inDegree == 0) {
                this.f97962e.add(next);
            }
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return !this.f97962e.isEmpty();
    }

    @Override // java.util.Iterator
    public E next() {
        DigraphNode<E> removeFirst = this.f97962e.removeFirst();
        Iterator<DigraphNode<E>> outNodes = removeFirst.getOutNodes();
        while (outNodes.hasNext()) {
            DigraphNode<E> next = outNodes.next();
            int intValue = this.f97963f.get(next).intValue() - 1;
            this.f97963f.put(next, Integer.valueOf(intValue));
            if (intValue == 0) {
                this.f97962e.add(next);
            }
        }
        return removeFirst.getData();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
