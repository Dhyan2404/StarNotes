package com.onyx.android.sdk.reader.utils;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.PageInfoUtils;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContent;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContentEntry;
import com.onyx.android.sdk.reader.api.ReaderNavigator;
import com.onyx.android.sdk.reader.api.TocSortArgs;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b#\u0010$J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J \u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bJ\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u0011\u001a\u00020\u0010J\u001c\u0010\u0016\u001a\u00020\u000b2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u0015\u001a\u00020\tJ\u0010\u0010\u0018\u001a\u00020\u00172\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0018\u0010\u0019\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0015\u001a\u00020\tJ\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u001e\u0010\u001d\u001a\u00020\u00062\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u001a\u001a\u00020\tH\u0002J.\u0010 \u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00122\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u000bH\u0002R\u0014\u0010\"\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010!¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/utils/TocUtils;", "", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", SyncConstant.LOCAL_TOC_DIR_NAME, "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;", "navigator", "", "updateTocPageNumberForTextFlowDocument", "", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;", "flatTocEntryList", "", "positionInt", CouchFieldKey.KEY_PAGE_NUMBER, "", "getChapterShowTitle", "Lcom/onyx/android/sdk/reader/api/TocSortArgs;", "tocSortArgs", "", "getTocEntryList", "entryList", "keyEntry", "searchIndex", "", "isEmpty", "updateTocExpanded", "entry", "c", "list", "a", "startSortId", "endSortId", "b", "I", "INVALID_INDEX", Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TocUtils {

    @NotNull
    public static final TocUtils INSTANCE = new TocUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final int INVALID_INDEX = -1;

    /* renamed from: a */
    public final void m34856a(List<ReaderDocumentTableOfContentEntry> list, ReaderDocumentTableOfContentEntry entry) {
        if (entry.isValidPosition()) {
            list.add(entry);
        }
        if (entry.getChildren().isEmpty()) {
            return;
        }
        Iterator<ReaderDocumentTableOfContentEntry> it2 = entry.getChildren().iterator();
        while (it2.hasNext()) {
            m34856a(list, it2.next());
        }
    }

    /* renamed from: b */
    public final List<ReaderDocumentTableOfContentEntry> m34857b(List<ReaderDocumentTableOfContentEntry> entryList, int startSortId, int endSortId) {
        ArrayList arrayList = new ArrayList();
        Iterator<ReaderDocumentTableOfContentEntry> it2 = entryList.iterator();
        ReaderDocumentTableOfContentEntry readerDocumentTableOfContentEntry = null;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            ReaderDocumentTableOfContentEntry next = it2.next();
            if (next.getSortId() < startSortId) {
                readerDocumentTableOfContentEntry = next;
            }
            int sortId = next.getSortId();
            if (startSortId <= sortId && sortId <= endSortId) {
                arrayList.add(next);
            }
            if (next.getSortId() > endSortId) {
                if (readerDocumentTableOfContentEntry != null && ((CollectionKt.isNonBlank(arrayList) && ((ReaderDocumentTableOfContentEntry) arrayList.get(0)).getSortId() > startSortId) || arrayList.isEmpty())) {
                    arrayList.add(0, readerDocumentTableOfContentEntry);
                }
            }
        }
        if (arrayList.isEmpty() && readerDocumentTableOfContentEntry != null) {
            arrayList.add(readerDocumentTableOfContentEntry);
        }
        return arrayList;
    }

    /* renamed from: c */
    public final void m34858c(ReaderDocumentTableOfContentEntry entry, ReaderNavigator navigator) {
        if (entry.isPageIndexValid()) {
            entry.setPageIndex(navigator.getPageNumberByPosition(entry.getPosition()));
            if (entry.getChildren().isEmpty()) {
                return;
            }
            Iterator<ReaderDocumentTableOfContentEntry> it2 = entry.getChildren().iterator();
            while (it2.hasNext()) {
                m34858c(it2.next(), navigator);
            }
        }
    }

    @NotNull
    public final List<ReaderDocumentTableOfContentEntry> flatTocEntryList(@Nullable ReaderDocumentTableOfContent toc) {
        if (isEmpty(toc)) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Intrinsics.checkNotNull(toc);
        Iterator<ReaderDocumentTableOfContentEntry> it2 = toc.getRootEntry().getChildren().iterator();
        while (it2.hasNext()) {
            m34856a(arrayList, it2.next());
        }
        return arrayList;
    }

    @Nullable
    public final String getChapterShowTitle(@NotNull ReaderDocumentTableOfContent toc, int positionInt, int pageNumber) {
        String showTitle$default;
        Intrinsics.checkNotNullParameter(toc, "toc");
        if (isEmpty(toc) || !PageInfoUtils.INSTANCE.isValidPositionInt(positionInt)) {
            return "";
        }
        List<ReaderDocumentTableOfContentEntry> tocEntryList = getTocEntryList(TocSortArgs.INSTANCE.createTocSortArgs(toc, positionInt, pageNumber));
        List<ReaderDocumentTableOfContentEntry> list = tocEntryList;
        return ((list == null || list.isEmpty()) || (showTitle$default = ReaderDocumentTableOfContentEntry.getShowTitle$default(tocEntryList.get(0), 0, 1, null)) == null) ? "" : showTitle$default;
    }

    @NotNull
    public final List<ReaderDocumentTableOfContentEntry> getTocEntryList(@NotNull TocSortArgs tocSortArgs) {
        List<ReaderDocumentTableOfContentEntry> emptyList;
        Intrinsics.checkNotNullParameter(tocSortArgs, "tocSortArgs");
        List<ReaderDocumentTableOfContentEntry> flatTocEntryList = flatTocEntryList(tocSortArgs.getCom.onyx.android.sdk.data.common.sync.SyncConstant.LOCAL_TOC_DIR_NAME java.lang.String());
        List<ReaderDocumentTableOfContentEntry> list = flatTocEntryList;
        if (list == null || list.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList(m34857b(flatTocEntryList, tocSortArgs.getStartSortId(), tocSortArgs.getEndSortId()));
        if (CollectionKt.isNonBlank(arrayList)) {
            return arrayList;
        }
        List<ReaderDocumentTableOfContentEntry> m34857b = m34857b(flatTocEntryList, 0, flatTocEntryList.get(0).getSortId());
        Intrinsics.checkNotNull(m34857b);
        arrayList.addAll(m34857b);
        return arrayList;
    }

    public final boolean isEmpty(@Nullable ReaderDocumentTableOfContent toc) {
        return toc == null || toc.isEmpty();
    }

    public final int searchIndex(@NotNull List<ReaderDocumentTableOfContentEntry> entryList, @NotNull ReaderDocumentTableOfContentEntry keyEntry) {
        Intrinsics.checkNotNullParameter(entryList, "entryList");
        Intrinsics.checkNotNullParameter(keyEntry, "keyEntry");
        int size = entryList.size();
        for (int i = 0; i < size; i++) {
            ReaderDocumentTableOfContentEntry readerDocumentTableOfContentEntry = entryList.get(i);
            if (readerDocumentTableOfContentEntry.getSortId() == keyEntry.getSortId() && StringKt.safelyEquals(readerDocumentTableOfContentEntry.getTitle(), ReaderDocumentTableOfContentEntry.getShowTitle$default(keyEntry, 0, 1, null))) {
                return i;
            }
        }
        return -1;
    }

    public final void updateTocExpanded(@Nullable ReaderDocumentTableOfContent toc, @NotNull ReaderDocumentTableOfContentEntry keyEntry) {
        Intrinsics.checkNotNullParameter(keyEntry, "keyEntry");
        for (ReaderDocumentTableOfContentEntry readerDocumentTableOfContentEntry : flatTocEntryList(toc)) {
            if (readerDocumentTableOfContentEntry.getSortId() == keyEntry.getSortId() && StringKt.safelyEquals(readerDocumentTableOfContentEntry.getTitle(), ReaderDocumentTableOfContentEntry.getShowTitle$default(keyEntry, 0, 1, null))) {
                readerDocumentTableOfContentEntry.setExpanded(keyEntry.getExpanded());
            }
        }
    }

    public final void updateTocPageNumberForTextFlowDocument(@NotNull ReaderDocumentTableOfContent toc, @NotNull ReaderNavigator navigator) {
        Intrinsics.checkNotNullParameter(toc, "toc");
        Intrinsics.checkNotNullParameter(navigator, "navigator");
        if (toc.isEmpty()) {
            return;
        }
        Iterator<ReaderDocumentTableOfContentEntry> it2 = toc.getRootEntry().getChildren().iterator();
        while (it2.hasNext()) {
            m34858c(it2.next(), navigator);
        }
    }
}
