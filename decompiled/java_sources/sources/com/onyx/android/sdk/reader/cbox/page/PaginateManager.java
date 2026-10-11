package com.onyx.android.sdk.reader.cbox.page;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.reader.api.PaginationChapterInfo;
import com.onyx.android.sdk.reader.cbox.exception.PageException;
import com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto;
import com.onyx.android.sdk.reader.cbox.utils.CBoxUtils;
import com.onyx.engine.sdk.Chapter;
import com.onyx.engine.sdk.DisplayMetrics;
import com.onyx.engine.sdk.NeoBaseNative;
import com.onyx.engine.sdk.PageInfo;
import com.onyx.engine.sdk.PageRange;
import com.onyx.engine.sdk.PinPosition;
import com.onyx.engine.sdk.ReaderTextStyle;
import com.onyx.engine.sdk.TableCell;
import com.onyx.engine.sdk.TableRow;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000È\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 u2\u00020\u0001:\u0001uB\u001f\u0012\u0006\u0010Y\u001a\u00020W\u0012\u0006\u0010\\\u001a\u00020Z\u0012\u0006\u0010_\u001a\u00020]¢\u0006\u0004\bs\u0010tJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J \u0010\u0012\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0010H\u0002J\b\u0010\u0016\u001a\u00020\u0004H\u0002J\u0010\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0006H\u0002J\u0010\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\u001a\u001a\u00020\u0010H\u0002J\u0012\u0010\u001c\u001a\u00020\u00042\b\u0010\u001b\u001a\u0004\u0018\u00010\u0002H\u0002J\u0010\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0010\u0010\"\u001a\u00020!2\u0006\u0010\u0007\u001a\u00020\u001dH\u0002J \u0010(\u001a\u0004\u0018\u00010&2\u0006\u0010$\u001a\u00020#2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020&0%H\u0002J\b\u0010)\u001a\u00020\u0004H\u0002J\u0010\u0010+\u001a\u00020*2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u001e\u0010/\u001a\b\u0012\u0004\u0012\u00020.0%2\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010%H\u0002J\u001e\u00103\u001a\b\u0012\u0004\u0012\u0002020%2\u000e\u00101\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010%H\u0002J\u0010\u00105\u001a\u0002042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u00106\u001a\u00020\u0010H\u0002J\b\u00107\u001a\u00020\u0010H\u0002J\b\u00108\u001a\u00020\u0010H\u0002J\b\u00109\u001a\u00020\u0010H\u0002J\b\u0010:\u001a\u00020\u0010H\u0002J\b\u0010;\u001a\u00020\u0004H\u0002J*\u0010@\u001a\u00020\u00042\"\u0010?\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020=0<j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020=`>J\u000e\u0010B\u001a\u00020\u00042\u0006\u0010A\u001a\u00020\u0002J\u0006\u0010C\u001a\u00020!J\u0006\u0010D\u001a\u00020\u0004J\u000e\u0010G\u001a\u00020\u00102\u0006\u0010F\u001a\u00020EJ\u0010\u0010H\u001a\u0004\u0018\u00010\b2\u0006\u0010F\u001a\u00020EJ\u0006\u0010I\u001a\u00020\u001fJ\u000e\u0010J\u001a\u00020!2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010K\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010L\u001a\u00020\u0010J\u0006\u0010M\u001a\u00020\u0010J\u0006\u0010N\u001a\u00020\u0002J\u0006\u0010O\u001a\u00020\u0010J\u0006\u0010P\u001a\u00020\u0004J\u0006\u0010Q\u001a\u00020\u0010J\u0006\u0010R\u001a\u00020\u0004J\u000e\u0010T\u001a\u00020\u00042\u0006\u0010S\u001a\u00020\u0010J\u0006\u0010U\u001a\u00020\u0010J\u0006\u0010V\u001a\u00020\u0004R\u0014\u0010Y\u001a\u00020W8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u0010XR\u0014\u0010\\\u001a\u00020Z8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010[R\u0014\u0010_\u001a\u00020]8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u0010^R\u0018\u0010`\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010XR\u0014\u0010c\u001a\u00020a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010bR>\u0010?\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020!0<j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020!`>8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010d\u001a\u0004\be\u0010f\"\u0004\bg\u0010hR\u0016\u0010j\u001a\u00020!8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b;\u0010iR\u0014\u0010m\u001a\u00020k8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010lR\u0014\u0010p\u001a\u00020n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010oR\u0016\u0010r\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010q¨\u0006v"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;", "", "", "chapterID", "", "y", "Lcom/onyx/engine/sdk/PinPosition;", "position", "Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;", "t", "Lcom/onyx/engine/sdk/PageInfo;", "pageInfo", GoogleApiAvailabilityLight.f29016b, "paginationInfo", "Lcom/onyx/engine/sdk/PageRange;", "pageRange", "", "isLastPage", "x", C6999h.f39688c, "throwException", C6997f.f39671c, "u", "bookPosition", "i", "j", "e", "chapterId", "v", "", "bookSize", "", "m", "Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;", C4921e.f26537n, "Lcom/onyx/engine/sdk/Chapter;", "chapter", "", "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeListProto;", "list", "l", "w", "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$RangeProto;", "b", "Lcom/onyx/engine/sdk/TableRow;", "tableRows", "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;", "d", "Lcom/onyx/engine/sdk/TableCell;", "tableCells", "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;", "c", "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;", "a", "q", "r", "s", C4921e.f26528e, "p", C6998g.f39679a, "Ljava/util/LinkedHashMap;", "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;", "Lkotlin/collections/LinkedHashMap;", "chapterMap", "setChapter", "bookKeyCode", "setBookKeyCode", "getCurrentChapter", "updateStyle", "Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;", PrivilegedApp.f6532i, "hasPaginationNext", "paginationNext", "getPaginationProgress", "getChapter", "isPaginationComplete", "isAllPaginationComplete", "resetPageList", "getStyleHashKey", "onPaginationStart", "onPaginationFinally", "isNeedClearPaginationCache", "clearPaginationCache", "abort", "setAbortPagination", "isAbortPagination", "close", "Lcom/onyx/engine/sdk/NeoBaseNative;", "Lcom/onyx/engine/sdk/NeoBaseNative;", "neoNative", "Lcom/onyx/engine/sdk/DisplayMetrics;", "Lcom/onyx/engine/sdk/DisplayMetrics;", "displayMetrics", "Lcom/onyx/engine/sdk/ReaderTextStyle;", "Lcom/onyx/engine/sdk/ReaderTextStyle;", "engineTextStyle", "pagination", "Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;", "Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;", "positionCacheManager", "Ljava/util/LinkedHashMap;", "getChapterMap", "()Ljava/util/LinkedHashMap;", "setChapterMap", "(Ljava/util/LinkedHashMap;)V", "Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;", "currentChapter", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "abortPagination", "Ljava/util/concurrent/atomic/AtomicInteger;", "Ljava/util/concurrent/atomic/AtomicInteger;", "pagingStatus", Constants.HASIDCALL_INDEX_SIG, "allPaginationComplete", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/engine/sdk/DisplayMetrics;Lcom/onyx/engine/sdk/ReaderTextStyle;)V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPaginateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaginateManager.kt\ncom/onyx/android/sdk/reader/cbox/page/PaginateManager\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,475:1\n215#2,2:476\n215#2,2:478\n*S KotlinDebug\n*F\n+ 1 PaginateManager.kt\ncom/onyx/android/sdk/reader/cbox/page/PaginateManager\n*L\n48#1:476,2\n65#1:478,2\n*E\n"})
/* loaded from: classes8.dex */
public final class PaginateManager {

