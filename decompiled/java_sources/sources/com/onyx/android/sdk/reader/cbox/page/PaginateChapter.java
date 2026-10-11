package com.onyx.android.sdk.reader.cbox.page;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto;
import com.onyx.engine.sdk.Chapter;
import com.onyx.engine.sdk.PageInfo;
import com.onyx.engine.sdk.PinPosition;
import com.onyx.engine.sdk.TableCell;
import com.onyx.engine.sdk.TableRow;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010$\u001a\u00020 ¢\u0006\u0004\b:\u0010;J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\b\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\f\u001a\u00020\u0000J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u001e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u00132\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013H\u0002J\u0010\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\u001e\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00132\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0013H\u0002J\u0010\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001aH\u0002R\u0017\u0010$\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b\u0012\u0010!\u001a\u0004\b\"\u0010#R2\u0010,\u001a\u0012\u0012\u0004\u0012\u00020\t0%j\b\u0012\u0004\u0012\u00020\t`&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0017\u0010/\u001a\u00020-8\u0006¢\u0006\f\n\u0004\b\u001d\u0010.\u001a\u0004\b/\u00100R\u0017\u00102\u001a\u00020-8\u0006¢\u0006\f\n\u0004\b\u0019\u0010.\u001a\u0004\b1\u00100R\"\u00109\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;", "", "", "isPaginationComplete", "", Constants.RESET, "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto;", "rangeList", "resetPageList", "Lcom/onyx/engine/sdk/PageInfo;", "pageInfo", "updatePaginationPageInfo", "copy", C6997f.f39671c, "Lcom/onyx/engine/sdk/PinPosition;", "position", "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;", "positionProto", "a", "", "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;", "tableRowListProto", "Lcom/onyx/engine/sdk/TableRow;", "e", "tableRowProto", "d", "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;", "tableCellListProto", "Lcom/onyx/engine/sdk/TableCell;", "c", "tableCellProto", "b", "Lcom/onyx/engine/sdk/Chapter;", "Lcom/onyx/engine/sdk/Chapter;", "getChapter", "()Lcom/onyx/engine/sdk/Chapter;", "chapter", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "Ljava/util/ArrayList;", "getPageList", "()Ljava/util/ArrayList;", "setPageList", "(Ljava/util/ArrayList;)V", "pageList", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isChapterLastPage", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "getNeedClearPaginationCache", "needClearPaginationCache", "", "F", "getCurrentPaginationProgress", "()F", "setCurrentPaginationProgress", "(F)V", "currentPaginationProgress", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/engine/sdk/Chapter;)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PaginateChapter {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Chapter chapter;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public ArrayList<PageInfo> pageList;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final AtomicBoolean isChapterLastPage;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final AtomicBoolean needClearPaginationCache;

    /* renamed from: e, reason: from kotlin metadata */
    public float currentPaginationProgress;

    public PaginateChapter(@NotNull Chapter chapter) {
        Intrinsics.checkNotNullParameter(chapter, "chapter");
        this.chapter = chapter;
        this.pageList = new ArrayList<>();
        this.isChapterLastPage = new AtomicBoolean(false);
        this.needClearPaginationCache = new AtomicBoolean(false);
    }

    /* renamed from: a */
    public final void m34600a(PinPosition position, ReaderCacheProto.PositionProto positionProto) {
        position.setXpath(positionProto.getXpathList());
        position.setNodePosition(positionProto.getNodePosition());
        position.setTextOffset(positionProto.getTextEndOffset());
    }

    /* renamed from: b */
    public final TableCell m34601b(ReaderCacheProto.TableCellProto tableCellProto) {
        TableCell tableCell = new TableCell(this.chapter);
        PinPosition pin = tableCell.getPin();
        Intrinsics.checkNotNullExpressionValue(pin, "getPin(...)");
        ReaderCacheProto.PositionProto pin2 = tableCellProto.getPin();
        Intrinsics.checkNotNullExpressionValue(pin2, "getPin(...)");
        m34600a(pin, pin2);
        PinPosition start = tableCell.getStart();
        Intrinsics.checkNotNullExpressionValue(start, "getStart(...)");
        ReaderCacheProto.PositionProto start2 = tableCellProto.getStart();
        Intrinsics.checkNotNullExpressionValue(start2, "getStart(...)");
        m34600a(start, start2);
        PinPosition end = tableCell.getEnd();
        Intrinsics.checkNotNullExpressionValue(end, "getEnd(...)");
        ReaderCacheProto.PositionProto end2 = tableCellProto.getEnd();
        Intrinsics.checkNotNullExpressionValue(end2, "getEnd(...)");
        m34600a(end, end2);
        tableCell.setTableRows(m34604e(tableCellProto.getTableRowList()));
        return tableCell;
    }

    /* renamed from: c */
    public final List<TableCell> m34602c(List<ReaderCacheProto.TableCellProto> tableCellListProto) {
        List<TableCell> emptyList;
        List<ReaderCacheProto.TableCellProto> list = tableCellListProto;
        if (list == null || list.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<ReaderCacheProto.TableCellProto> it2 = tableCellListProto.iterator();
        while (it2.hasNext()) {
            arrayList.add(m34601b(it2.next()));
        }
        return arrayList;
    }

    @NotNull
    public final PaginateChapter copy() {
        PaginateChapter paginateChapter = new PaginateChapter(this.chapter);
        paginateChapter.pageList.addAll(this.pageList);
        paginateChapter.isChapterLastPage.set(this.isChapterLastPage.get());
        return paginateChapter;
    }

    /* renamed from: d */
    public final TableRow m34603d(ReaderCacheProto.TableRowProto tableRowProto) {
        TableRow tableRow = new TableRow(this.chapter);
        PinPosition pin = tableRow.getPin();
        Intrinsics.checkNotNullExpressionValue(pin, "getPin(...)");
        ReaderCacheProto.PositionProto pin2 = tableRowProto.getPin();
        Intrinsics.checkNotNullExpressionValue(pin2, "getPin(...)");
        m34600a(pin, pin2);
        tableRow.setTableCells(m34602c(tableRowProto.getTableCellList()));
        return tableRow;
    }

    /* renamed from: e */
    public final List<TableRow> m34604e(List<ReaderCacheProto.TableRowProto> tableRowListProto) {
        List<TableRow> emptyList;
        List<ReaderCacheProto.TableRowProto> list = tableRowListProto;
        if (list == null || list.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<ReaderCacheProto.TableRowProto> it2 = tableRowListProto.iterator();
        while (it2.hasNext()) {
            arrayList.add(m34603d(it2.next()));
        }
        return arrayList;
    }

    /* renamed from: f */
    public final void m34605f(PageInfo pageInfo) {
        int endPositionInt = pageInfo.getEndPositionInt() - this.chapter.getStartPos();
        int endPos = this.chapter.getEndPos() - this.chapter.getStartPos();
        this.currentPaginationProgress = (endPositionInt * 1.0f) / endPos;
        Debug.INSTANCE.m32035d(PaginateChapter.class, endPositionInt + " / " + endPos + ", progress = " + this.currentPaginationProgress, new Object[0]);
    }

    @NotNull
    public final Chapter getChapter() {
        return this.chapter;
    }

    public final float getCurrentPaginationProgress() {
        return this.currentPaginationProgress;
    }

    @NotNull
    public final AtomicBoolean getNeedClearPaginationCache() {
        return this.needClearPaginationCache;
    }

    @NotNull
    public final ArrayList<PageInfo> getPageList() {
        return this.pageList;
    }

    @NotNull
    /* renamed from: isChapterLastPage, reason: from getter */
    public final AtomicBoolean getIsChapterLastPage() {
        return this.isChapterLastPage;
    }

    public final boolean isPaginationComplete() {
        return this.isChapterLastPage.get();
    }

    public final void reset() {
        this.pageList.clear();
        this.isChapterLastPage.set(false);
        this.needClearPaginationCache.set(false);
        this.currentPaginationProgress = 0.0f;
    }

    public final boolean resetPageList(@Nullable ReaderCacheProto.RangeListProto rangeList) {
        if (rangeList == null) {
            return false;
        }
        List<ReaderCacheProto.RangeProto> rangeList2 = rangeList.getRangeList();
        if (rangeList2 == null || rangeList2.isEmpty()) {
            return false;
        }
        this.isChapterLastPage.set(false);
        this.pageList = new ArrayList<>();
        List<ReaderCacheProto.RangeProto> rangeList3 = rangeList.getRangeList();
        int size = rangeList3.size() - 1;
        PageInfo pageInfo = null;
        int i = 0;
        while (i < size) {
            pageInfo = new PageInfo(this.chapter);
            ReaderCacheProto.RangeProto rangeProto = rangeList3.get(i);
            i++;
            ReaderCacheProto.RangeProto rangeProto2 = rangeList3.get(i);
            PinPosition start = pageInfo.getPageRange().getStart();
            Intrinsics.checkNotNullExpressionValue(start, "getStart(...)");
            ReaderCacheProto.PositionProto position = rangeProto.getPosition();
            Intrinsics.checkNotNullExpressionValue(position, "getPosition(...)");
            m34600a(start, position);
            PinPosition end = pageInfo.getPageRange().getEnd();
            Intrinsics.checkNotNullExpressionValue(end, "getEnd(...)");
            ReaderCacheProto.PositionProto position2 = rangeProto2.getPosition();
            Intrinsics.checkNotNullExpressionValue(position2, "getPosition(...)");
            m34600a(end, position2);
            pageInfo.getPageRange().setTableRows(m34604e(rangeProto.getTableRowList()));
            this.pageList.add(pageInfo);
        }
        Intrinsics.checkNotNull(pageInfo);
        if (pageInfo.isChapterLastPage()) {
            this.isChapterLastPage.set(true);
            return true;
        }
        Debug.INSTANCE.m32044e(PaginateChapter.class, "Invalid pagination cache, Chapter:" + this.chapter.getChapterId(), new Object[0]);
        this.pageList.clear();
        return false;
    }

    public final void setCurrentPaginationProgress(float f) {
        this.currentPaginationProgress = f;
    }

    public final void setPageList(@NotNull ArrayList<PageInfo> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.pageList = arrayList;
    }

    public final void updatePaginationPageInfo(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        this.pageList.add(pageInfo);
        m34605f(pageInfo);
        if (pageInfo.isChapterLastPage()) {
            this.isChapterLastPage.set(true);
        }
    }
}
