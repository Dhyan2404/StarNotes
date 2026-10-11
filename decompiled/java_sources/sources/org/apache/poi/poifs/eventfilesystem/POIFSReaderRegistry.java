package org.apache.poi.poifs.eventfilesystem;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import org.apache.poi.poifs.filesystem.DocumentDescriptor;
import org.apache.poi.poifs.filesystem.POIFSDocumentPath;

/* loaded from: classes12.dex */
class POIFSReaderRegistry {
    private Set<POIFSReaderListener> omnivorousListeners = new HashSet();
    private Map<POIFSReaderListener, Set<DocumentDescriptor>> selectiveListeners = new HashMap();
    private Map<DocumentDescriptor, Set<POIFSReaderListener>> chosenDocumentDescriptors = new HashMap();

    private void dropDocument(POIFSReaderListener pOIFSReaderListener, DocumentDescriptor documentDescriptor) {
        Set<POIFSReaderListener> set = this.chosenDocumentDescriptors.get(documentDescriptor);
        set.remove(pOIFSReaderListener);
        if (set.isEmpty()) {
            this.chosenDocumentDescriptors.remove(documentDescriptor);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Set lambda$registerListener$0(POIFSReaderListener pOIFSReaderListener) {
        return new HashSet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Set lambda$registerListener$1(DocumentDescriptor documentDescriptor) {
        return new HashSet();
    }

    private void removeSelectiveListener(POIFSReaderListener pOIFSReaderListener) {
        Set<DocumentDescriptor> remove = this.selectiveListeners.remove(pOIFSReaderListener);
        if (remove != null) {
            Iterator<DocumentDescriptor> it2 = remove.iterator();
            while (it2.hasNext()) {
                dropDocument(pOIFSReaderListener, it2.next());
            }
        }
    }

    public Iterable<POIFSReaderListener> getListeners(POIFSDocumentPath pOIFSDocumentPath, String str) {
        HashSet hashSet = new HashSet(this.omnivorousListeners);
        Set<POIFSReaderListener> set = this.chosenDocumentDescriptors.get(new DocumentDescriptor(pOIFSDocumentPath, str));
        if (set != null) {
            hashSet.addAll(set);
        }
        return hashSet;
    }

    public void registerListener(POIFSReaderListener pOIFSReaderListener, POIFSDocumentPath pOIFSDocumentPath, String str) {
        if (this.omnivorousListeners.contains(pOIFSReaderListener)) {
            return;
        }
        Set<DocumentDescriptor> computeIfAbsent = this.selectiveListeners.computeIfAbsent(pOIFSReaderListener, new Function() { // from class: org.apache.poi.poifs.eventfilesystem.a
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Set lambda$registerListener$0;
                lambda$registerListener$0 = POIFSReaderRegistry.lambda$registerListener$0((POIFSReaderListener) obj);
                return lambda$registerListener$0;
            }
        });
        DocumentDescriptor documentDescriptor = new DocumentDescriptor(pOIFSDocumentPath, str);
        if (computeIfAbsent.add(documentDescriptor)) {
            this.chosenDocumentDescriptors.computeIfAbsent(documentDescriptor, new Function() { // from class: org.apache.poi.poifs.eventfilesystem.b
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Set lambda$registerListener$1;
                    lambda$registerListener$1 = POIFSReaderRegistry.lambda$registerListener$1((DocumentDescriptor) obj);
                    return lambda$registerListener$1;
                }
            }).add(pOIFSReaderListener);
        }
    }

    public void registerListener(POIFSReaderListener pOIFSReaderListener) {
        if (this.omnivorousListeners.contains(pOIFSReaderListener)) {
            return;
        }
        removeSelectiveListener(pOIFSReaderListener);
        this.omnivorousListeners.add(pOIFSReaderListener);
    }
}
