package javax.imageio.spi;

import java.util.AbstractSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: javax.imageio.spi.c */
/* loaded from: classes5.dex */
public class C17885c<E> extends AbstractSet<E> {

    /* renamed from: e */
    public Map<E, DigraphNode<E>> f97964e;

    /* renamed from: f */
    public Set<E> f97965f;

    public C17885c() {
        HashMap hashMap = new HashMap();
        this.f97964e = hashMap;
        this.f97965f = hashMap.keySet();
    }

    /* renamed from: a */
    public boolean m61492a(E e, E e2) {
        return this.f97964e.get(e).hasEdge(this.f97964e.get(e2));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e) {
        if (this.f97965f.contains(e)) {
            return false;
        }
        this.f97964e.put(e, new DigraphNode<>(e));
        return true;
    }

    /* renamed from: b */
    public boolean m61493b(E e, E e2) {
        DigraphNode<E> digraphNode = this.f97964e.get(e);
        DigraphNode<E> digraphNode2 = this.f97964e.get(e2);
        digraphNode2.removeEdge(digraphNode);
        return digraphNode.addEdge(digraphNode2);
    }

    /* renamed from: c */
    public boolean m61494c(E e, E e2) {
        DigraphNode<E> digraphNode = this.f97964e.get(e);
        DigraphNode<E> digraphNode2 = this.f97964e.get(e2);
        return digraphNode.removeEdge(digraphNode2) || digraphNode2.removeEdge(digraphNode);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f97964e.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f97965f.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return new C17884b(this.f97964e.values().iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        DigraphNode<E> digraphNode = this.f97964e.get(obj);
        if (digraphNode == null) {
            return false;
        }
        this.f97964e.remove(obj);
        digraphNode.dispose();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f97965f.size();
    }
}