    /* renamed from: k */
    public static final int f44716k = 0;

    /* renamed from: l */
    public static final int f44717l = 1;

    /* renamed from: m */
    public static final int f44718m = 3;

    /* renamed from: n */
    public static final int f44719n = 4;

    /* renamed from: o */
    public static final int f44720o = 5;

    /* renamed from: p */
    public static final int f44721p = 50;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final NeoBaseNative neoNative;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final DisplayMetrics displayMetrics;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final ReaderTextStyle engineTextStyle;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public NeoBaseNative pagination;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final PagePositionCacheManager positionCacheManager;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public LinkedHashMap<String, PaginateChapter> chapterMap;

    /* renamed from: g, reason: from kotlin metadata */
    public PaginateChapter currentChapter;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final AtomicBoolean abortPagination;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final AtomicInteger pagingStatus;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean allPaginationComplete;

    public PaginateManager(@NotNull NeoBaseNative neoNative, @NotNull DisplayMetrics displayMetrics, @NotNull ReaderTextStyle engineTextStyle) {
        Intrinsics.checkNotNullParameter(neoNative, "neoNative");
        Intrinsics.checkNotNullParameter(displayMetrics, "displayMetrics");
        Intrinsics.checkNotNullParameter(engineTextStyle, "engineTextStyle");
        this.neoNative = neoNative;
        this.displayMetrics = displayMetrics;
        this.engineTextStyle = engineTextStyle;
        this.positionCacheManager = new PagePositionCacheManager();
        this.chapterMap = new LinkedHashMap<>();
        this.abortPagination = new AtomicBoolean(false);
        this.pagingStatus = new AtomicInteger(0);
    }

