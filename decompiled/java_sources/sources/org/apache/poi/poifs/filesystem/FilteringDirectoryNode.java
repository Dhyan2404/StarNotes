package org.apache.poi.poifs.filesystem;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.Spliterator;
import java.util.Spliterators;
import org.apache.poi.hpsf.ClassID;

/* loaded from: classes12.dex */
public class FilteringDirectoryNode implements DirectoryEntry {
    private final Map<String, List<String>> childExcludes;
    private final DirectoryEntry directory;
    private final Set<String> excludes;

    /* loaded from: classes12.dex */
    public class FilteringIterator implements Iterator<Entry> {
        private Entry next;
        private final Iterator<Entry> parent;

        private void locateNext() {
            this.next = null;
            while (this.parent.hasNext() && this.next == null) {
                Entry next = this.parent.next();
                if (!FilteringDirectoryNode.this.excludes.contains(next.getName())) {
                    this.next = FilteringDirectoryNode.this.wrapEntry(next);
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.next != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Remove not supported");
        }

        private FilteringIterator() {
            this.parent = FilteringDirectoryNode.this.directory.getEntries();
            locateNext();
        }

        @Override // java.util.Iterator
        public Entry next() {
            if (hasNext()) {
                Entry entry = this.next;
                locateNext();
                return entry;
            }
            throw new NoSuchElementException();
        }
    }

    public FilteringDirectoryNode(DirectoryEntry directoryEntry, Collection<String> collection) {
        if (directoryEntry == null) {
            throw new IllegalArgumentException("directory cannot be null");
        }
        this.directory = directoryEntry;
        this.excludes = new HashSet();
        this.childExcludes = new HashMap();
        for (String str : collection) {
            int indexOf = str.indexOf(47);
            if (indexOf == -1) {
                this.excludes.add(str);
            } else {
                String substring = str.substring(0, indexOf);
                String substring2 = str.substring(indexOf + 1);
                if (!this.childExcludes.containsKey(substring)) {
                    this.childExcludes.put(substring, new ArrayList());
                }
                this.childExcludes.get(substring).add(substring2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Entry wrapEntry(Entry entry) {
        String name = entry.getName();
        return (this.childExcludes.containsKey(name) && (entry instanceof DirectoryEntry)) ? new FilteringDirectoryNode((DirectoryEntry) entry, this.childExcludes.get(name)) : entry;
    }

    @Override // org.apache.poi.poifs.filesystem.DirectoryEntry
    public DirectoryEntry createDirectory(String str) throws IOException {
        return this.directory.createDirectory(str);
    }

    @Override // org.apache.poi.poifs.filesystem.DirectoryEntry
    public DocumentEntry createDocument(String str, InputStream inputStream) throws IOException {
        return this.directory.createDocument(str, inputStream);
    }

    @Override // org.apache.poi.poifs.filesystem.Entry
    public boolean delete() {
        return this.directory.delete();
    }

    @Override // org.apache.poi.poifs.filesystem.DirectoryEntry
    public Iterator<Entry> getEntries() {
        return new FilteringIterator();
    }

    @Override // org.apache.poi.poifs.filesystem.DirectoryEntry
    public Entry getEntry(String str) throws FileNotFoundException {
        if (this.excludes.contains(str)) {
            throw new FileNotFoundException(str);
        }
        return wrapEntry(this.directory.getEntry(str));
    }

    @Override // org.apache.poi.poifs.filesystem.DirectoryEntry
    public int getEntryCount() {
        int entryCount = this.directory.getEntryCount();
        Iterator<String> it2 = this.excludes.iterator();
        while (it2.hasNext()) {
            if (this.directory.hasEntry(it2.next())) {
                entryCount--;
            }
        }
        return entryCount;
    }

    @Override // org.apache.poi.poifs.filesystem.DirectoryEntry
    public Set<String> getEntryNames() {
        HashSet hashSet = new HashSet();
        for (String str : this.directory.getEntryNames()) {
            if (!this.excludes.contains(str)) {
                hashSet.add(str);
            }
        }
        return hashSet;
    }

    @Override // org.apache.poi.poifs.filesystem.Entry
    public String getName() {
        return this.directory.getName();
    }

    @Override // org.apache.poi.poifs.filesystem.Entry
    public DirectoryEntry getParent() {
        return this.directory.getParent();
    }

    @Override // org.apache.poi.poifs.filesystem.DirectoryEntry
    public ClassID getStorageClsid() {
        return this.directory.getStorageClsid();
    }

    @Override // org.apache.poi.poifs.filesystem.DirectoryEntry
    public boolean hasEntry(String str) {
        if (this.excludes.contains(str)) {
            return false;
        }
        return this.directory.hasEntry(str);
    }

    @Override // org.apache.poi.poifs.filesystem.Entry
    public boolean isDirectoryEntry() {
        return true;
    }

    @Override // org.apache.poi.poifs.filesystem.Entry
    public boolean isDocumentEntry() {
        return false;
    }

    @Override // org.apache.poi.poifs.filesystem.DirectoryEntry
    public boolean isEmpty() {
        return getEntryCount() == 0;
    }

    @Override // java.lang.Iterable
    public Iterator<Entry> iterator() {
        return getEntries();
    }

    @Override // org.apache.poi.poifs.filesystem.Entry
    public boolean renameTo(String str) {
        return this.directory.renameTo(str);
    }

    @Override // org.apache.poi.poifs.filesystem.DirectoryEntry
    public void setStorageClsid(ClassID classID) {
        this.directory.setStorageClsid(classID);
    }

    @Override // java.lang.Iterable
    public Spliterator<Entry> spliterator() {
        return Spliterators.spliterator(iterator(), getEntryCount(), 0);
    }

    @Override // org.apache.poi.poifs.filesystem.DirectoryEntry
    public DocumentEntry createDocument(String str, int i, POIFSWriterListener pOIFSWriterListener) throws IOException {
        return this.directory.createDocument(str, i, pOIFSWriterListener);
    }
}
