package com.onyx.android.sdk.reader.cbox.page;

import com.onyx.engine.sdk.Chapter;
import com.onyx.engine.sdk.PageInfo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b)\u0010*J\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\u0007R\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R(\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00050\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R>\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00050\u001aj\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u0005`\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0017\u0010'\u001a\u00020$8\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;", "", "", "isPaginationComplete", "", "Lcom/onyx/engine/sdk/PageInfo;", "list", "", "setLayoutPageList", "pageInfo", "addPageInfo", Constants.RESET, "Lcom/onyx/engine/sdk/Chapter;", "a", "Lcom/onyx/engine/sdk/Chapter;", "getChapter", "()Lcom/onyx/engine/sdk/Chapter;", "chapter", "", "b", "Ljava/util/List;", "getLayoutList", "()Ljava/util/List;", "setLayoutList", "(Ljava/util/List;)V", "layoutList", "Ljava/util/LinkedHashMap;", "", "Lkotlin/collections/LinkedHashMap;", "c", "Ljava/util/LinkedHashMap;", "getLayoutMap", "()Ljava/util/LinkedHashMap;", "setLayoutMap", "(Ljava/util/LinkedHashMap;)V", "layoutMap", "Ljava/util/concurrent/atomic/AtomicBoolean;", "d", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isChapterLastPage", "()Ljava/util/concurrent/atomic/AtomicBoolean;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/engine/sdk/Chapter;)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLayoutChapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutChapter.kt\ncom/onyx/android/sdk/reader/cbox/page/LayoutChapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,34:1\n1855#2,2:35\n*S KotlinDebug\n*F\n+ 1 LayoutChapter.kt\ncom/onyx/android/sdk/reader/cbox/page/LayoutChapter\n*L\n19#1:35,2\n*E\n"})
/* loaded from: classes8.dex */
public final class LayoutChapter {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Chapter chapter;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<PageInfo> layoutList;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public LinkedHashMap<Integer, PageInfo> layoutMap;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final AtomicBoolean isChapterLastPage;

    public LayoutChapter(@NotNull Chapter chapter) {
        Intrinsics.checkNotNullParameter(chapter, "chapter");
        this.chapter = chapter;
        this.layoutList = new ArrayList();
        this.layoutMap = new LinkedHashMap<>();
        this.isChapterLastPage = new AtomicBoolean(false);
    }

    public final void addPageInfo(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        this.layoutList.add(pageInfo);
        this.layoutMap.put(Integer.valueOf(pageInfo.getStartPositionInt()), pageInfo);
    }

    @NotNull
    public final Chapter getChapter() {
        return this.chapter;
    }

    @NotNull
    public final List<PageInfo> getLayoutList() {
        return this.layoutList;
    }

    @NotNull
    public final LinkedHashMap<Integer, PageInfo> getLayoutMap() {
        return this.layoutMap;
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
        this.layoutList.clear();
        this.layoutMap.clear();
        this.isChapterLastPage.set(false);
    }

    public final void setLayoutList(@NotNull List<PageInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.layoutList = list;
    }

    public final void setLayoutMap(@NotNull LinkedHashMap<Integer, PageInfo> linkedHashMap) {
        Intrinsics.checkNotNullParameter(linkedHashMap, "<set-?>");
        this.layoutMap = linkedHashMap;
    }

    public final void setLayoutPageList(@NotNull List<? extends PageInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.layoutList = new ArrayList(list);
        this.layoutMap = new LinkedHashMap<>();
        for (PageInfo pageInfo : this.layoutList) {
            this.layoutMap.put(Integer.valueOf(pageInfo.getStartPositionInt()), pageInfo);
        }
    }
}
