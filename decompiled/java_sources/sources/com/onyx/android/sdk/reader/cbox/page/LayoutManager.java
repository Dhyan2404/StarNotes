package com.onyx.android.sdk.reader.cbox.page;

import android.graphics.Bitmap;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContent;
import com.onyx.android.sdk.reader.api.ReaderException;
import com.onyx.android.sdk.reader.cbox.exception.PageException;
import com.onyx.android.sdk.reader.cbox.page.LayoutManager;
import com.onyx.android.sdk.reader.cbox.utils.CBoxUtils;
import com.onyx.engine.sdk.Chapter;
import com.onyx.engine.sdk.NeoBaseNative;
import com.onyx.engine.sdk.PageInfo;
import com.onyx.engine.sdk.PageRange;
import com.onyx.engine.sdk.PinPosition;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\bW\u0010XJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0012\u0010\f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J\u0012\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0018\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00022\u0006\u0010\t\u001a\u00020\u0006H\u0002J\b\u0010\u001d\u001a\u00020\u0004H\u0002J\b\u0010\u001e\u001a\u00020\u0015H\u0002J\b\u0010\u001f\u001a\u00020\u0015H\u0002J\u0012\u0010 \u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J4\u0010%\u001a\u0004\u0018\u00010\u00062\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00060!2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00060#2\u0006\u0010\t\u001a\u00020\u0006H\u0002J2\u0010&\u001a\u00020\u00182\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00060!2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00060#2\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u001a\u0010*\u001a\u00020\u00042\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u00020'J\u001a\u0010-\u001a\u00020\u00042\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020+0'J\u0006\u0010.\u001a\u00020\u0002J\u0006\u0010/\u001a\u00020\u0006J\u0006\u00100\u001a\u00020\u0018J\u0006\u00101\u001a\u00020\u0006J\u0010\u00102\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\b\u00103\u001a\u0004\u0018\u00010\u0006J\b\u00104\u001a\u0004\u0018\u00010\u0006J\u000e\u00107\u001a\u00020\u00062\u0006\u00106\u001a\u000205J\u001e\u00109\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u0015J\u000e\u0010<\u001a\u00020;2\u0006\u0010:\u001a\u00020\u0018J\u000e\u0010>\u001a\u00020\u00182\u0006\u0010=\u001a\u00020;J\u0006\u0010?\u001a\u00020\u0018J\u000e\u0010B\u001a\u00020\u00042\u0006\u0010A\u001a\u00020@J\u000e\u0010C\u001a\u00020\u00152\u0006\u0010=\u001a\u00020;J\u000e\u0010D\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020+J\u000e\u0010F\u001a\u00020\u00042\u0006\u0010E\u001a\u00020(J\u000e\u0010H\u001a\u00020\u00022\u0006\u0010G\u001a\u00020(J\u0006\u0010J\u001a\u00020IJ\u0006\u0010K\u001a\u00020IJ\u0006\u0010L\u001a\u00020\u0004R\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010NR\u0014\u0010Q\u001a\u00020O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010PR \u0010S\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020+0'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010RR\"\u0010)\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u00020'8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0017\u0010RR\u0016\u0010U\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0014\u0010TR\u0016\u0010\u000b\u001a\u00020\u00068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b \u0010V¨\u0006Y"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;", "", "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;", "chapter", "", "q", "Lcom/onyx/engine/sdk/PageInfo;", "page", "r", "pageInfo", "l", "currentPage", C4921e.f26537n, "j", "t", "Lcom/onyx/engine/sdk/NeoBaseNative;", "neoNative", "b", "expectPage", "actualPage", "e", "", "throwException", "d", "", FirebaseAnalytics.Param.INDEX, "i", "s", C6999h.f39688c, "c", GoogleApiAvailabilityLight.f29016b, "m", C6997f.f39671c, "", "pageList", "", "pageMap", C6998g.f39679a, C4921e.f26528e, "Ljava/util/LinkedHashMap;", "", "chapterMap", "setChapter", "Lcom/onyx/android/sdk/reader/cbox/page/PaginateChapter;", "paginateChapterMap", "updateStyle", "getCurrentChapter", "getCurrentPage", "getBookPositionInt", "layoutCurrentPage", "gotoPage", "prevPage", "nextPage", "Landroid/graphics/Bitmap;", "bitmap", "drawPage", "verifyPageRange", "layoutPage", CouchFieldKey.KEY_PAGE_NUMBER, "Lcom/onyx/engine/sdk/PinPosition;", "getPositionOfPageNumber", "position", "getPageNumberOfPosition", "getTotalPage", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", SyncConstant.LOCAL_TOC_DIR_NAME, "updateTocPageNumber", "hitPageCache", "setPaginationChapter", "chapterId", "updateReaderPageInfo", "chapterID", "getChapter", "Lcom/onyx/engine/sdk/Chapter;", "getNextScreenChapter", "getPrevScreenChapter", "close", "a", "Lcom/onyx/engine/sdk/NeoBaseNative;", "Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;", "Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;", "chapterCacheManager", "Ljava/util/LinkedHashMap;", "paginationChapterMap", "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;", "currentChapter", "Lcom/onyx/engine/sdk/PageInfo;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/engine/sdk/NeoBaseNative;)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLayoutManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutManager.kt\ncom/onyx/android/sdk/reader/cbox/page/LayoutManager\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,399:1\n215#2,2:400\n41#3,5:402\n*S KotlinDebug\n*F\n+ 1 LayoutManager.kt\ncom/onyx/android/sdk/reader/cbox/page/LayoutManager\n*L\n35#1:400,2\n358#1:402,5\n*E\n"})
/* loaded from: classes8.dex */
public final class LayoutManager {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final NeoBaseNative neoNative;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final ChapterCacheManager chapterCacheManager;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final LinkedHashMap<String, PaginateChapter> paginationChapterMap;

