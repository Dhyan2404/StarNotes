package org.apache.poi.hwpf.usermodel;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import org.apache.poi.hwpf.model.BookmarksTables;
import org.apache.poi.hwpf.model.GenericPropertyNode;
import org.apache.poi.hwpf.model.PropertyNode;
import org.apache.poi.hwpf.usermodel.BookmarksImpl;

/* loaded from: classes12.dex */
public class BookmarksImpl implements Bookmarks {
    private final BookmarksTables bookmarksTables;
    private Map<Integer, List<GenericPropertyNode>> sortedDescriptors;
    private int[] sortedStartPositions;

    /* loaded from: classes12.dex */
    public final class BookmarkImpl implements Bookmark {
        private final GenericPropertyNode first;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || BookmarkImpl.class != obj.getClass()) {
                return false;
            }
            BookmarkImpl bookmarkImpl = (BookmarkImpl) obj;
            GenericPropertyNode genericPropertyNode = this.first;
            if (genericPropertyNode == null) {
                if (bookmarkImpl.first != null) {
                    return false;
                }
            } else if (!genericPropertyNode.equals(bookmarkImpl.first)) {
                return false;
            }
            return true;
        }

        @Override // org.apache.poi.hwpf.usermodel.Bookmark
        public int getEnd() {
            try {
                return BookmarksImpl.this.bookmarksTables.getDescriptorLim(BookmarksImpl.this.bookmarksTables.getDescriptorFirstIndex(this.first)).getStart();
            } catch (IndexOutOfBoundsException unused) {
                return this.first.getEnd();
            }
        }

        @Override // org.apache.poi.hwpf.usermodel.Bookmark
        public String getName() {
            try {
                return BookmarksImpl.this.bookmarksTables.getName(BookmarksImpl.this.bookmarksTables.getDescriptorFirstIndex(this.first));
            } catch (ArrayIndexOutOfBoundsException unused) {
                return "";
            }
        }

        @Override // org.apache.poi.hwpf.usermodel.Bookmark
        public int getStart() {
            return this.first.getStart();
        }

        public int hashCode() {
            return Objects.hash(this.first);
        }

        @Override // org.apache.poi.hwpf.usermodel.Bookmark
        public void setName(String str) {
            BookmarksImpl.this.bookmarksTables.setName(BookmarksImpl.this.bookmarksTables.getDescriptorFirstIndex(this.first), str);
        }

        public String toString() {
            return "Bookmark [" + getStart() + "; " + getEnd() + "): name: " + getName();
        }

        private BookmarkImpl(GenericPropertyNode genericPropertyNode) {
            this.first = genericPropertyNode;
        }
    }

    public BookmarksImpl(BookmarksTables bookmarksTables) {
        this.bookmarksTables = bookmarksTables;
        reset();
    }

    private Bookmark getBookmark(GenericPropertyNode genericPropertyNode) {
        return new BookmarkImpl(genericPropertyNode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$updateSortedDescriptors$0(Integer num) {
        return new LinkedList();
    }

    private void reset() {
        this.sortedDescriptors = null;
        this.sortedStartPositions = null;
    }

    private void updateSortedDescriptors() {
        if (this.sortedDescriptors != null) {
            return;
        }
        HashMap hashMap = new HashMap();
        int i = 0;
        for (int i2 = 0; i2 < this.bookmarksTables.getDescriptorsFirstCount(); i2++) {
            GenericPropertyNode descriptorFirst = this.bookmarksTables.getDescriptorFirst(i2);
            ((List) hashMap.computeIfAbsent(Integer.valueOf(descriptorFirst.getStart()), new Function() { // from class: com.sunia.HTREnginev2.ft
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    List lambda$updateSortedDescriptors$0;
                    lambda$updateSortedDescriptors$0 = BookmarksImpl.lambda$updateSortedDescriptors$0((Integer) obj);
                    return lambda$updateSortedDescriptors$0;
                }
            })).add(descriptorFirst);
        }
        int[] iArr = new int[hashMap.size()];
        for (Map.Entry entry : hashMap.entrySet()) {
            int i3 = i + 1;
            iArr[i] = ((Integer) entry.getKey()).intValue();
            ArrayList arrayList = new ArrayList((Collection) entry.getValue());
            arrayList.sort(PropertyNode.EndComparator);
            entry.setValue(arrayList);
            i = i3;
        }
        Arrays.sort(iArr);
        this.sortedDescriptors = hashMap;
        this.sortedStartPositions = iArr;
    }

    public void afterDelete(int i, int i2) {
        this.bookmarksTables.afterDelete(i, i2);
        reset();
    }

    public void afterInsert(int i, int i2) {
        this.bookmarksTables.afterInsert(i, i2);
        reset();
    }

    public List<Bookmark> getBookmarksAt(int i) {
        updateSortedDescriptors();
        List<GenericPropertyNode> list = this.sortedDescriptors.get(Integer.valueOf(i));
        if (list == null || list.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<GenericPropertyNode> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(getBookmark(it2.next()));
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override // org.apache.poi.hwpf.usermodel.Bookmarks
    public int getBookmarksCount() {
        return this.bookmarksTables.getDescriptorsFirstCount();
    }

    @Override // org.apache.poi.hwpf.usermodel.Bookmarks
    public Map<Integer, List<Bookmark>> getBookmarksStartedBetween(int i, int i2) {
        updateSortedDescriptors();
        int binarySearch = Arrays.binarySearch(this.sortedStartPositions, i);
        if (binarySearch < 0) {
            binarySearch = -(binarySearch + 1);
        }
        int binarySearch2 = Arrays.binarySearch(this.sortedStartPositions, i2);
        if (binarySearch2 < 0) {
            binarySearch2 = -(binarySearch2 + 1);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        while (binarySearch < binarySearch2) {
            int i3 = this.sortedStartPositions[binarySearch];
            if (i3 >= i) {
                if (i3 >= i2) {
                    break;
                }
                List<Bookmark> bookmarksAt = getBookmarksAt(i3);
                if (bookmarksAt != null) {
                    linkedHashMap.put(Integer.valueOf(i3), bookmarksAt);
                }
            }
            binarySearch++;
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    @Override // org.apache.poi.hwpf.usermodel.Bookmarks
    public void remove(int i) {
        this.bookmarksTables.remove(i);
    }

    @Override // org.apache.poi.hwpf.usermodel.Bookmarks
    public Bookmark getBookmark(int i) {
        return getBookmark(this.bookmarksTables.getDescriptorFirst(i));
    }
}
