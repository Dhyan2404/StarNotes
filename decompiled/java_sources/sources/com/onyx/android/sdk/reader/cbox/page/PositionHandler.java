package com.onyx.android.sdk.reader.cbox.page;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContent;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContentEntry;
import com.onyx.android.sdk.reader.cbox.page.PositionHandler;
import com.onyx.android.sdk.reader.utils.TocUtils;
import com.onyx.engine.sdk.PageInfo;
import com.onyx.engine.sdk.PinPosition;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\"\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\"\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\t2\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\"\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\u0016\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0004J\"\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0004H\u0002¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/page/PositionHandler;", "", "", "", "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;", "bookChapters", "", "getTotalPage", "page", "Lcom/onyx/engine/sdk/PinPosition;", "getPositionOfPageNumber", "position", "getPageNumberOfPosition", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", SyncConstant.LOCAL_TOC_DIR_NAME, "", "updateTocPageNumber", "chapter", "getPageNumberInChapter", "getChapterTotalPageCount", "", "Lcom/onyx/engine/sdk/PageInfo;", "c", "b", Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PositionHandler {

    @NotNull
    public static final PositionHandler INSTANCE = new PositionHandler();

    /* renamed from: d */
    public static final int m34632d(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* renamed from: b */
    public final PageInfo m34633b(LayoutChapter chapter) {
        return new PageInfo(chapter.getChapter());
    }

    /* renamed from: c */
    public final List<PageInfo> m34634c(Map<String, LayoutChapter> bookChapters) {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, LayoutChapter>> it2 = bookChapters.entrySet().iterator();
        while (it2.hasNext()) {
            LayoutChapter value = it2.next().getValue();
            if (value.isPaginationComplete()) {
                Iterator<PageInfo> it3 = value.getLayoutList().iterator();
                while (it3.hasNext()) {
                    arrayList.add(it3.next());
                }
            } else {
                arrayList.add(m34633b(value));
            }
        }
        return arrayList;
    }

    public final int getChapterTotalPageCount(@NotNull LayoutChapter chapter) {
        Intrinsics.checkNotNullParameter(chapter, "chapter");
        return CollectionKt.getSize(chapter.getLayoutList());
    }

    public final int getPageNumberInChapter(int position, @NotNull LayoutChapter chapter) {
        Intrinsics.checkNotNullParameter(chapter, "chapter");
        int i = 0;
        for (PageInfo pageInfo : chapter.getLayoutList()) {
            int i2 = i + 1;
            if (pageInfo.getStartPositionInt() <= position && position < pageInfo.getEndPositionInt()) {
                return i;
            }
            i = i2;
        }
        return 0;
    }

    public final int getPageNumberOfPosition(@NotNull PinPosition position, @NotNull Map<String, LayoutChapter> bookChapters) {
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(bookChapters, "bookChapters");
        Iterator<Map.Entry<String, LayoutChapter>> it2 = bookChapters.entrySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            LayoutChapter value = it2.next().getValue();
            List<PageInfo> layoutList = value.getLayoutList();
            if (!value.isPaginationComplete()) {
                if (value.getChapter().contains(position.getChapterStartPosition())) {
                    return i;
                }
                i++;
            } else if (position.getPositionInt() >= value.getChapter().getEndPos()) {
                i += layoutList.size();
            } else {
                for (PageInfo pageInfo : layoutList) {
                    int startPositionInt = pageInfo.getStartPositionInt();
                    int endPositionInt = pageInfo.getEndPositionInt();
                    int positionInt = position.getPositionInt();
                    if (startPositionInt <= positionInt && positionInt < endPositionInt) {
                        return i;
                    }
                    i++;
                }
            }
        }
        return i - 1;
    }

    @NotNull
    public final PinPosition getPositionOfPageNumber(int page, @NotNull Map<String, LayoutChapter> bookChapters) {
        Intrinsics.checkNotNullParameter(bookChapters, "bookChapters");
        Iterator<Map.Entry<String, LayoutChapter>> it2 = bookChapters.entrySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            LayoutChapter value = it2.next().getValue();
            List<PageInfo> layoutList = value.getLayoutList();
            if (value.isPaginationComplete()) {
                if (page >= i && page < layoutList.size() + i) {
                    PinPosition start = layoutList.get(page - i).getPageRange().getStart();
                    Intrinsics.checkNotNullExpressionValue(start, "getStart(...)");
                    return start;
                }
                i += layoutList.size();
            } else {
                if (i == page) {
                    return new PinPosition(value.getChapter());
                }
                i++;
            }
        }
        return new PinPosition();
    }

    public final int getTotalPage(@NotNull Map<String, LayoutChapter> bookChapters) {
        Intrinsics.checkNotNullParameter(bookChapters, "bookChapters");
        Iterator<Map.Entry<String, LayoutChapter>> it2 = bookChapters.entrySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            LayoutChapter value = it2.next().getValue();
            i = !value.isPaginationComplete() ? i + 1 : i + value.getLayoutList().size();
        }
        return i;
    }

    public final void updateTocPageNumber(@NotNull ReaderDocumentTableOfContent toc, @NotNull Map<String, LayoutChapter> bookChapters) {
        Intrinsics.checkNotNullParameter(toc, "toc");
        Intrinsics.checkNotNullParameter(bookChapters, "bookChapters");
        if (toc.isEmpty()) {
            return;
        }
        List<PageInfo> m34634c = m34634c(bookChapters);
        List<ReaderDocumentTableOfContentEntry> flatTocEntryList = TocUtils.INSTANCE.flatTocEntryList(toc);
        final PositionHandler$updateTocPageNumber$1 positionHandler$updateTocPageNumber$1 = new Function2<ReaderDocumentTableOfContentEntry, ReaderDocumentTableOfContentEntry, Integer>() { // from class: com.onyx.android.sdk.reader.cbox.page.PositionHandler$updateTocPageNumber$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(@NotNull ReaderDocumentTableOfContentEntry o1, @NotNull ReaderDocumentTableOfContentEntry o2) {
                Intrinsics.checkNotNullParameter(o1, "o1");
                Intrinsics.checkNotNullParameter(o2, "o2");
                return Integer.valueOf(o1.getPositionInt() - o2.getPositionInt());
            }
        };
        CollectionsKt__MutableCollectionsJVMKt.sortWith(flatTocEntryList, new Comparator() { // from class: com.sunia.HTREnginev2.l5l
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m34632d;
                m34632d = PositionHandler.m34632d(Function2.this, obj, obj2);
                return m34632d;
            }
        });
        int size = m34634c.size();
        int i = -1;
        for (int i2 = 0; i2 < size; i2++) {
            PageInfo pageInfo = m34634c.get(i2);
            int size2 = flatTocEntryList.size();
            for (int i3 = i + 1; i3 < size2; i3++) {
                ReaderDocumentTableOfContentEntry readerDocumentTableOfContentEntry = flatTocEntryList.get(i3);
                int startPositionInt = pageInfo.getStartPositionInt();
                int endPositionInt = pageInfo.getEndPositionInt();
                int positionInt = readerDocumentTableOfContentEntry.getPositionInt();
                if (!(startPositionInt <= positionInt && positionInt < endPositionInt)) {
                    if (readerDocumentTableOfContentEntry.getPositionInt() > pageInfo.getEndPositionInt()) {
                        break;
                    }
                } else {
                    readerDocumentTableOfContentEntry.setPageNumber(i2);
                    i = i3;
                }
            }
        }
    }
}