    /* renamed from: d, reason: from kotlin metadata */
    public LinkedHashMap<String, LayoutChapter> chapterMap;

    /* renamed from: e, reason: from kotlin metadata */
    public LayoutChapter currentChapter;

    /* renamed from: f, reason: from kotlin metadata */
    public PageInfo currentPage;

    public LayoutManager(@NotNull NeoBaseNative neoNative) {
        Intrinsics.checkNotNullParameter(neoNative, "neoNative");
        this.neoNative = neoNative;
        this.chapterCacheManager = new ChapterCacheManager(neoNative, 0, 2, null);
        this.paginationChapterMap = new LinkedHashMap<>();
    }

    /* renamed from: p */
    public static final int m34575p(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* renamed from: b */
    public final PageInfo m34576b(NeoBaseNative neoNative, PageInfo pageInfo) {
        PageInfo layoutPage = layoutPage(neoNative, pageInfo, false);
        LayoutChapter layoutChapter = this.currentChapter;
        LayoutChapter layoutChapter2 = null;
        if (layoutChapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            layoutChapter = null;
        }
        if (!layoutChapter.isPaginationComplete()) {
            LayoutChapter layoutChapter3 = this.currentChapter;
            if (layoutChapter3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            } else {
                layoutChapter2 = layoutChapter3;
            }
            layoutChapter2.addPageInfo(layoutPage);
        }
        return layoutPage;
    }

    /* renamed from: c */
    public final void m34577c() {
        ChapterCacheManager chapterCacheManager = this.chapterCacheManager;
        LayoutChapter layoutChapter = this.currentChapter;
        if (layoutChapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            layoutChapter = null;
        }
        chapterCacheManager.cacheChapter(layoutChapter);
    }

    public final void close() {
        this.chapterCacheManager.evictAll();
    }

    /* renamed from: d */
    public final void m34578d(PageInfo pageInfo, boolean throwException) {
        if (pageInfo.getStartPositionInt() > pageInfo.getEndPositionInt()) {
            StringBuilder sb = new StringBuilder();
            sb.append("layout exception! current ");
            CBoxUtils cBoxUtils = CBoxUtils.INSTANCE;
            LayoutChapter layoutChapter = this.currentChapter;
            if (layoutChapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
                layoutChapter = null;
            }
            sb.append(cBoxUtils.chapterInfo(layoutChapter.getChapter()));
            sb.append(", pageInfo ");
            sb.append(cBoxUtils.pagePositionInfo(pageInfo));
            sb.append(')');
            PageException pageException = new PageException(sb.toString());
            if (throwException) {
                throw pageException;
            }
            Debug.INSTANCE.m32060w(LayoutManager.class, pageException);
        }
    }

    @NotNull
    public final PageInfo drawPage(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        m34577c();
        NeoBaseNative neoBaseNative = this.neoNative;
        PageInfo pageInfo = this.currentPage;
        PageInfo pageInfo2 = null;
        if (pageInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentPage");
            pageInfo = null;
        }
        PageInfo gotoPage = neoBaseNative.gotoPage(pageInfo);
        if (gotoPage != null) {
            if (this.neoNative.drawPage(bitmap)) {
                m34592s(gotoPage);
                m34593t(gotoPage);
                this.currentPage = gotoPage;
                return gotoPage;
            }
            throw new PageException("draw page failed, page:" + gotoPage.getStartChapterID() + '-' + gotoPage.getStartPositionInt());
        }
        StringBuilder sb = new StringBuilder();
        sb.append("goto page failed, current chapter:");
        PageInfo pageInfo3 = this.currentPage;
        if (pageInfo3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentPage");
            pageInfo3 = null;
        }
        sb.append(pageInfo3.getStartChapterID());
        sb.append(", position:");
        PageInfo pageInfo4 = this.currentPage;
        if (pageInfo4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentPage");
        } else {
            pageInfo2 = pageInfo4;
        }
        sb.append(pageInfo2.getStartPositionInt());
        throw new PageException(sb.toString());
    }

    /* renamed from: e */
    public final void m34579e(PageInfo expectPage, PageInfo actualPage) {
        if (expectPage.getStartPositionInt() == actualPage.getStartPositionInt() && expectPage.getEndPositionInt() == actualPage.getEndPositionInt()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("checkPageRange, exception, please clear page cache. expectRange ");
        CBoxUtils cBoxUtils = CBoxUtils.INSTANCE;
        sb.append(cBoxUtils.pagePositionInfo(expectPage));
        sb.append(", actualRange ");
        sb.append(cBoxUtils.pagePositionInfo(actualPage));
        sb.append(". ");
        Debug.INSTANCE.m32060w(LayoutManager.class, new PageException(sb.toString()));
    }

    /* renamed from: f */
    public final PageInfo m34580f(PageInfo pageInfo) {
        LayoutChapter layoutChapter = this.currentChapter;
        LayoutChapter layoutChapter2 = null;
        if (layoutChapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            layoutChapter = null;
        }
        List<PageInfo> layoutList = layoutChapter.getLayoutList();
        LayoutChapter layoutChapter3 = this.currentChapter;
        if (layoutChapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
        } else {
            layoutChapter2 = layoutChapter3;
        }
        return m34581g(layoutList, layoutChapter2.getLayoutMap(), pageInfo);
    }

    /* renamed from: g */
    public final PageInfo m34581g(List<? extends PageInfo> pageList, Map<Integer, ? extends PageInfo> pageMap, PageInfo pageInfo) {
        int m34589o = m34589o(pageList, pageMap, pageInfo);
        if (m34589o < 0 || m34589o >= pageList.size()) {
            return null;
        }
        return pageList.get(m34589o);
    }

    public final int getBookPositionInt() {
        PageInfo pageInfo = this.currentPage;
        if (pageInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentPage");
            pageInfo = null;
        }
        return pageInfo.getStartPositionInt();
    }

    @NotNull
    public final LayoutChapter getChapter(@NotNull String chapterID) throws PageException {
        Intrinsics.checkNotNullParameter(chapterID, "chapterID");
        LinkedHashMap<String, LayoutChapter> linkedHashMap = this.chapterMap;
        if (linkedHashMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chapterMap");
            linkedHashMap = null;
        }
        LayoutChapter layoutChapter = linkedHashMap.get(chapterID);
        if (layoutChapter != null) {
            return layoutChapter;
        }
        throw new PageException("Not found chapter id by id: " + chapterID);
    }

    @NotNull
    public final LayoutChapter getCurrentChapter() {
        LayoutChapter layoutChapter = this.currentChapter;
        if (layoutChapter != null) {
            return layoutChapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
        return null;
    }

    @NotNull
    public final PageInfo getCurrentPage() {
        PageInfo pageInfo = this.currentPage;
        if (pageInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentPage");
            pageInfo = null;
        }
        if (pageInfo.getPageNumber() < 0) {
            PageInfo pageInfo2 = this.currentPage;
            if (pageInfo2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentPage");
                pageInfo2 = null;
            }
            gotoPage(pageInfo2);
        }
        PageInfo pageInfo3 = this.currentPage;
        if (pageInfo3 != null) {
            return pageInfo3;
        }
        Intrinsics.throwUninitializedPropertyAccessException("currentPage");
        return null;
    }

    @NotNull
    public final Chapter getNextScreenChapter() throws ReaderException {
        LayoutChapter layoutChapter = null;
        if (!m34588n()) {
            LayoutChapter layoutChapter2 = this.currentChapter;
            if (layoutChapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            } else {
                layoutChapter = layoutChapter2;
            }
            return layoutChapter.getChapter();
        }
        LayoutChapter layoutChapter3 = this.currentChapter;
        if (layoutChapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            layoutChapter3 = null;
        }
        if (layoutChapter3.getChapter().isLastChapter()) {
            throw new ReaderException(new PageException("is last chapter"));
        }
        LayoutChapter layoutChapter4 = this.currentChapter;
        if (layoutChapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
        } else {
            layoutChapter = layoutChapter4;
        }
        return m34583i(layoutChapter.getChapter().getNextSiblingId()).getChapter();
    }

    public final int getPageNumberOfPosition(@NotNull PinPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        PositionHandler positionHandler = PositionHandler.INSTANCE;
        LinkedHashMap<String, LayoutChapter> linkedHashMap = this.chapterMap;
        if (linkedHashMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chapterMap");
            linkedHashMap = null;
        }
        return positionHandler.getPageNumberOfPosition(position, linkedHashMap);
    }

    @NotNull
    public final PinPosition getPositionOfPageNumber(int pageNumber) {
        PositionHandler positionHandler = PositionHandler.INSTANCE;
        LinkedHashMap<String, LayoutChapter> linkedHashMap = this.chapterMap;
        if (linkedHashMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chapterMap");
            linkedHashMap = null;
        }
        return positionHandler.getPositionOfPageNumber(pageNumber, linkedHashMap);
    }

    @NotNull
    public final Chapter getPrevScreenChapter() throws ReaderException {
        LayoutChapter layoutChapter = null;
        if (!m34587m()) {
            LayoutChapter layoutChapter2 = this.currentChapter;
            if (layoutChapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            } else {
                layoutChapter = layoutChapter2;
            }
            return layoutChapter.getChapter();
        }
        LayoutChapter layoutChapter3 = this.currentChapter;
        if (layoutChapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            layoutChapter3 = null;
        }
        if (layoutChapter3.getChapter().isFirstChapter()) {
            throw new ReaderException(new PageException("is first chapter"));
        }
        LayoutChapter layoutChapter4 = this.currentChapter;
        if (layoutChapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
        } else {
            layoutChapter = layoutChapter4;
        }
        return m34583i(layoutChapter.getChapter().getPrevSiblingID()).getChapter();
    }

    public final int getTotalPage() {
        PositionHandler positionHandler = PositionHandler.INSTANCE;
        LinkedHashMap<String, LayoutChapter> linkedHashMap = this.chapterMap;
        if (linkedHashMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chapterMap");
            linkedHashMap = null;
        }
        return positionHandler.getTotalPage(linkedHashMap);
    }

    @Nullable
    public final PageInfo gotoPage(@NotNull PageInfo page) throws Exception {
        Intrinsics.checkNotNullParameter(page, "page");
        m34591r(page);
        PageInfo m34586l = m34586l(page);
        if (m34586l == null) {
            return null;
        }
        m34592s(m34586l);
        this.currentPage = m34586l;
        return m34586l;
    }

    /* renamed from: h */
    public final LayoutChapter m34582h(PageInfo pageInfo) throws PageException {
        String startChapterID = pageInfo.getStartChapterID();
        LinkedHashMap<String, LayoutChapter> linkedHashMap = null;
        if (!(startChapterID == null || startChapterID.length() == 0)) {
            LinkedHashMap<String, LayoutChapter> linkedHashMap2 = this.chapterMap;
            if (linkedHashMap2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chapterMap");
            } else {
                linkedHashMap = linkedHashMap2;
            }
            return linkedHashMap.get(pageInfo.getStartChapterID());
        }
        int startPositionInt = pageInfo.getStartPositionInt();
        LinkedHashMap<String, LayoutChapter> linkedHashMap3 = this.chapterMap;
        if (linkedHashMap3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chapterMap");
        } else {
            linkedHashMap = linkedHashMap3;
        }
        Iterator<Map.Entry<String, LayoutChapter>> it2 = linkedHashMap.entrySet().iterator();
        while (it2.hasNext()) {
            LayoutChapter value = it2.next().getValue();
            if (value.getChapter().contains(startPositionInt)) {
                return value;
            }
        }
        throw new PageException("Not found chapter by position: " + startPositionInt);
    }

    public final boolean hitPageCache(@NotNull PinPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        LinkedHashMap<String, LayoutChapter> linkedHashMap = this.chapterMap;
        if (linkedHashMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chapterMap");
            linkedHashMap = null;
        }
        LayoutChapter layoutChapter = linkedHashMap.get(position.getChapterID());
        return (layoutChapter == null || !layoutChapter.isPaginationComplete() || m34581g(layoutChapter.getLayoutList(), layoutChapter.getLayoutMap(), new PageInfo(new PageRange(position))) == null) ? false : true;
    }

    /* renamed from: i */
    public final LayoutChapter m34583i(int index) throws PageException {
        LinkedHashMap<String, LayoutChapter> linkedHashMap = this.chapterMap;
        if (linkedHashMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chapterMap");
            linkedHashMap = null;
        }
        Iterator<Map.Entry<String, LayoutChapter>> it2 = linkedHashMap.entrySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            LayoutChapter value = it2.next().getValue();
            int i2 = i + 1;
            if (i == index) {
                return value;
            }
            i = i2;
        }
        throw new PageException("Not found chapter by index: " + index);
    }

    /* renamed from: j */
    public final PageInfo m34584j(PageInfo currentPage) {
        LayoutChapter layoutChapter = this.currentChapter;
        LayoutChapter layoutChapter2 = null;
        if (layoutChapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            layoutChapter = null;
        }
        List<PageInfo> layoutList = layoutChapter.getLayoutList();
        LayoutChapter layoutChapter3 = this.currentChapter;
        if (layoutChapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
        } else {
            layoutChapter2 = layoutChapter3;
        }
        int m34589o = m34589o(layoutList, layoutChapter2.getLayoutMap(), currentPage);
        return (m34589o < 0 || m34589o >= layoutList.size() + (-1)) ? m34576b(this.neoNative, new PageInfo(new PageRange(currentPage.getPageRange().getEnd()))) : layoutList.get(m34589o + 1);
    }

    /* renamed from: k */
    public final PageInfo m34585k(PageInfo currentPage) {
        Object lastOrNull;
        LayoutChapter layoutChapter = this.currentChapter;
        if (layoutChapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            layoutChapter = null;
        }
        List<PageInfo> layoutList = layoutChapter.getLayoutList();
        LayoutChapter layoutChapter2 = this.currentChapter;
        if (layoutChapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            layoutChapter2 = null;
        }
        int m34589o = m34589o(layoutList, layoutChapter2.getLayoutMap(), currentPage);
        if (m34589o > 0) {
            PageInfo pageInfo = layoutList.get(m34589o);
            return pageInfo.getStartPositionInt() != currentPage.getStartPositionInt() ? pageInfo : layoutList.get(m34589o - 1);
        }
        LayoutChapter layoutChapter3 = this.currentChapter;
        if (layoutChapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            layoutChapter3 = null;
        }
        if (layoutChapter3.isPaginationComplete()) {
            StringBuilder sb = new StringBuilder();
            sb.append("PrevPage exception, current ");
            CBoxUtils cBoxUtils = CBoxUtils.INSTANCE;
            LayoutChapter layoutChapter4 = this.currentChapter;
            if (layoutChapter4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
                layoutChapter4 = null;
            }
            sb.append(cBoxUtils.chapterInfo(layoutChapter4.getChapter()));
            sb.append(", current ");
            sb.append(cBoxUtils.pagePositionInfo(currentPage));
            Debug.INSTANCE.m32060w(LayoutManager.class, new PageException(sb.toString()));
            return null;
        }
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) layoutList);
        PageInfo pageInfo2 = (PageInfo) lastOrNull;
        Debug debug = Debug.INSTANCE;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Haven't paginated here yet, current ");
        CBoxUtils cBoxUtils2 = CBoxUtils.INSTANCE;
        LayoutChapter layoutChapter5 = this.currentChapter;
        if (layoutChapter5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            layoutChapter5 = null;
        }
        sb2.append(cBoxUtils2.chapterInfo(layoutChapter5.getChapter()));
        sb2.append(", current ");
        sb2.append(cBoxUtils2.pagePositionInfo(currentPage));
        sb2.append("，last ");
        sb2.append(cBoxUtils2.pagePositionInfo(pageInfo2));
        debug.m32059w(LayoutManager.class, sb2.toString(), new Object[0]);
        return null;
    }