    /* renamed from: a */
    public final ReaderCacheProto.PositionProto m34606a(PinPosition position) {
        ReaderCacheProto.PositionProto.Builder newBuilder = ReaderCacheProto.PositionProto.newBuilder();
        List<Integer> xpath = position.getXpath();
        if (xpath == null) {
            xpath = CollectionsKt__CollectionsKt.emptyList();
        }
        newBuilder.addAllXpath(xpath).setNodePosition(position.getNodePosition()).setTextStartOffset(position.getTextOffset()).setTextEndOffset(position.getTextOffset());
        ReaderCacheProto.PositionProto build = newBuilder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    /* renamed from: b */
    public final ReaderCacheProto.RangeProto m34607b(PageInfo pageInfo) {
        ReaderCacheProto.RangeProto.Builder newBuilder = ReaderCacheProto.RangeProto.newBuilder();
        PinPosition start = pageInfo.getPageRange().getStart();
        Intrinsics.checkNotNullExpressionValue(start, "getStart(...)");
        newBuilder.setPosition(m34606a(start));
        newBuilder.addAllTableRow(m34609d(pageInfo.getPageRange().getTableRows()));
        ReaderCacheProto.RangeProto build = newBuilder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    /* renamed from: c */
    public final List<ReaderCacheProto.TableCellProto> m34608c(List<? extends TableCell> tableCells) {
        List<ReaderCacheProto.TableCellProto> emptyList;
        List<? extends TableCell> list = tableCells;
        if (list == null || list.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        for (TableCell tableCell : tableCells) {
            ReaderCacheProto.TableCellProto.Builder newBuilder = ReaderCacheProto.TableCellProto.newBuilder();
            PinPosition pin = tableCell.getPin();
            Intrinsics.checkNotNullExpressionValue(pin, "getPin(...)");
            ReaderCacheProto.TableCellProto.Builder pin2 = newBuilder.setPin(m34606a(pin));
            PinPosition start = tableCell.getStart();
            Intrinsics.checkNotNullExpressionValue(start, "getStart(...)");
            ReaderCacheProto.TableCellProto.Builder start2 = pin2.setStart(m34606a(start));
            PinPosition end = tableCell.getEnd();
            Intrinsics.checkNotNullExpressionValue(end, "getEnd(...)");
            start2.setEnd(m34606a(end)).addAllTableRow(m34609d(tableCell.getTableRows()));
            ReaderCacheProto.TableCellProto build = newBuilder.build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            arrayList.add(build);
        }
        return arrayList;
    }

    public final void clearPaginationCache() {
        this.positionCacheManager.clear();
    }

    public final void close() {
        this.positionCacheManager.close();
        if (m34622q()) {
            m34612g();
        } else {
            this.pagingStatus.set(4);
        }
    }

    /* renamed from: d */
    public final List<ReaderCacheProto.TableRowProto> m34609d(List<? extends TableRow> tableRows) {
        List<ReaderCacheProto.TableRowProto> emptyList;
        List<? extends TableRow> list = tableRows;
        if (list == null || list.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        for (TableRow tableRow : tableRows) {
            ReaderCacheProto.TableRowProto.Builder newBuilder = ReaderCacheProto.TableRowProto.newBuilder();
            PinPosition pin = tableRow.getPin();
            Intrinsics.checkNotNullExpressionValue(pin, "getPin(...)");
            newBuilder.setPin(m34606a(pin)).addAllTableCell(m34608c(tableRow.getTableCells()));
            ReaderCacheProto.TableRowProto build = newBuilder.build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            arrayList.add(build);
        }
        return arrayList;
    }

    /* renamed from: e */
    public final boolean m34610e() {
        return isAbortPagination() || !m34623r();
    }

    /* renamed from: f */
    public final void m34611f(PageInfo pageInfo, boolean throwException) {
        if (pageInfo.getStartPositionInt() >= pageInfo.getEndPositionInt()) {
            StringBuilder sb = new StringBuilder();
            sb.append("current ");
            CBoxUtils cBoxUtils = CBoxUtils.INSTANCE;
            PaginateChapter paginateChapter = this.currentChapter;
            if (paginateChapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
                paginateChapter = null;
            }
            sb.append(cBoxUtils.chapterInfo(paginateChapter.getChapter()));
            sb.append("， pageInfo ");
            sb.append(cBoxUtils.pagePositionInfo(pageInfo));
            String sb2 = sb.toString();
            if (!pageInfo.getPageRange().hasTable()) {
                String str = sb2 + ", no table";
                this.pagingStatus.set(5);
                m34626u();
                throw new PageException(str);
            }
            if (!m34615j(pageInfo)) {
                if (!throwException) {
                    Debug.INSTANCE.m32060w(PaginateManager.class, new PageException(sb2));
                    return;
                } else {
                    this.pagingStatus.set(5);
                    m34626u();
                    throw new PageException(sb2);
                }
            }
            String str2 = sb2 + ", exist in cache";
            this.pagingStatus.set(5);
            m34626u();
            throw new PageException(str2);
        }
    }

    /* renamed from: g */
    public final void m34612g() {
        NeoBaseNative neoBaseNative = this.pagination;
        if (neoBaseNative != null) {
            neoBaseNative.close();
        }
        this.pagination = null;
    }

    @NotNull
    public final PaginateChapter getChapter(@NotNull String chapterID) throws PageException {
        Intrinsics.checkNotNullParameter(chapterID, "chapterID");
        PaginateChapter paginateChapter = this.chapterMap.get(chapterID);
        if (paginateChapter != null) {
            return paginateChapter;
        }
        throw new PageException("Not found chapter id by id: " + chapterID);
    }

    @NotNull
    public final LinkedHashMap<String, PaginateChapter> getChapterMap() {
        return this.chapterMap;
    }

    @NotNull
    public final PaginateChapter getCurrentChapter() {
        PaginateChapter paginateChapter = this.currentChapter;
        if (paginateChapter != null) {
            return paginateChapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
        return null;
    }

    public final float getPaginationProgress() {
        float size = this.chapterMap.size();
        int bookSize = this.neoNative.getBookSize();
        Iterator<Map.Entry<String, PaginateChapter>> it2 = this.chapterMap.entrySet().iterator();
        float f = 0.0f;
        float f2 = 0.0f;
        while (it2.hasNext()) {
            if (it2.next().getValue().isPaginationComplete()) {
                f2 += 1.0f;
                f += r5.getChapter().getEndPos() - r5.getChapter().getStartPos();
            }
        }
        float f3 = f / bookSize;
        float m34618m = m34618m(bookSize);
        Debug.INSTANCE.m32035d(PaginateManager.class, "paginationCompletePercent = " + f3 + ", currentPaginationPercent = " + m34618m + ", paginationCompleteCount = " + f2 + ", total = " + size + ", percent = " + (f2 / size), new Object[0]);
        return f3 + m34618m;
    }

    @NotNull
    public final String getStyleHashKey() {
        return String.valueOf((this.engineTextStyle.getLayoutStyle() + this.displayMetrics.getLayoutStyle()).hashCode());
    }

    /* renamed from: h */
    public final PageInfo m34613h(PinPosition position) {
        int positionInt = position.getPositionInt();
        PaginateChapter paginateChapter = this.currentChapter;
        PaginateChapter paginateChapter2 = null;
        if (paginateChapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            paginateChapter = null;
        }
        if (positionInt != paginateChapter.getChapter().getStartPos()) {
            Debug debug = Debug.INSTANCE;
            StringBuilder sb = new StringBuilder();
            sb.append("createChapterStartPageInfo, does not hit cache, must start from chapter.startPos, request position = ");
            sb.append(position.getPositionInt());
            sb.append(", current ");
            CBoxUtils cBoxUtils = CBoxUtils.INSTANCE;
            PaginateChapter paginateChapter3 = this.currentChapter;
            if (paginateChapter3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
                paginateChapter3 = null;
            }
            sb.append(cBoxUtils.chapterInfo(paginateChapter3.getChapter()));
            debug.m32059w(PaginateManager.class, sb.toString(), new Object[0]);
        }
        PaginateChapter paginateChapter4 = this.currentChapter;
        if (paginateChapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
        } else {
            paginateChapter2 = paginateChapter4;
        }
        return m34614i(new PinPosition(paginateChapter2.getChapter()));
    }

    public final boolean hasPaginationNext(@NotNull PaginationChapterInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        String chapterId = info.getChapterId();
        m34630y(chapterId);
        PaginateChapter paginateChapter = this.currentChapter;
        if (paginateChapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            paginateChapter = null;
        }
        if (!paginateChapter.isPaginationComplete()) {
            return true;
        }
        m34627v(chapterId);
        return false;
    }

    /* renamed from: i */
    public final PageInfo m34614i(PinPosition bookPosition) {
        return new PageInfo(new PageRange(bookPosition));
    }

    public final boolean isAbortPagination() {
        return this.abortPagination.get();
    }

    public final boolean isAllPaginationComplete() {
        if (this.allPaginationComplete) {
            return true;
        }
        Iterator<PaginateChapter> it2 = this.chapterMap.values().iterator();
        while (it2.hasNext()) {
            if (!it2.next().isPaginationComplete()) {
                return false;
            }
        }
        this.allPaginationComplete = true;
        return true;
    }

    public final boolean isNeedClearPaginationCache() throws Exception {
        PaginateChapter paginateChapter = this.currentChapter;
        if (paginateChapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            paginateChapter = null;
        }
        return paginateChapter.getNeedClearPaginationCache().get();
    }

    public final boolean isPaginationComplete(@NotNull String chapterID) {
        Intrinsics.checkNotNullParameter(chapterID, "chapterID");
        return getChapter(chapterID).isPaginationComplete();
    }

    /* renamed from: j */
    public final boolean m34615j(PageInfo pageInfo) {
        PaginateChapter paginateChapter = this.currentChapter;
        if (paginateChapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            paginateChapter = null;
        }
        Iterator<PageInfo> it2 = paginateChapter.getPageList().iterator();
        while (it2.hasNext()) {
            if (it2.next().getStartPositionInt() == pageInfo.getStartPositionInt()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: k */
    public final PaginateChapter m34616k(int position) throws PageException {
        Iterator<Map.Entry<String, PaginateChapter>> it2 = this.chapterMap.entrySet().iterator();
        while (it2.hasNext()) {
            PaginateChapter value = it2.next().getValue();
            if (value.getChapter().contains(position)) {
                return value;
            }
        }
        throw new PageException("Not found chapter by position: " + position);
    }

    /* renamed from: l */
    public final ReaderCacheProto.RangeListProto m34617l(Chapter chapter, List<ReaderCacheProto.RangeListProto> list) {
        for (ReaderCacheProto.RangeListProto rangeListProto : list) {
            if (rangeListProto.getChapter() == chapter.getStartPos()) {
                return rangeListProto;
            }
        }
        return null;
    }

    /* renamed from: m */
    public final float m34618m(int bookSize) {
        PaginateChapter paginateChapter = this.currentChapter;
        PaginateChapter paginateChapter2 = null;
        if (paginateChapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            paginateChapter = null;
        }
        if (paginateChapter.isPaginationComplete()) {
            return 0.0f;
        }
        MathUtils mathUtils = MathUtils.INSTANCE;
        PaginateChapter paginateChapter3 = this.currentChapter;
        if (paginateChapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            paginateChapter3 = null;
        }
        float floatValue = ((Number) mathUtils.clamp(Float.valueOf(paginateChapter3.getCurrentPaginationProgress()), Float.valueOf(0.0f), Float.valueOf(1.0f))).floatValue();
        PaginateChapter paginateChapter4 = this.currentChapter;
        if (paginateChapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            paginateChapter4 = null;
        }
        int endPos = paginateChapter4.getChapter().getEndPos();
        PaginateChapter paginateChapter5 = this.currentChapter;
        if (paginateChapter5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
        } else {
            paginateChapter2 = paginateChapter5;
        }
        int startPos = endPos - paginateChapter2.getChapter().getStartPos();
        if (startPos <= 0) {
            return 0.0f;
        }
        return floatValue * ((startPos * 1.0f) / bookSize);
    }

    /* renamed from: n */
    public final PaginationInfo m34619n(PageInfo pageInfo) {
        PaginationInfo paginationInfo = new PaginationInfo();
        PageRange pageRange = pageInfo.getPageRange();
        Intrinsics.checkNotNullExpressionValue(pageRange, "getPageRange(...)");
        m34629x(paginationInfo, pageRange, pageInfo.isChapterLastPage());
        return paginationInfo;
    }

    /* renamed from: o */
    public final boolean m34620o() {
        return this.pagingStatus.get() >= 4;
    }

    public final void onPaginationFinally() {
        if (m34622q()) {
            return;
        }
        if (m34620o()) {
            m34612g();
        }
        if (m34621p()) {
            return;
        }
        this.pagingStatus.set(0);
        if (isAbortPagination()) {
            setAbortPagination(false);
        } else if (isAllPaginationComplete()) {
            m34612g();
            m34628w();
        }
    }

    public final boolean onPaginationStart() {
        if (m34621p()) {
            Debug.INSTANCE.m32044e(PaginateManager.class, "pagination occur error, please clear cache", new Object[0]);
            return false;
        }
        if (this.pagination == null) {
            this.pagination = this.neoNative.forkForPagination();
        }
        NeoBaseNative neoBaseNative = this.pagination;
        if (neoBaseNative != null) {
            neoBaseNative.setReaderTextStyle(this.engineTextStyle);
        }
        NeoBaseNative neoBaseNative2 = this.pagination;
        if (neoBaseNative2 != null) {
            neoBaseNative2.setupDisplayMetrics(this.displayMetrics);
        }
        this.pagingStatus.set(1);
        return this.pagination != null;
    }

    /* renamed from: p */
    public final boolean m34621p() {
        return this.pagingStatus.get() == 5;
    }

    @Nullable
    public final PaginationInfo paginationNext(@NotNull PaginationChapterInfo info) throws Exception {
        Intrinsics.checkNotNullParameter(info, "info");
        PaginateChapter paginateChapter = null;
        if (m34610e()) {
            Debug.INSTANCE.m32035d(PaginateManager.class, "before next, abort or style changed, abortPagination:" + this.abortPagination.get() + ", pagingStatus:" + this.pagingStatus.get(), new Object[0]);
            return null;
        }
        PaginateChapter paginateChapter2 = this.currentChapter;
        if (paginateChapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            paginateChapter2 = null;
        }
        if (Intrinsics.areEqual(paginateChapter2.getChapter().getChapterId(), info.getChapterId())) {
            PaginationInfo m34625t = m34625t(CBoxUtils.INSTANCE.convert(info.getPageStartPosition()));
            PaginateChapter paginateChapter3 = this.currentChapter;
            if (paginateChapter3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
                paginateChapter3 = null;
            }
            if (paginateChapter3.isPaginationComplete()) {
                PaginateChapter paginateChapter4 = this.currentChapter;
                if (paginateChapter4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
                } else {
                    paginateChapter = paginateChapter4;
                }
                m34627v(paginateChapter.getChapter().getChapterId());
            }
            return m34625t;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Paginate error, current ");
        CBoxUtils cBoxUtils = CBoxUtils.INSTANCE;
        PaginateChapter paginateChapter5 = this.currentChapter;
        if (paginateChapter5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
        } else {
            paginateChapter = paginateChapter5;
        }
        sb.append(cBoxUtils.chapterInfo(paginateChapter.getChapter()));
        sb.append(", need paginate chapter:");
        sb.append(info.getChapterId());
        PageException pageException = new PageException(sb.toString());
        Debug.INSTANCE.m32045e(PaginateManager.class, pageException);
        throw pageException;
    }

    /* renamed from: q */
    public final boolean m34622q() {
        return this.pagingStatus.get() == 0;
    }

    /* renamed from: r */
    public final boolean m34623r() {
        return this.pagingStatus.get() == 1;
    }

    public final boolean resetPageList() {
        boolean z = false;
        if (isAllPaginationComplete()) {
            return false;
        }
        ReaderCacheProto.ChapterCacheListProto cache = this.positionCacheManager.getCache(getStyleHashKey());
        if (cache == null) {
            return false;
        }
        List<ReaderCacheProto.RangeListProto> cacheList = cache.getCacheList();
        if (cacheList == null || cacheList.isEmpty()) {
            return false;
        }
        for (PaginateChapter paginateChapter : this.chapterMap.values()) {
            if (!paginateChapter.isPaginationComplete()) {
                Chapter chapter = paginateChapter.getChapter();
                List<ReaderCacheProto.RangeListProto> cacheList2 = cache.getCacheList();
                Intrinsics.checkNotNullExpressionValue(cacheList2, "getCacheList(...)");
                z |= paginateChapter.resetPageList(m34617l(chapter, cacheList2));
            }
        }
        return z;
    }

    /* renamed from: s */
    public final boolean m34624s() {
        return this.pagingStatus.get() == 3;
    }

    public final void setAbortPagination(boolean abort) {
        this.abortPagination.set(abort);
    }

    public final void setBookKeyCode(@NotNull String bookKeyCode) {
        Intrinsics.checkNotNullParameter(bookKeyCode, "bookKeyCode");
        this.positionCacheManager.init(bookKeyCode);
    }

    public final void setChapter(@NotNull LinkedHashMap<String, LayoutChapter> chapterMap) {
        Object first;
        Intrinsics.checkNotNullParameter(chapterMap, "chapterMap");
        this.chapterMap.clear();
        for (Map.Entry<String, LayoutChapter> entry : chapterMap.entrySet()) {
            this.chapterMap.put(entry.getKey(), new PaginateChapter(entry.getValue().getChapter()));
        }
        Collection<PaginateChapter> values = this.chapterMap.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        first = CollectionsKt___CollectionsKt.first(values);
        this.currentChapter = (PaginateChapter) first;
    }

    public final void setChapterMap(@NotNull LinkedHashMap<String, PaginateChapter> linkedHashMap) {
        Intrinsics.checkNotNullParameter(linkedHashMap, "<set-?>");
        this.chapterMap = linkedHashMap;
    }

    /* renamed from: t */
    public final PaginationInfo m34625t(PinPosition position) {
        Object last;
        PageInfo m34614i;
        PaginateChapter paginateChapter = this.currentChapter;
        PaginateChapter paginateChapter2 = null;
        if (paginateChapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            paginateChapter = null;
        }
        ArrayList<PageInfo> pageList = paginateChapter.getPageList();
        if (pageList.isEmpty()) {
            m34614i = m34613h(position);
        } else {
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) pageList);
            PageInfo pageInfo = (PageInfo) last;
            if (pageInfo.getStartPositionInt() != position.getPositionInt()) {
                Debug.INSTANCE.m32059w(PaginateManager.class, "create last next PageInfo, last " + CBoxUtils.INSTANCE.pagePositionInfo(pageInfo) + ", next pos:" + position.getPositionInt() + ']', new Object[0]);
            }
            PinPosition copy = pageInfo.getPageRange().getEnd().copy();
            Intrinsics.checkNotNullExpressionValue(copy, "copy(...)");
            m34614i = m34614i(copy);
        }
        NeoBaseNative neoBaseNative = this.pagination;
        Intrinsics.checkNotNull(neoBaseNative);
        PageInfo gotoPage = neoBaseNative.gotoPage(m34614i);
        if (m34610e()) {
            Debug.INSTANCE.m32035d(PaginateManager.class, "after next, abort or style changed, abortPagination:" + this.abortPagination.get() + ", pagingStatus:" + this.pagingStatus.get(), new Object[0]);
            return null;
        }
        PaginateChapter paginateChapter3 = this.currentChapter;
        if (paginateChapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            paginateChapter3 = null;
        }
        if (pageList == paginateChapter3.getPageList()) {
            Intrinsics.checkNotNull(gotoPage);
            m34611f(gotoPage, false);
            PaginateChapter paginateChapter4 = this.currentChapter;
            if (paginateChapter4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            } else {
                paginateChapter2 = paginateChapter4;
            }
            paginateChapter2.updatePaginationPageInfo(gotoPage);
            return m34619n(gotoPage);
        }
        Debug debug = Debug.INSTANCE;
        StringBuilder sb = new StringBuilder();
        sb.append("chapter page list changed，current ");
        CBoxUtils cBoxUtils = CBoxUtils.INSTANCE;
        PaginateChapter paginateChapter5 = this.currentChapter;
        if (paginateChapter5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            paginateChapter5 = null;
        }
        sb.append(cBoxUtils.chapterInfo(paginateChapter5.getChapter()));
        debug.m32044e(PaginateManager.class, sb.toString(), new Object[0]);
        return null;
    }

    /* renamed from: u */
    public final void m34626u() {
        Debug.INSTANCE.m32047e(PaginateManager.class.getSimpleName(), "style: " + this.engineTextStyle.toJson() + ", \ndisplay metrics: " + this.displayMetrics.toJson(), new Object[0]);
    }

    public final void updateStyle() {
        this.allPaginationComplete = false;
        this.pagingStatus.set(3);
        Iterator<Map.Entry<String, PaginateChapter>> it2 = this.chapterMap.entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().reset();
        }
        resetPageList();
    }

    /* renamed from: v */
    public final void m34627v(String chapterId) {
        NeoBaseNative neoBaseNative = this.pagination;
        if (neoBaseNative != null) {
            neoBaseNative.recycleChapter(chapterId);
        }
    }

    /* renamed from: w */
    public final void m34628w() {
        Object last;
        String styleHashKey = getStyleHashKey();
        ReaderCacheProto.ChapterCacheListProto.Builder newBuilder = ReaderCacheProto.ChapterCacheListProto.newBuilder();
        for (PaginateChapter paginateChapter : this.chapterMap.values()) {
            if (paginateChapter.isPaginationComplete()) {
                ArrayList<PageInfo> pageList = paginateChapter.getPageList();
                if (!(pageList == null || pageList.isEmpty())) {
                    ReaderCacheProto.RangeListProto.Builder chapter = ReaderCacheProto.RangeListProto.newBuilder().setChapter(paginateChapter.getChapter().getStartPos());
                    ArrayList arrayList = new ArrayList(pageList);
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        PageInfo pageInfo = (PageInfo) it2.next();
                        Intrinsics.checkNotNull(pageInfo);
                        chapter.addRange(m34607b(pageInfo));
                    }
                    last = CollectionsKt___CollectionsKt.last((List<? extends Object>) arrayList);
                    ReaderCacheProto.RangeProto.Builder newBuilder2 = ReaderCacheProto.RangeProto.newBuilder();
                    PinPosition end = ((PageInfo) last).getPageRange().getEnd();
                    Intrinsics.checkNotNullExpressionValue(end, "getEnd(...)");
                    newBuilder2.setPosition(m34606a(end));
                    chapter.addRange(newBuilder2.build());
                    newBuilder.addCache(chapter.build());
                }
            }
        }
        PagePositionCacheManager pagePositionCacheManager = this.positionCacheManager;
        ReaderCacheProto.ChapterCacheListProto build = newBuilder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        pagePositionCacheManager.addCache(styleHashKey, build);
    }

    /* renamed from: x */
    public final void m34629x(PaginationInfo paginationInfo, PageRange pageRange, boolean isLastPage) {
        boolean z;
        PaginateChapter paginateChapter = this.currentChapter;
        PaginateChapter paginateChapter2 = null;
        if (paginateChapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            paginateChapter = null;
        }
        paginationInfo.setChapterID(paginateChapter.getChapter().getChapterId());
        paginationInfo.setPageRange(pageRange);
        int endPositionInt = pageRange.getEndPositionInt();
        PaginateChapter paginateChapter3 = this.currentChapter;
        if (paginateChapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            paginateChapter3 = null;
        }
        paginationInfo.setProgress(endPositionInt - paginateChapter3.getChapter().getStartPos());
        PaginateChapter paginateChapter4 = this.currentChapter;
        if (paginateChapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            paginateChapter4 = null;
        }
        paginationInfo.setFirstChapter(paginateChapter4.getChapter().isFirstChapter());
        PaginateChapter paginateChapter5 = this.currentChapter;
        if (paginateChapter5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            paginateChapter5 = null;
        }
        paginationInfo.setLastChapter(paginateChapter5.getChapter().isLastChapter());
        paginationInfo.setPaginationComplete(isLastPage);
        if (!isLastPage) {
            PaginateChapter paginateChapter6 = this.currentChapter;
            if (paginateChapter6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            } else {
                paginateChapter2 = paginateChapter6;
            }
            if (paginateChapter2.getPageList().size() % 50 != 0) {
                z = false;
                paginationInfo.setUpdateReaderPageInfo(z);
            }
        }
        z = true;
        paginationInfo.setUpdateReaderPageInfo(z);
    }

    /* renamed from: y */
    public final void m34630y(String chapterID) {
        PaginateChapter paginateChapter = this.currentChapter;
        PaginateChapter paginateChapter2 = null;
        if (paginateChapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            paginateChapter = null;
        }
        if (Intrinsics.areEqual(paginateChapter.getChapter().getChapterId(), chapterID)) {
            return;
        }
        PaginateChapter chapter = getChapter(chapterID);
        PaginateChapter paginateChapter3 = this.currentChapter;
        if (paginateChapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
        } else {
            paginateChapter2 = paginateChapter3;
        }
        m34627v(paginateChapter2.getChapter().getChapterId());
        this.currentChapter = chapter;
    }
}
