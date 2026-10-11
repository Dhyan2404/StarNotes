package com.twelvemonkeys.imageio.metadata;

import com.twelvemonkeys.lang.Validate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes10.dex */
public abstract class AbstractDirectory implements Directory {

    /* renamed from: e */
    public final List<Entry> f94038e;

    /* renamed from: f */
    public final List<Entry> f94039f;

    public AbstractDirectory(Collection<? extends Entry> collection) {
        ArrayList arrayList = new ArrayList();
        this.f94038e = arrayList;
        this.f94039f = Collections.unmodifiableList(arrayList);
        if (collection != null) {
            arrayList.addAll(Validate.noNullElements(collection));
        }
    }

    @Override // com.twelvemonkeys.imageio.metadata.Directory
    public boolean add(Entry entry) {
        assertMutable();
        return this.f94038e.add(entry);
    }

    public final void assertMutable() {
        if (isReadOnly()) {
            throw new UnsupportedOperationException("Directory is read-only");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f94038e.equals(((AbstractDirectory) obj).f94038e);
    }

    @Override // com.twelvemonkeys.imageio.metadata.Directory
    public Entry getEntryByFieldName(String str) {
        Iterator<Entry> it2 = iterator();
        while (it2.hasNext()) {
            Entry next = it2.next();
            if (next.getFieldName() != null && next.getFieldName().equals(str)) {
                return next;
            }
        }
        return null;
    }

    @Override // com.twelvemonkeys.imageio.metadata.Directory
    public Entry getEntryById(Object obj) {
        Iterator<Entry> it2 = iterator();
        while (it2.hasNext()) {
            Entry next = it2.next();
            if (next.getIdentifier().equals(obj)) {
                return next;
            }
        }
        return null;
    }

    public int hashCode() {
        return this.f94038e.hashCode();
    }

    @Override // com.twelvemonkeys.imageio.metadata.Directory
    public boolean isReadOnly() {
        return true;
    }

    @Override // java.lang.Iterable
    public Iterator<Entry> iterator() {
        return (isReadOnly() ? this.f94039f : this.f94038e).iterator();
    }

    @Override // com.twelvemonkeys.imageio.metadata.Directory
    public boolean remove(Object obj) {
        assertMutable();
        return this.f94038e.remove(obj);
    }

    @Override // com.twelvemonkeys.imageio.metadata.Directory
    public int size() {
        return this.f94038e.size();
    }

    public String toString() {
        return String.format("%s%s", getClass().getSimpleName(), this.f94038e.toString());
    }
}
