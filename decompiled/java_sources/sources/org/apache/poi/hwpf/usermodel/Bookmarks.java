package org.apache.poi.hwpf.usermodel;

import java.util.List;
import java.util.Map;

/* loaded from: classes12.dex */
public interface Bookmarks {
    Bookmark getBookmark(int i) throws IndexOutOfBoundsException;

    int getBookmarksCount();

    Map<Integer, List<Bookmark>> getBookmarksStartedBetween(int i, int i2);

    void remove(int i);
}
