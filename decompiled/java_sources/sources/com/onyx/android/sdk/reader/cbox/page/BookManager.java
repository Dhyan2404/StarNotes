package com.onyx.android.sdk.reader.cbox.page;

import android.graphics.Bitmap;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.reader.api.PaginationChapterInfo;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContent;
import com.onyx.android.sdk.reader.api.ReaderException;
import com.onyx.android.sdk.reader.api.ReaderPageProgressionDirection;
import com.onyx.android.sdk.reader.cbox.exception.PageException;
import com.onyx.android.sdk.reader.cbox.utils.CBoxUtils;
import com.onyx.engine.sdk.BookOpenResult;
import com.onyx.engine.sdk.Chapter;
import com.onyx.engine.sdk.DisplayMetrics;
import com.onyx.engine.sdk.HandleErrorCode;
import com.onyx.engine.sdk.NeoBaseNative;
import com.onyx.engine.sdk.OpenOptions;
import com.onyx.engine.sdk.PageInfo;
import com.onyx.engine.sdk.PageProgressionDirection;
import com.onyx.engine.sdk.PinPosition;
import com.onyx.engine.sdk.ReaderTextStyle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.math3.linear.SymmLQ;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Ø\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010f\u001a\u00020d\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0006\b\u0092\u0001\u0010\u0093\u0001J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J \u0010\f\u001a\u00020\u000b2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002J\u0016\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0013J\u0016\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0007J\u000e\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u0019J\u000e\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001cJ\u000e\u0010!\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001fJ\u0018\u0010#\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u0006\u0010$\u001a\u00020\u0013J\u0006\u0010&\u001a\u00020%J\u0006\u0010(\u001a\u00020'J\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u000f0)J\f\u0010-\u001a\b\u0012\u0004\u0012\u00020,0+J\u0006\u0010/\u001a\u00020.J\u0006\u00100\u001a\u00020.J\u0006\u00101\u001a\u00020,J\u0006\u00102\u001a\u00020\u0005J\u0006\u00103\u001a\u00020\u0005J\u0006\u00104\u001a\u00020\u0005J\u0010\u00106\u001a\u0004\u0018\u00010.2\u0006\u00105\u001a\u00020.J\b\u00107\u001a\u0004\u0018\u00010.J\b\u00108\u001a\u0004\u0018\u00010.J\u000e\u0010;\u001a\u00020.2\u0006\u0010:\u001a\u000209J\u000e\u0010=\u001a\u00020\u00032\u0006\u0010<\u001a\u00020\u0007J\u000e\u0010=\u001a\u00020\u00032\u0006\u0010>\u001a\u00020\u000fJ\u000e\u0010?\u001a\u00020\u000b2\u0006\u0010<\u001a\u00020'J\u0006\u0010@\u001a\u00020\u0007J\u000e\u0010B\u001a\u00020'2\u0006\u0010A\u001a\u00020\u0007J\u000e\u0010C\u001a\u00020\u00072\u0006\u0010<\u001a\u00020'J\u000e\u0010F\u001a\u00020\u00052\u0006\u0010E\u001a\u00020DJ\u000e\u0010(\u001a\u00020'2\u0006\u0010G\u001a\u00020\u000fJ\u0006\u0010H\u001a\u00020\u0007J\u000e\u0010I\u001a\u00020\u000f2\u0006\u0010<\u001a\u00020\u0007J\u0010\u0010J\u001a\u0004\u0018\u00010\u000f2\u0006\u0010<\u001a\u00020\u0007J\u0006\u0010K\u001a\u00020\u0003J\u0006\u0010L\u001a\u00020\u0003J\u000e\u0010O\u001a\u00020\u000b2\u0006\u0010N\u001a\u00020MJ\u0010\u0010Q\u001a\u0004\u0018\u00010P2\u0006\u0010N\u001a\u00020MJ\u000e\u0010R\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\u000fJ\u0006\u0010S\u001a\u00020\u000bJ\u0006\u0010T\u001a\u00020\u000bJ\u0006\u0010U\u001a\u00020\u001fJ\u0006\u0010V\u001a\u00020\u000fJ\u0006\u0010W\u001a\u00020\u000fJ\u0006\u0010X\u001a\u00020\u000bJ\u0006\u0010Y\u001a\u00020\u0005J\u000e\u0010[\u001a\u00020\u00052\u0006\u0010Z\u001a\u00020\u000bJ\u0006\u0010\\\u001a\u00020\u000bJ\u0006\u0010]\u001a\u00020\u000bJ\u0006\u0010^\u001a\u00020\u0005J\u000e\u0010_\u001a\u00020\u00052\u0006\u0010>\u001a\u00020\u000fJ\u0018\u0010a\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030)0`J\u0006\u0010b\u001a\u00020\u0005J\u0006\u0010c\u001a\u00020\u0005R\u0014\u0010f\u001a\u00020d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010eR\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010gR \u0010k\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020,0h8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bi\u0010jR\u0014\u0010n\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bl\u0010mR\u0016\u0010q\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010pR\u0014\u0010u\u001a\u00020r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bs\u0010tR\u0014\u0010y\u001a\u00020v8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bw\u0010xR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bz\u0010{R&\u0010\u0083\u0001\u001a\u00020|8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0004\b}\u0010~\u001a\u0005\b\u007f\u0010\u0080\u0001\"\u0006\b\u0081\u0001\u0010\u0082\u0001R*\u0010\u0085\u0001\u001a\u00030\u0084\u00018\u0006@\u0006X\u0086.¢\u0006\u0018\n\u0006\b\u0085\u0001\u0010\u0086\u0001\u001a\u0006\b\u0087\u0001\u0010\u0088\u0001\"\u0006\b\u0089\u0001\u0010\u008a\u0001R)\u0010\u0091\u0001\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u008b\u0001\u0010\u008c\u0001\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001\"\u0006\b\u008f\u0001\u0010\u0090\u0001¨\u0006\u0094\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/page/BookManager;", "", "", "Lcom/onyx/engine/sdk/Chapter;", "chapters", "", "b", "", "list", "", "colorTable", "", "a", "Lcom/onyx/engine/sdk/OpenOptions;", "options", "", "bookKeyCode", "Lcom/onyx/engine/sdk/BookOpenResult;", "open", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;", "style", "setStyle", "width", "height", "setViewSize", "Lcom/onyx/engine/sdk/DisplayMetrics;", "displayMetrics", "setupDisplayMetrics", "Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;", "convertType", "setChineseConvertType", "", "gamma", "setTextGamma", SymmLQ.f108603e, "setFontEnhancement", "getStyle", "Lcom/onyx/engine/sdk/ReaderTextStyle;", "getEngineStyle", "Lcom/onyx/engine/sdk/PinPosition;", "getInitPosition", "", "getChapterIdList", "", "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;", "getChapterList", "Lcom/onyx/engine/sdk/PageInfo;", "getCurrentPage", "layoutCurrentPage", "getCurrentChapter", "updateReadTextStyle", "updateDisplayMetrics", "updateStyle", "page", "gotoPage", "prevPage", "nextPage", "Landroid/graphics/Bitmap;", "bitmap", "drawPage", "position", "getChapter", "chapterId", "hitPageCache", "getTotalPage", CouchFieldKey.KEY_PAGE_NUMBER, "getPositionOfPageNumber", "getPageNumberOfPosition", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", SyncConstant.LOCAL_TOC_DIR_NAME, "updateTocPageNumber", "chapterID", "getBookPositionInt", "getChapterID", "getChapterName", "getNextScreenChapter", "getPrevScreenChapter", "Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;", PrivilegedApp.f6532i, "hasPaginationNext", "Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;", "paginationNext", "isPaginationComplete", "isAllPaginationComplete", "isCurrentChapterPaginationComplete", "getPaginationProgress", "getStyleHashKey", "getScreenDataHashKey", "onPaginationStart", "onPaginationFinally", "abort", "setAbortPagination", "isAbortPagination", "isNeedClearPaginationCache", "clearPaginationCache", "updateReaderPageInfo", "", "getChaptersGroupByPath", "close", "destroy", "Lcom/onyx/engine/sdk/NeoBaseNative;", "Lcom/onyx/engine/sdk/NeoBaseNative;", "neoNative", "Lcom/onyx/engine/sdk/DisplayMetrics;", "Ljava/util/LinkedHashMap;", "c", "Ljava/util/LinkedHashMap;", "chapterMap", "d", "Lcom/onyx/engine/sdk/ReaderTextStyle;", "engineTextStyle", "e", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;", "readerTextStyle", "Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;", C6997f.f39671c, "Lcom/onyx/android/sdk/reader/cbox/page/LayoutManager;", "layoutManager", "Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;", C6998g.f39679a, "Lcom/onyx/android/sdk/reader/cbox/page/PaginateManager;", "paginateManager", C6999h.f39688c, Constants.STRING_SIG, "Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;", "i", "Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;", "getDirection", "()Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;", "setDirection", "(Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;)V", "direction", "Lcom/onyx/engine/sdk/Metadata;", "metadata", "Lcom/onyx/engine/sdk/Metadata;", "getMetadata", "()Lcom/onyx/engine/sdk/Metadata;", "setMetadata", "(Lcom/onyx/engine/sdk/Metadata;)V", "j", Constants.HASIDCALL_INDEX_SIG, "getCanBuy", Constants.BOOLEAN_VALUE_SIG, "setCanBuy", "(Z)V", "canBuy", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/engine/sdk/DisplayMetrics;)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class BookManager {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final NeoBaseNative neoNative;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final DisplayMetrics displayMetrics;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final LinkedHashMap<String, LayoutChapter> chapterMap;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final ReaderTextStyle engineTextStyle;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public com.onyx.android.sdk.reader.api.ReaderTextStyle readerTextStyle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final LayoutManager layoutManager;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final PaginateManager paginateManager;

    /* renamed from: h, reason: from kotlin metadata */
    public String bookKeyCode;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public ReaderPageProgressionDirection direction;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean canBuy;
    public com.onyx.engine.sdk.Metadata metadata;

    public BookManager(@NotNull NeoBaseNative neoNative, @NotNull DisplayMetrics displayMetrics) {
        Intrinsics.checkNotNullParameter(neoNative, "neoNative");
        Intrinsics.checkNotNullParameter(displayMetrics, "displayMetrics");
        this.neoNative = neoNative;
        this.displayMetrics = displayMetrics;
        this.chapterMap = new LinkedHashMap<>();
        ReaderTextStyle readerTextStyle = new ReaderTextStyle();
        this.engineTextStyle = readerTextStyle;
        this.readerTextStyle = com.onyx.android.sdk.reader.api.ReaderTextStyle.INSTANCE.defaultStyle();
        this.layoutManager = new LayoutManager(neoNative);
        this.paginateManager = new PaginateManager(neoNative, displayMetrics, readerTextStyle);
        this.direction = ReaderPageProgressionDirection.LTR;
    }

    /* renamed from: a */
    public final boolean m34565a(List<Integer> list, int[] colorTable) {
        int[] intArray;
        if (colorTable == null) {
            return list.isEmpty();
        }
        if (colorTable.length != list.size()) {
            return false;
        }
        intArray = CollectionsKt___CollectionsKt.toIntArray(list);
        return Arrays.equals(intArray, colorTable);
    }

    /* renamed from: b */
    public final void m34566b(List<? extends Chapter> chapters) {
        this.chapterMap.clear();
        for (Chapter chapter : chapters) {
            LinkedHashMap<String, LayoutChapter> linkedHashMap = this.chapterMap;
            String chapterId = chapter.getChapterId();
            Intrinsics.checkNotNullExpressionValue(chapterId, "getChapterId(...)");
            linkedHashMap.put(chapterId, new LayoutChapter(chapter));
            if (!chapter.isBuy()) {
                this.canBuy = true;
            }
        }
    }

    public final void clearPaginationCache() throws Exception {
        this.paginateManager.clearPaginationCache();
        updateStyle();
    }

    public final void close() throws Exception {
        this.layoutManager.close();
        this.paginateManager.close();
        this.neoNative.abortSearch();
        this.neoNative.close();
        this.chapterMap.clear();
    }

    public final void destroy() {
        this.neoNative.abortSearch();
    }

    @NotNull
    public final PageInfo drawPage(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return this.layoutManager.drawPage(bitmap);
    }

    public final int getBookPositionInt() {
        return this.layoutManager.getBookPositionInt();
    }

    public final boolean getCanBuy() {
        return this.canBuy;
    }

    @NotNull
    public final Chapter getChapter(int position) throws PageException {
        Iterator<Map.Entry<String, LayoutChapter>> it2 = this.chapterMap.entrySet().iterator();
        while (it2.hasNext()) {
            LayoutChapter value = it2.next().getValue();
            if (value.getChapter().contains(position)) {
                return value.getChapter();
            }
        }
        throw new PageException("Not found chapter by position: " + position);
    }

    @NotNull
    public final String getChapterID(int position) throws PageException {
        Iterator<Map.Entry<String, LayoutChapter>> it2 = this.chapterMap.entrySet().iterator();
        while (it2.hasNext()) {
            LayoutChapter value = it2.next().getValue();
            if (value.getChapter().contains(position)) {
                String chapterId = value.getChapter().getChapterId();
                Intrinsics.checkNotNullExpressionValue(chapterId, "getChapterId(...)");
                return chapterId;
            }
        }
        throw new PageException("Not found chapter id by position: " + position);
    }

    @NotNull
    public final List<String> getChapterIdList() {
        List<String> mutableList;
        Set<String> keySet = this.chapterMap.keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) keySet);
        return mutableList;
    }

    @NotNull
    public final Collection<LayoutChapter> getChapterList() {
        Collection<LayoutChapter> values = this.chapterMap.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        return values;
    }

    @Nullable
    public final String getChapterName(int position) throws PageException {
        Iterator<Map.Entry<String, LayoutChapter>> it2 = this.chapterMap.entrySet().iterator();
        while (it2.hasNext()) {
            LayoutChapter value = it2.next().getValue();
            if (value.getChapter().contains(position)) {
                return value.getChapter().getChapterName();
            }
        }
        throw new PageException("Not found chapter name by position: " + position);
    }

    @NotNull
    public final Map<String, List<Chapter>> getChaptersGroupByPath() {
        HashMap hashMap = new HashMap();
        for (LayoutChapter layoutChapter : this.chapterMap.values()) {
            List list = (List) hashMap.get(layoutChapter.getChapter().getBasePath());
            if (list == null) {
                list = new ArrayList();
                String basePath = layoutChapter.getChapter().getBasePath();
                Intrinsics.checkNotNullExpressionValue(basePath, "getBasePath(...)");
                hashMap.put(basePath, list);
            }
            list.add(layoutChapter.getChapter());
        }
        return hashMap;
    }

    @NotNull
    public final LayoutChapter getCurrentChapter() {
        return this.layoutManager.getCurrentChapter();
    }

    @NotNull
    public final PageInfo getCurrentPage() {
        return this.layoutManager.getCurrentPage();
    }

    @NotNull
    public final ReaderPageProgressionDirection getDirection() {
        return this.direction;
    }

    @NotNull
    /* renamed from: getEngineStyle, reason: from getter */
    public final ReaderTextStyle getEngineTextStyle() {
        return this.engineTextStyle;
    }

    @NotNull
    public final PinPosition getInitPosition() {
        Object first;
        Collection<LayoutChapter> values = this.chapterMap.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        first = CollectionsKt___CollectionsKt.first(values);
        return new PinPosition(((LayoutChapter) first).getChapter());
    }

    @NotNull
    public final com.onyx.engine.sdk.Metadata getMetadata() {
        com.onyx.engine.sdk.Metadata metadata = this.metadata;
        if (metadata != null) {
            return metadata;
        }
        Intrinsics.throwUninitializedPropertyAccessException("metadata");
        return null;
    }

    @NotNull
    public final Chapter getNextScreenChapter() throws ReaderException {
        return this.layoutManager.getNextScreenChapter();
    }

    public final int getPageNumberOfPosition(@NotNull PinPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.layoutManager.getPageNumberOfPosition(position);
    }

    public final float getPaginationProgress() {
        return this.paginateManager.getPaginationProgress();
    }

    @NotNull
    public final PinPosition getPositionOfPageNumber(int pageNumber) {
        return this.layoutManager.getPositionOfPageNumber(pageNumber);
    }

    @NotNull
    public final Chapter getPrevScreenChapter() throws ReaderException {
        return this.layoutManager.getPrevScreenChapter();
    }

    @NotNull
    public final String getScreenDataHashKey() {
        return String.valueOf((this.engineTextStyle.getLayoutStyle() + this.displayMetrics.getLayoutStyle() + this.engineTextStyle.getAlignment() + this.direction).hashCode());
    }

    @NotNull
    /* renamed from: getStyle, reason: from getter */
    public final com.onyx.android.sdk.reader.api.ReaderTextStyle getReaderTextStyle() {
        return this.readerTextStyle;
    }

    @NotNull
    public final String getStyleHashKey() {
        return this.paginateManager.getStyleHashKey();
    }

    public final int getTotalPage() {
        return this.layoutManager.getTotalPage();
    }

    @Nullable
    public final PageInfo gotoPage(@NotNull PageInfo page) throws Exception {
        Intrinsics.checkNotNullParameter(page, "page");
        return this.layoutManager.gotoPage(page);
    }

    public final boolean hasPaginationNext(@NotNull PaginationChapterInfo info) throws Exception {
        Intrinsics.checkNotNullParameter(info, "info");
        return this.paginateManager.hasPaginationNext(info);
    }

    public final boolean hitPageCache(@NotNull PinPosition position) throws Exception {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.layoutManager.hitPageCache(position);
    }

    public final boolean isAbortPagination() {
        return this.paginateManager.isAbortPagination();
    }

    public final boolean isAllPaginationComplete() {
        return this.paginateManager.isAllPaginationComplete();
    }

    public final boolean isCurrentChapterPaginationComplete() {
        return this.layoutManager.getCurrentChapter().isPaginationComplete();
    }

    public final boolean isNeedClearPaginationCache() throws Exception {
        return this.paginateManager.isNeedClearPaginationCache();
    }

    public final boolean isPaginationComplete(@NotNull String chapterID) {
        Intrinsics.checkNotNullParameter(chapterID, "chapterID");
        return this.paginateManager.isPaginationComplete(chapterID);
    }

    @NotNull
    public final PageInfo layoutCurrentPage() {
        return this.layoutManager.layoutCurrentPage();
    }

    @Nullable
    public final PageInfo nextPage() throws Exception {
        return this.layoutManager.nextPage();
    }

    public final void onPaginationFinally() {
        this.paginateManager.onPaginationFinally();
    }

    public final boolean onPaginationStart() {
        return this.paginateManager.onPaginationStart();
    }

    @NotNull
    public final BookOpenResult open(@NotNull OpenOptions options, @NotNull String bookKeyCode) {
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(bookKeyCode, "bookKeyCode");
        this.bookKeyCode = bookKeyCode;
        BookOpenResult open = this.neoNative.open(options);
        if (open.getErr() == HandleErrorCode.OK) {
            this.neoNative.setReaderTextStyle(this.engineTextStyle);
            this.neoNative.setupDisplayMetrics(this.displayMetrics);
            this.paginateManager.setBookKeyCode(bookKeyCode);
            CBoxUtils cBoxUtils = CBoxUtils.INSTANCE;
            PageProgressionDirection direction = this.neoNative.getDirection();
            Intrinsics.checkNotNullExpressionValue(direction, "getDirection(...)");
            this.direction = cBoxUtils.convert(direction);
            com.onyx.engine.sdk.Metadata metadata = this.neoNative.getMetadata();
            Intrinsics.checkNotNullExpressionValue(metadata, "getMetadata(...)");
            setMetadata(metadata);
            List<Chapter> chapterList = this.neoNative.getChapterList();
            Intrinsics.checkNotNullExpressionValue(chapterList, "getChapterList(...)");
            m34566b(chapterList);
            this.layoutManager.setChapter(this.chapterMap);
            this.paginateManager.setChapter(this.chapterMap);
        }
        Intrinsics.checkNotNull(open);
        return open;
    }

    @Nullable
    public final PaginationInfo paginationNext(@NotNull PaginationChapterInfo info) throws Exception {
        Intrinsics.checkNotNullParameter(info, "info");
        PaginationInfo paginationNext = this.paginateManager.paginationNext(info);
        if (paginationNext != null && paginationNext.getUpdateReaderPageInfo()) {
            this.layoutManager.setPaginationChapter(this.paginateManager.getCurrentChapter().copy());
        }
        return paginationNext;
    }

    @Nullable
    public final PageInfo prevPage() throws Exception {
        return this.layoutManager.prevPage();
    }

    public final void setAbortPagination(boolean abort) {
        this.paginateManager.setAbortPagination(abort);
    }

    public final void setCanBuy(boolean z) {
        this.canBuy = z;
    }

    public final boolean setChineseConvertType(@NotNull ReaderTextStyle.ChineseConvertType convertType) {
        Intrinsics.checkNotNullParameter(convertType, "convertType");
        if (this.engineTextStyle.getChineseConvertType() == convertType) {
            return false;
        }
        this.engineTextStyle.setChineseConvertType(convertType);
        updateReadTextStyle();
        return true;
    }

    public final void setDirection(@NotNull ReaderPageProgressionDirection readerPageProgressionDirection) {
        Intrinsics.checkNotNullParameter(readerPageProgressionDirection, "<set-?>");
        this.direction = readerPageProgressionDirection;
    }

    public final boolean setFontEnhancement(int threshold, @Nullable int[] colorTable) {
        List list;
        if (this.engineTextStyle.getThreshold() == threshold) {
            List<Integer> colorTable2 = this.engineTextStyle.getColorTable();
            Intrinsics.checkNotNullExpressionValue(colorTable2, "getColorTable(...)");
            if (m34565a(colorTable2, colorTable)) {
                return false;
            }
        }
        this.engineTextStyle.setThreshold(threshold);
        this.engineTextStyle.getColorTable().clear();
        if (colorTable != null) {
            List<Integer> colorTable3 = this.engineTextStyle.getColorTable();
            list = ArraysKt___ArraysKt.toList(colorTable);
            colorTable3.addAll(list);
        }
        updateReadTextStyle();
        return true;
    }

    public final void setMetadata(@NotNull com.onyx.engine.sdk.Metadata metadata) {
        Intrinsics.checkNotNullParameter(metadata, "<set-?>");
        this.metadata = metadata;
    }

    public final boolean setStyle(@NotNull com.onyx.android.sdk.reader.api.ReaderTextStyle style) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.readerTextStyle = style;
        int hashCode = this.engineTextStyle.hashCode();
        CBoxUtils.INSTANCE.updateReaderTextStyle(this.displayMetrics.getWidth(), this.displayMetrics.getHeight(), this.readerTextStyle, this.engineTextStyle);
        if (hashCode == this.engineTextStyle.hashCode()) {
            return false;
        }
        updateReadTextStyle();
        return true;
    }

    public final boolean setTextGamma(float gamma) {
        if (this.engineTextStyle.getTextGamma() == gamma) {
            return false;
        }
        this.engineTextStyle.setTextGamma(gamma);
        updateReadTextStyle();
        return true;
    }

    public final boolean setViewSize(int width, int height) {
        if (this.displayMetrics.getWidth() == width && this.displayMetrics.getHeight() == height) {
            return false;
        }
        this.displayMetrics.setWidth(width);
        this.displayMetrics.setHeight(height);
        updateDisplayMetrics();
        return true;
    }

    public final boolean setupDisplayMetrics(@NotNull DisplayMetrics displayMetrics) {
        Intrinsics.checkNotNullParameter(displayMetrics, "displayMetrics");
        if (Intrinsics.areEqual(this.displayMetrics, displayMetrics)) {
            return false;
        }
        this.displayMetrics.copy(displayMetrics);
        updateDisplayMetrics();
        return true;
    }

    public final void updateDisplayMetrics() {
        this.neoNative.setupDisplayMetrics(this.displayMetrics);
        updateStyle();
    }

    public final void updateReadTextStyle() {
        this.neoNative.setReaderTextStyle(this.engineTextStyle);
        updateStyle();
    }

    public final void updateReaderPageInfo(@NotNull String chapterId) {
        Intrinsics.checkNotNullParameter(chapterId, "chapterId");
        this.layoutManager.updateReaderPageInfo(chapterId);
    }

    public final void updateStyle() {
        setAbortPagination(true);
        this.paginateManager.updateStyle();
        this.layoutManager.updateStyle(this.paginateManager.getChapterMap());
    }

    public final void updateTocPageNumber(@NotNull ReaderDocumentTableOfContent toc) {
        Intrinsics.checkNotNullParameter(toc, "toc");
        this.layoutManager.updateTocPageNumber(toc);
    }

    @NotNull
    public final PinPosition getInitPosition(@NotNull String chapterID) {
        Intrinsics.checkNotNullParameter(chapterID, "chapterID");
        return new PinPosition(this.paginateManager.getChapter(chapterID).getChapter());
    }

    @NotNull
    public final Chapter getChapter(@NotNull String chapterId) throws PageException {
        Intrinsics.checkNotNullParameter(chapterId, "chapterId");
        return this.layoutManager.getChapter(chapterId).getChapter();
    }
}