    /* renamed from: l */
    public final PageInfo m34586l(PageInfo pageInfo) {
        PageInfo m34580f = m34580f(pageInfo);
        return m34580f == null ? m34576b(this.neoNative, pageInfo) : m34580f;
    }

    @NotNull
    public final PageInfo layoutCurrentPage() {
        m34577c();
        NeoBaseNative neoBaseNative = this.neoNative;
        PageInfo pageInfo = this.currentPage;
        if (pageInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentPage");
            pageInfo = null;
        }
        PageInfo gotoPage = neoBaseNative.gotoPage(pageInfo);
        Intrinsics.checkNotNull(gotoPage);
        m34592s(gotoPage);
        this.currentPage = gotoPage;
        return gotoPage;
    }

    @NotNull
    public final PageInfo layoutPage(@NotNull NeoBaseNative neoNative, @NotNull PageInfo pageInfo, boolean verifyPageRange) {
        Intrinsics.checkNotNullParameter(neoNative, "neoNative");
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        m34577c();
        PageInfo gotoPage = neoNative.gotoPage(pageInfo);
        if (gotoPage != null) {
            if (verifyPageRange) {
                m34579e(pageInfo, gotoPage);
            }
            m34578d(gotoPage, false);
            return gotoPage;
        }
        throw new PageException("native goto page[" + pageInfo.getStartChapterID() + '-' + pageInfo.getStartPositionInt() + "] failed");
    }

