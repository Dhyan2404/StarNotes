package com.twelvemonkeys.imageio.metadata;

import com.twelvemonkeys.lang.Validate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes10.dex */
public abstract class AbstractCompoundDirectory extends AbstractDirectory implements CompoundDirectory {

    /* renamed from: g */
    public final List<Directory> f94034g;

    /* renamed from: com.twelvemonkeys.imageio.metadata.AbstractCompoundDirectory$a */
    /* loaded from: classes10.dex */
    public class C16949a implements Iterator<Entry> {

        /* renamed from: e */
        public Iterator<Directory> f94035e;

        /* renamed from: f */
        public Iterator<Entry> f94036f;

        public C16949a() {
            this.f94035e = AbstractCompoundDirectory.this.f94034g.iterator();
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Entry next() {
            hasNext();
            return this.f94036f.next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Iterator<Entry> it2 = this.f94036f;
            if (it2 == null || !it2.hasNext()) {
                if (this.f94035e.hasNext()) {
                    Iterator<Entry> it3 = this.f94035e.next().iterator();
                    this.f94036f = it3;
                    if (it3.hasNext()) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f94036f.remove();
        }
    }

    public AbstractCompoundDirectory(Collection<? extends Directory> collection) {
        super(null);
        ArrayList arrayList = new ArrayList();
        this.f94034g = arrayList;
        if (collection != null) {
            arrayList.addAll(Validate.noNullElements(collection));
        }
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractDirectory, com.twelvemonkeys.imageio.metadata.Directory
    public boolean add(Entry entry) {
        throw new UnsupportedOperationException("Directory is read-only");
    }

    @Override // com.twelvemonkeys.imageio.metadata.CompoundDirectory
    public int directoryCount() {
        return this.f94034g.size();
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractDirectory
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        CompoundDirectory compoundDirectory = (CompoundDirectory) obj;
        if (directoryCount() != compoundDirectory.directoryCount()) {
            return false;
        }
        for (int i = 0; i < directoryCount(); i++) {
            if (!getDirectory(i).equals(compoundDirectory.getDirectory(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // com.twelvemonkeys.imageio.metadata.CompoundDirectory
    public Directory getDirectory(int i) {
        return this.f94034g.get(i);
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractDirectory, com.twelvemonkeys.imageio.metadata.Directory
    public Entry getEntryByFieldName(String str) {
        Iterator<Directory> it2 = this.f94034g.iterator();
        while (it2.hasNext()) {
            Entry entryByFieldName = it2.next().getEntryByFieldName(str);
            if (entryByFieldName != null) {
                return entryByFieldName;
            }
        }
        return null;
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractDirectory, com.twelvemonkeys.imageio.metadata.Directory
    public Entry getEntryById(Object obj) {
        Iterator<Directory> it2 = this.f94034g.iterator();
        while (it2.hasNext()) {
            Entry entryById = it2.next().getEntryById(obj);
            if (entryById != null) {
                return entryById;
            }
        }
        return null;
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractDirectory
    public int hashCode() {
        Iterator<Directory> it2 = this.f94034g.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i ^= it2.next().hashCode();
        }
        return i;
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractDirectory, com.twelvemonkeys.imageio.metadata.Directory
    public boolean isReadOnly() {
        return true;
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractDirectory, java.lang.Iterable
    public Iterator<Entry> iterator() {
        return new C16949a();
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractDirectory, com.twelvemonkeys.imageio.metadata.Directory
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Directory is read-only");
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractDirectory, com.twelvemonkeys.imageio.metadata.Directory
    public int size() {
        Iterator<Directory> it2 = this.f94034g.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().size();
        }
        return i;
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractDirectory
    public String toString() {
        return String.format("%s%s", getClass().getSimpleName(), this.f94034g.toString());
    }
}
