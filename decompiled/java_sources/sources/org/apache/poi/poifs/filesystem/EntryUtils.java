package org.apache.poi.poifs.filesystem;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;
import org.apache.poi.hpsf.NoPropertySetStreamException;
import org.apache.poi.hpsf.PropertySet;
import org.apache.poi.hpsf.PropertySetFactory;
import org.apache.poi.poifs.filesystem.Entry;
import org.apache.poi.poifs.filesystem.EntryUtils;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class EntryUtils {

    /* loaded from: classes12.dex */
    public static class DirectoryDelegate implements POIDelegate {
        final DirectoryEntry dir;

        public DirectoryDelegate(DirectoryEntry directoryEntry) {
            this.dir = directoryEntry;
        }

        private Map<String, POIDelegate> entries() {
            return (Map) StreamSupport.stream(this.dir.spliterator(), false).collect(Collectors.toMap(new Function() { // from class: com.sunia.HTREnginev2.yqf
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((Entry) obj).getName();
                }
            }, new Function() { // from class: org.apache.poi.poifs.filesystem.a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    EntryUtils.POIDelegate delegate;
                    delegate = EntryUtils.DirectoryDelegate.toDelegate((Entry) obj);
                    return delegate;
                }
            }));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static POIDelegate toDelegate(Entry entry) {
            return entry.isDirectoryEntry() ? new DirectoryDelegate((DirectoryEntry) entry) : new DocumentDelegate((DocumentEntry) entry);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof DirectoryDelegate)) {
                return false;
            }
            DirectoryDelegate directoryDelegate = (DirectoryDelegate) obj;
            if (this == directoryDelegate) {
                return true;
            }
            if (Objects.equals(this.dir.getName(), directoryDelegate.dir.getName()) && this.dir.getEntryCount() == directoryDelegate.dir.getEntryCount() && this.dir.getStorageClsid().equals(directoryDelegate.dir.getStorageClsid())) {
                return entries().equals(directoryDelegate.entries());
            }
            return false;
        }

        public int hashCode() {
            return this.dir.getName().hashCode();
        }
    }

    /* loaded from: classes12.dex */
    public static class DocumentDelegate implements POIDelegate {
        final DocumentEntry doc;

        public DocumentDelegate(DocumentEntry documentEntry) {
            this.doc = documentEntry;
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0021, code lost:
        
            if (r8.read() >= 0) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0023, code lost:
        
            return true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
        
            return false;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static boolean isEqual(org.apache.poi.poifs.filesystem.DocumentInputStream r7, org.apache.poi.poifs.filesystem.DocumentInputStream r8) throws java.io.IOException {
            /*
                r0 = 4096(0x1000, float:5.74E-42)
                byte[] r1 = new byte[r0]
                byte[] r0 = new byte[r0]
            L6:
                r2 = 0
                int r3 = r7.read(r1)     // Catch: java.lang.Throwable -> L24
                if (r3 <= 0) goto L1d
                r8.readFully(r0, r2, r3)     // Catch: java.lang.Throwable -> L24
                r4 = r2
            L11:
                if (r4 >= r3) goto L6
                r5 = r1[r4]     // Catch: java.lang.Throwable -> L24
                r6 = r0[r4]     // Catch: java.lang.Throwable -> L24
                if (r5 == r6) goto L1a
                return r2
            L1a:
                int r4 = r4 + 1
                goto L11
            L1d:
                int r7 = r8.read()     // Catch: java.lang.Throwable -> L24
                if (r7 >= 0) goto L24
                r2 = 1
            L24:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.poifs.filesystem.EntryUtils.DocumentDelegate.isEqual(org.apache.poi.poifs.filesystem.DocumentInputStream, org.apache.poi.poifs.filesystem.DocumentInputStream):boolean");
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof DocumentDelegate)) {
                return false;
            }
            DocumentDelegate documentDelegate = (DocumentDelegate) obj;
            if (this == documentDelegate) {
                return true;
            }
            if (!Objects.equals(this.doc.getName(), documentDelegate.doc.getName())) {
                return false;
            }
            try {
                DocumentInputStream documentInputStream = new DocumentInputStream(this.doc);
                try {
                    DocumentInputStream documentInputStream2 = new DocumentInputStream(documentDelegate.doc);
                    try {
                        if (PropertySet.isPropertySetStream(documentInputStream) && PropertySet.isPropertySetStream(documentInputStream2)) {
                            boolean equals = PropertySetFactory.create(documentInputStream).equals(PropertySetFactory.create(documentInputStream2));
                            documentInputStream2.close();
                            documentInputStream.close();
                            return equals;
                        }
                        boolean isEqual = isEqual(documentInputStream, documentInputStream2);
                        documentInputStream2.close();
                        documentInputStream.close();
                        return isEqual;
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            documentInputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (IOException | NoPropertySetStreamException e) {
                throw new IllegalStateException(e);
            }
        }

        public int hashCode() {
            return this.doc.getName().hashCode();
        }
    }

    /* loaded from: classes12.dex */
    public interface POIDelegate {
    }

    private EntryUtils() {
    }

    public static boolean areDirectoriesIdentical(DirectoryEntry directoryEntry, DirectoryEntry directoryEntry2) {
        return new DirectoryDelegate(directoryEntry).equals(new DirectoryDelegate(directoryEntry2));
    }

    public static boolean areDocumentsIdentical(DocumentEntry documentEntry, DocumentEntry documentEntry2) throws IOException {
        try {
            return new DocumentDelegate(documentEntry).equals(new DocumentDelegate(documentEntry2));
        } catch (RuntimeException e) {
            if (e.getCause() instanceof IOException) {
                throw ((IOException) e.getCause());
            }
            throw e;
        }
    }

    @Internal
    public static void copyNodeRecursively(Entry entry, DirectoryEntry directoryEntry) throws IOException {
        if (!entry.isDirectoryEntry()) {
            DocumentEntry documentEntry = (DocumentEntry) entry;
            DocumentInputStream documentInputStream = new DocumentInputStream(documentEntry);
            directoryEntry.createDocument(documentEntry.getName(), documentInputStream);
            documentInputStream.close();
            return;
        }
        DirectoryEntry directoryEntry2 = (DirectoryEntry) entry;
        DirectoryEntry createDirectory = directoryEntry.createDirectory(entry.getName());
        createDirectory.setStorageClsid(directoryEntry2.getStorageClsid());
        Iterator<Entry> entries = directoryEntry2.getEntries();
        while (entries.hasNext()) {
            copyNodeRecursively(entries.next(), createDirectory);
        }
    }

    public static void copyNodes(DirectoryEntry directoryEntry, DirectoryEntry directoryEntry2) throws IOException {
        Iterator<Entry> it2 = directoryEntry.iterator();
        while (it2.hasNext()) {
            copyNodeRecursively(it2.next(), directoryEntry2);
        }
    }

    public static void copyNodes(POIFSFileSystem pOIFSFileSystem, POIFSFileSystem pOIFSFileSystem2) throws IOException {
        copyNodes(pOIFSFileSystem.getRoot(), pOIFSFileSystem2.getRoot());
    }

    public static void copyNodes(POIFSFileSystem pOIFSFileSystem, POIFSFileSystem pOIFSFileSystem2, List<String> list) throws IOException {
        copyNodes(new FilteringDirectoryNode(pOIFSFileSystem.getRoot(), list), new FilteringDirectoryNode(pOIFSFileSystem2.getRoot(), list));
    }
}