    /* renamed from: m */
    public final boolean m34587m() {
        PageInfo pageInfo = this.currentPage;
        LayoutChapter layoutChapter = null;
        if (pageInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentPage");
            pageInfo = null;
        }
        int startPositionInt = pageInfo.getStartPositionInt();
        LayoutChapter layoutChapter2 = this.currentChapter;
        if (layoutChapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
        } else {
            layoutChapter = layoutChapter2;
        }
        return startPositionInt <= layoutChapter.getChapter().getStartPos();
    }

    /* renamed from: n */
    public final boolean m34588n() {
        PageInfo pageInfo = this.currentPage;
        LayoutChapter layoutChapter = null;
        if (pageInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentPage");
            pageInfo = null;
        }
        int endPositionInt = pageInfo.getEndPositionInt();
        LayoutChapter layoutChapter2 = this.currentChapter;
        if (layoutChapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
        } else {
            layoutChapter = layoutChapter2;
        }
        return endPositionInt >= layoutChapter.getChapter().getEndPos();
    }

    @Nullable
    public final PageInfo nextPage() throws Exception {
        if (!m34588n()) {
            PageInfo pageInfo = this.currentPage;
            if (pageInfo == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentPage");
                pageInfo = null;
            }
            PageInfo m34584j = m34584j(pageInfo);
            if (m34584j == null) {
                return null;
            }
            m34592s(m34584j);
            this.currentPage = m34584j;
            return m34584j;
        }
        LayoutChapter layoutChapter = this.currentChapter;
        if (layoutChapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            layoutChapter = null;
        }
        if (layoutChapter.getChapter().isLastChapter()) {
            throw new PageException("No next page");
        }
        LayoutChapter layoutChapter2 = this.currentChapter;
        if (layoutChapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            layoutChapter2 = null;
        }
        LayoutChapter m34583i = m34583i(layoutChapter2.getChapter().getNextSiblingId());
        m34590q(m34583i);
        PageInfo m34586l = m34586l(new PageInfo(m34583i.getChapter()));
        if (m34586l == null) {
            return null;
        }
        m34592s(m34586l);
        this.currentPage = m34586l;
        return m34586l;
    }

