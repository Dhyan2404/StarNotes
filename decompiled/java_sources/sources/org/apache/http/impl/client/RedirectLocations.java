package org.apache.http.impl.client;

import java.net.URI;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes12.dex */
public class RedirectLocations extends AbstractList<Object> {

    /* renamed from: e */
    public final Set<URI> f110678e = new HashSet();

    /* renamed from: f */
    public final List<URI> f110679f = new ArrayList();

    public void add(URI uri) {
        this.f110678e.add(uri);
        this.f110679f.add(uri);
    }

    public boolean contains(URI uri) {
        return this.f110678e.contains(uri);
    }

    public List<URI> getAll() {
        return new ArrayList(this.f110679f);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        URI uri = (URI) obj;
        URI uri2 = this.f110679f.set(i, uri);
        this.f110678e.remove(uri2);
        this.f110678e.add(uri);
        if (this.f110679f.size() != this.f110678e.size()) {
            this.f110678e.addAll(this.f110679f);
        }
        return uri2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f110679f.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.f110678e.contains(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public URI get(int i) {
        return this.f110679f.get(i);
    }

    public boolean remove(URI uri) {
        boolean remove = this.f110678e.remove(uri);
        if (remove) {
            Iterator<URI> it2 = this.f110679f.iterator();
            while (it2.hasNext()) {
                if (it2.next().equals(uri)) {
                    it2.remove();
                }
            }
        }
        return remove;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        URI uri = (URI) obj;
        this.f110679f.add(i, uri);
        this.f110678e.add(uri);
    }

    @Override // java.util.AbstractList, java.util.List
    public URI remove(int i) {
        URI remove = this.f110679f.remove(i);
        this.f110678e.remove(remove);
        if (this.f110679f.size() != this.f110678e.size()) {
            this.f110678e.addAll(this.f110679f);
        }
        return remove;
    }
}