    /* renamed from: o */
    public final int m34589o(List<? extends PageInfo> pageList, Map<Integer, ? extends PageInfo> pageMap, PageInfo pageInfo) {
        PageInfo pageInfo2 = pageMap.get(Integer.valueOf(pageInfo.getStartPositionInt()));
        if (!(pageInfo2 != null)) {
            final LayoutManager$searchPage$1 layoutManager$searchPage$1 = new Function2<PageInfo, PageInfo, Integer>() { // from class: com.onyx.android.sdk.reader.cbox.page.LayoutManager$searchPage$1
                @Override // kotlin.jvm.functions.Function2
                @NotNull
                public final Integer invoke(@NotNull PageInfo value, @NotNull PageInfo key) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    Intrinsics.checkNotNullParameter(key, "key");
                    return Integer.valueOf(value.compare(key.getPageRange().getStart()));
                }
            };
            return Collections.binarySearch(pageList, pageInfo, new Comparator() { // from class: com.sunia.HTREnginev2.pwi
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m34575p;
                    m34575p = LayoutManager.m34575p(Function2.this, obj, obj2);
                    return m34575p;
                }
            });
        }
        int indexOf = pageList.indexOf(pageInfo2);
        if (indexOf >= 0) {
            return indexOf;
        }
        throw new PageException("PageList not match PageMap");
    }

    @Nullable
    public final PageInfo prevPage() throws Exception {
        Object last;
        if (!m34587m()) {
            PageInfo pageInfo = this.currentPage;
            if (pageInfo == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentPage");
                pageInfo = null;
            }
            PageInfo m34585k = m34585k(pageInfo);
            if (m34585k == null) {
                return null;
            }
            m34592s(m34585k);
            this.currentPage = m34585k;
            return m34585k;
        }
        LayoutChapter layoutChapter = this.currentChapter;
        if (layoutChapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            layoutChapter = null;
        }
        if (layoutChapter.getChapter().isFirstChapter()) {
            throw new PageException("No prev page");
        }
        LayoutChapter layoutChapter2 = this.currentChapter;
        if (layoutChapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            layoutChapter2 = null;
        }
        LayoutChapter m34583i = m34583i(layoutChapter2.getChapter().getPrevSiblingID());
        m34590q(m34583i);
        List<PageInfo> layoutList = m34583i.getLayoutList();
        if (layoutList.isEmpty()) {
            return null;
        }
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) layoutList);
        PageInfo pageInfo2 = (PageInfo) last;
        if (pageInfo2.getEndPositionInt() == m34583i.getChapter().getEndPos()) {
            m34592s(pageInfo2);
            this.currentPage = pageInfo2;
            return pageInfo2;
        }
        PageInfo m34586l = m34586l(new PageInfo(m34583i.getChapter()));
        if (m34586l == null) {
            return null;
        }
        m34592s(m34586l);
        this.currentPage = m34586l;
        return m34586l;
    }

    /* renamed from: q */
    public final void m34590q(LayoutChapter chapter) {
        LayoutChapter layoutChapter = this.currentChapter;
        if (layoutChapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            layoutChapter = null;
        }
        if (Intrinsics.areEqual(layoutChapter, chapter)) {
            return;
        }
        this.currentChapter = chapter;
    }

    /* renamed from: r */
    public final void m34591r(PageInfo page) {
        LayoutChapter layoutChapter = this.currentChapter;
        if (layoutChapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
            layoutChapter = null;
        }
        if (layoutChapter.getChapter().getPlayOrder() != page.getStartChapterIndex()) {
            LayoutChapter m34582h = m34582h(page);
            if (m34582h != null) {
                m34590q(m34582h);
                return;
            }
            throw new PageException("goto chapter: " + page.getStartChapterID() + ", position " + CBoxUtils.INSTANCE.pagePositionInfo(page));
        }
    }

    /* renamed from: s */
    public final void m34592s(PageInfo pageInfo) {
        PinPosition start = pageInfo.getPageRange().getStart();
        Intrinsics.checkNotNullExpressionValue(start, "getStart(...)");
        pageInfo.setPageNumber(getPageNumberOfPosition(start));
        pageInfo.setTotalPage(getTotalPage());
    }

    public final void setChapter(@NotNull LinkedHashMap<String, LayoutChapter> chapterMap) {
        Object first;
        Intrinsics.checkNotNullParameter(chapterMap, "chapterMap");
        this.chapterMap = chapterMap;
        LayoutChapter layoutChapter = null;
        if (chapterMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chapterMap");
            chapterMap = null;
        }
        Collection<LayoutChapter> values = chapterMap.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        first = CollectionsKt___CollectionsKt.first(values);
        LayoutChapter layoutChapter2 = (LayoutChapter) first;
        this.currentChapter = layoutChapter2;
        if (layoutChapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentChapter");
        } else {
            layoutChapter = layoutChapter2;
        }
        PageInfo pageInfo = new PageInfo(layoutChapter.getChapter());
        this.currentPage = pageInfo;
        pageInfo.setPageNumber(-1);
    }

    public final void setPaginationChapter(@NotNull PaginateChapter chapter) {
        Intrinsics.checkNotNullParameter(chapter, "chapter");
        LinkedHashMap<String, PaginateChapter> linkedHashMap = this.paginationChapterMap;
        String chapterId = chapter.getChapter().getChapterId();
        Intrinsics.checkNotNullExpressionValue(chapterId, "getChapterId(...)");
        linkedHashMap.put(chapterId, chapter);
    }

    /* renamed from: t */
    public final void m34593t(PageInfo pageInfo) {
        PageInfo pageInfo2 = this.currentPage;
        PageInfo pageInfo3 = null;
        if (pageInfo2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentPage");
            pageInfo2 = null;
        }
        if (pageInfo2.getPageRange().getStart().getXpath() == null) {
            PageInfo pageInfo4 = this.currentPage;
            if (pageInfo4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentPage");
                pageInfo4 = null;
            }
            pageInfo4.getPageRange().getStart().setXpath(pageInfo.getPageRange().getStart().getXpath());
            PageInfo pageInfo5 = this.currentPage;
            if (pageInfo5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentPage");
            } else {
                pageInfo3 = pageInfo5;
            }
            pageInfo3.getPageRange().getEnd().setXpath(pageInfo.getPageRange().getEnd().getXpath());
        }
    }

    public final void updateReaderPageInfo(@NotNull String chapterId) {
        Intrinsics.checkNotNullParameter(chapterId, "chapterId");
        PaginateChapter remove = this.paginationChapterMap.remove(chapterId);
        if (remove == null) {
            return;
        }
        LayoutChapter chapter = getChapter(chapterId);
        chapter.setLayoutPageList(remove.getPageList());
        chapter.getIsChapterLastPage().set(remove.isPaginationComplete());
    }

    public final void updateStyle(@NotNull LinkedHashMap<String, PaginateChapter> paginateChapterMap) {
        Intrinsics.checkNotNullParameter(paginateChapterMap, "paginateChapterMap");
        PageInfo pageInfo = this.currentPage;
        if (pageInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentPage");
            pageInfo = null;
        }
        pageInfo.setPageNumber(-1);
        for (Map.Entry<String, PaginateChapter> entry : paginateChapterMap.entrySet()) {
            LinkedHashMap<String, LayoutChapter> linkedHashMap = this.chapterMap;
            if (linkedHashMap == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chapterMap");
                linkedHashMap = null;
            }
            LayoutChapter layoutChapter = linkedHashMap.get(entry.getKey());
            Intrinsics.checkNotNull(layoutChapter);
            LayoutChapter layoutChapter2 = layoutChapter;
            if (entry.getValue().isPaginationComplete()) {
                layoutChapter2.getIsChapterLastPage().set(true);
                layoutChapter2.setLayoutPageList(entry.getValue().getPageList());
            } else {
                layoutChapter2.reset();
            }
        }
    }

    public final void updateTocPageNumber(@NotNull ReaderDocumentTableOfContent toc) {
        Intrinsics.checkNotNullParameter(toc, "toc");
        PositionHandler positionHandler = PositionHandler.INSTANCE;
        LinkedHashMap<String, LayoutChapter> linkedHashMap = this.chapterMap;
        if (linkedHashMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chapterMap");
            linkedHashMap = null;
        }
        positionHandler.updateTocPageNumber(toc, linkedHashMap);
    }
}
