package com.onyx.android.sdk.note.common.document.doc;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageBean;
import com.onyx.android.sdk.note.common.document.page.NotePageHitTest;
import com.onyx.android.sdk.note.common.document.page.NotePageLoad;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.extension.NoteDocumentKt;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageNameList;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.apache.commons.collections4.map.ListOrderedMap;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010 \n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u001e\n\u0002\b\u0007\n\u0002\u0010\"\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bU\u0010VJ\u001c\u0010\b\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0014\u0010\f\u001a\u00020\u000b*\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u000e*\u00020\u00022\u0006\u0010\r\u001a\u00020\u0005J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u000e*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0003J$\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0012j\b\u0012\u0004\u0012\u00020\u0003`\u0013*\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u001a\u0010\u0018\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0003J\u0012\u0010\u0019\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0003J\u0012\u0010\u001a\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0003J\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0017*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0003J\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u0017*\u00020\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u0003J\u0014\u0010\u001d\u001a\u0004\u0018\u00010\u0003*\u00020\u00022\u0006\u0010\r\u001a\u00020\u0005J\u0012\u0010\u001e\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0003J\u0014\u0010\u001f\u001a\u0004\u0018\u00010\u0017*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0005J\u0014\u0010 \u001a\u0004\u0018\u00010\u0017*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0005J\u0014\u0010!\u001a\u0004\u0018\u00010\u0017*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0005J\u0014\u0010#\u001a\u00020\u0007*\u00020\u00022\b\u0010\"\u001a\u0004\u0018\u00010\u0003J\f\u0010$\u001a\u0004\u0018\u00010\u0017*\u00020\u0002J \u0010'\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010%*\u00020\u00022\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00050%J\u0014\u0010(\u001a\u00020\u0007*\u00020\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u0003J\u0012\u0010)\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0005J\u001a\u0010)\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0003J\u0012\u0010*\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0005J \u0010-\u001a\u00020\u0007*\u00020\u00022\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00030%2\u0006\u0010,\u001a\u00020\u0005J\u0018\u0010/\u001a\u00020\u000b*\u00020\u00022\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00030%J\u0012\u00100\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0003J\u0012\u00101\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0003J\u001a\u00107\u001a\u000206*\u00020\u00022\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u000204J\n\u00108\u001a\u00020\u000b*\u00020\u0002J\n\u00109\u001a\u00020\u000b*\u00020\u0002J\n\u0010:\u001a\u00020\u0007*\u00020\u0002J\n\u0010;\u001a\u00020\u0007*\u00020\u0002J\n\u0010<\u001a\u00020\u0007*\u00020\u0002J\n\u0010=\u001a\u00020\u0007*\u00020\u0002J\u001e\u0010?\u001a\u00020\u000b*\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u00032\b\u0010>\u001a\u0004\u0018\u00010\u0003J\u001a\u0010A\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010@\u001a\u00020\u000eJ\u0012\u0010B\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0005J\u0012\u0010B\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0003J\u0016\u0010D\u001a\u0004\u0018\u00010\u0017*\u00020\u00022\b\u0010C\u001a\u0004\u0018\u00010\u0003J\u0014\u0010E\u001a\u0004\u0018\u00010\u0017*\u00020\u00022\u0006\u0010C\u001a\u00020\u0003J\n\u0010F\u001a\u00020\u0007*\u00020\u0002J\u0010\u0010H\u001a\b\u0012\u0004\u0012\u00020\u00170G*\u00020\u0002J\u0016\u0010I\u001a\u0004\u0018\u00010\u0017*\u00020\u00022\b\u0010C\u001a\u0004\u0018\u00010\u0003J\u0012\u0010J\u001a\u00020\u0017*\u00020\u00022\u0006\u0010C\u001a\u00020\u0003J\u0012\u0010L\u001a\u00020\u000b*\u00020\u00022\u0006\u0010K\u001a\u00020\u0017J\u0012\u0010M\u001a\u00020\u0003*\u00020\u00022\u0006\u0010\r\u001a\u00020\u0005J\n\u0010N\u001a\u00020\u000b*\u00020\u0002J\u0010\u0010P\u001a\b\u0012\u0004\u0012\u00020\u00030O*\u00020\u0002J\u0012\u0010Q\u001a\u00020\u000b*\u00020\u00022\u0006\u0010K\u001a\u00020\u0017R\u0015\u0010\n\u001a\u00020\t*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bR\u0010SR\u001b\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00030%*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b'\u0010T¨\u0006W"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;", "", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "", "movePageUniqueId", "", "toPage", "", "c", "Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;", CouchFieldKey.KEY_PAGE_NAME_LIST, "", "setupNotePageDataMap", "pageIndex", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "getPageInfoByIndex", CouchFieldKey.KEY_TOC_PAGE_ID, "getPageInfoById", "Ljava/util/LinkedHashSet;", "Lkotlin/collections/LinkedHashSet;", "loadPageIndex", FirebaseAnalytics.Param.INDEX, CouchFieldKey.KEY_PAGE_ID, "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "createPage", "createNotePage", "ensurePageInfo", "getPage", "getPageByUniqueId", "getPageUniqueId", "getPageIndex", "getPageByIndex", "ensurePageByIndex", "getPageByIndexFromMap", CouchFieldKey.KEY_PARENT_UNIQUE_ID, "pageExist", "getCurrentPage", "", "pageIndexList", "getPageUniqueIds", "containsPage", "createBlankPage", "removePage", "movePageUniqueIdList", "position", "movePage", "pageUniqueIds", "removePagesById", "removePageById", "clearPage", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "touchPointList", "", "radius", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "removeShapesByTouchPointList", "gotoFirst", "gotoLast", "hasNextPage", "nextPage", "prevPage", "isLastPage", "title", "updatePageTitle", "pageInfo", "updatePageInfo", "gotoPage", "pageUniqueName", "getOrNullNotePage", "getCacheNotePage", "hasDirtyNotePage", "", "getDirtyNotePages", "getNotePage", "ensureNotePage", "notePage", "ensurePageLoaded", "getPageTitle", "updateValidShapeNotePageIds", "", "loadValidShapeNotePageIds", "toggleValidShapePageSet", "getPageNameList", "(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;", "(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Ljava/util/List;", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteDocNotePage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteDocNotePage.kt\ncom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,348:1\n187#2,3:349\n526#3:352\n511#3,6:353\n1549#4:359\n1620#4,3:360\n766#4:363\n857#4,2:364\n1549#4:366\n1620#4,3:367\n1#5:370\n*S KotlinDebug\n*F\n+ 1 NoteDocNotePage.kt\ncom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage\n*L\n279#1:349,3\n283#1:352\n283#1:353,6\n328#1:359\n328#1:360,3\n334#1:363\n334#1:364,2\n335#1:366\n335#1:367,3\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteDocNotePage {

    @NotNull
    public static final NoteDocNotePage INSTANCE = new NoteDocNotePage();

    /* renamed from: b */
    public static final NotePage m33744b(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (NotePage) tmp0.invoke(obj);
    }

    /* renamed from: c */
    public final boolean m33745c(NoteDocument noteDocument, String str, int i) {
        int size = noteDocument.getPageDataMap().size();
        if (i < 0 || i >= size) {
            return false;
        }
        noteDocument.getPageDataMap().put(i, str, noteDocument.getPageDataMap().remove(str));
        return true;
    }

    public final void clearPage(@NotNull NoteDocument noteDocument, @NotNull String pageUniqueId) {
        List mutableList;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        NotePage notePage = getNotePage(noteDocument, pageUniqueId);
        if (notePage == null) {
            return;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) notePage.getShapeList());
        NotePage.removeShapeList$default(notePage, mutableList, false, 2, null);
    }

    public final boolean containsPage(@NotNull NoteDocument noteDocument, @Nullable String str) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        return noteDocument.getPageDataMap().containsKey(str);
    }

    public final boolean createBlankPage(@NotNull NoteDocument noteDocument, int i) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        return createBlankPage(noteDocument, i, ShapeUtils.INSTANCE.generateUniqueId());
    }

    @NotNull
    public final NotePage createNotePage(@NotNull NoteDocument noteDocument, @NotNull String pageUniqueId) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        PageInfo ensurePageInfo = ensurePageInfo(noteDocument, pageUniqueId);
        NotePage notePage = new NotePage(noteDocument.getProviderHolder(), new NotePageBean(noteDocument.getNoteDocBean().getUserId(), noteDocument.getDocumentUniqueId(), pageUniqueId, null, 8, null));
        notePage.setPageInfo(ensurePageInfo);
        notePage.setBkGroundRes(NoteDocBKGround.INSTANCE.getPageBkGround(noteDocument, pageUniqueId));
        return notePage;
    }

    @NotNull
    public final NotePage createPage(@NotNull NoteDocument noteDocument, int i, @NotNull String pageUniqueId) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        NotePage createNotePage = createNotePage(noteDocument, pageUniqueId);
        noteDocument.getPageDataMap().put(i, pageUniqueId, createNotePage);
        return createNotePage;
    }

    @NotNull
    public final NotePage ensureNotePage(@NotNull final NoteDocument noteDocument, @NotNull String pageUniqueName) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageUniqueName, "pageUniqueName");
        ListOrderedMap<String, NotePage> pageDataMap = noteDocument.getPageDataMap();
        final Function1<String, NotePage> function1 = new Function1<String, NotePage>() { // from class: com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage$ensureNotePage$notePage$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final NotePage invoke(String str) {
                NoteDocNotePage noteDocNotePage = NoteDocNotePage.INSTANCE;
                NoteDocument noteDocument2 = NoteDocument.this;
                Intrinsics.checkNotNull(str);
                return noteDocNotePage.createNotePage(noteDocument2, str);
            }
        };
        NotePage computeIfAbsent = pageDataMap.computeIfAbsent(pageUniqueName, new Function() { // from class: com.sunia.HTREnginev2.evj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NotePage m33744b;
                m33744b = NoteDocNotePage.m33744b(Function1.this, obj);
                return m33744b;
            }
        });
        NoteDocumentKt.updateNotePageInfo(noteDocument.ensureGlobalNotePage(), computeIfAbsent);
        if (computeIfAbsent.getIsLoaded()) {
            Intrinsics.checkNotNull(computeIfAbsent);
            return computeIfAbsent;
        }
        Intrinsics.checkNotNull(computeIfAbsent);
        ensurePageLoaded(noteDocument, computeIfAbsent);
        return computeIfAbsent;
    }

    @Nullable
    public final NotePage ensurePageByIndex(@NotNull NoteDocument noteDocument, int i) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        NotePage pageByIndex = getPageByIndex(noteDocument, i);
        return pageByIndex == null ? getNotePage(noteDocument, UUIDUtils.INSTANCE.rawUUID()) : pageByIndex;
    }

    @NotNull
    public final PageInfo ensurePageInfo(@NotNull NoteDocument noteDocument, @NotNull String pageUniqueId) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        PageInfo pageInfo = noteDocument.getNotePageInfo().getPageInfo(pageUniqueId);
        if (pageInfo != null) {
            return pageInfo;
        }
        PageInfo height = new PageInfo().setWidth(noteDocument.getDefaultPageRect().width()).setHeight(noteDocument.getDefaultPageRect().height());
        noteDocument.getNotePageInfo().addPageInfo(pageUniqueId, height);
        return height;
    }

    public final void ensurePageLoaded(@NotNull NoteDocument noteDocument, @NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        if (!noteDocument.getValidShapePageSet().isEmpty()) {
            notePage.setLoaded(!noteDocument.getValidShapePageSet().contains(notePage.getPageUniqueId()));
        }
        NotePageLoad.INSTANCE.ensurePageLoaded(notePage);
        NoteDocCache.INSTANCE.cachePage(noteDocument, notePage.getPageUniqueId());
    }

    @Nullable
    public final NotePage getCacheNotePage(@NotNull NoteDocument noteDocument, @NotNull String pageUniqueName) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageUniqueName, "pageUniqueName");
        return noteDocument.getPageDataMap().get(pageUniqueName);
    }

    @Nullable
    public final NotePage getCurrentPage(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        return getNotePage(noteDocument, noteDocument.getCurrentPageUniqueId());
    }

    @NotNull
    public final Collection<NotePage> getDirtyNotePages(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        ListOrderedMap<String, NotePage> pageDataMap = noteDocument.getPageDataMap();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, NotePage> entry : pageDataMap.entrySet()) {
            if (entry.getValue().getIsDirty()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap.values();
    }

    @Nullable
    public final NotePage getNotePage(@NotNull NoteDocument noteDocument, @Nullable String str) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        if (str == null || str.length() == 0) {
            return null;
        }
        return ensureNotePage(noteDocument, str);
    }

    @Nullable
    public final NotePage getOrNullNotePage(@NotNull NoteDocument noteDocument, @Nullable String str) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        if ((str == null || str.length() == 0) || noteDocument.getPageDataMap().get(str) == null) {
            return null;
        }
        return ensureNotePage(noteDocument, str);
    }

    @Nullable
    public final NotePage getPage(@NotNull NoteDocument noteDocument, int i, @NotNull String pageUniqueId) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        NotePage pageByIndex = getPageByIndex(noteDocument, i);
        return pageByIndex != null ? pageByIndex : getPageByUniqueId(noteDocument, pageUniqueId);
    }

    @Nullable
    public final NotePage getPageByIndex(@NotNull NoteDocument noteDocument, int i) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        if (i < 0 || i >= noteDocument.getPageDataMap().size()) {
            return null;
        }
        return getNotePage(noteDocument, noteDocument.getPageDataMap().get(i));
    }

    @Nullable
    public final NotePage getPageByIndexFromMap(@NotNull NoteDocument noteDocument, int i) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        if (i < 0 || i >= noteDocument.getPageDataMap().size()) {
            return null;
        }
        return noteDocument.getPageDataMap().getValue(i);
    }

    @Nullable
    public final NotePage getPageByUniqueId(@NotNull NoteDocument noteDocument, @Nullable String str) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        return getNotePage(noteDocument, str);
    }

    public final int getPageIndex(@NotNull NoteDocument noteDocument, @NotNull String pageUniqueId) {
        int indexOf;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        Set<String> keySet = noteDocument.getPageDataMap().keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        indexOf = CollectionsKt___CollectionsKt.indexOf((Iterable<? extends String>) ((Iterable<? extends Object>) keySet), pageUniqueId);
        return indexOf;
    }

    @Nullable
    public final PageInfo getPageInfoById(@NotNull NoteDocument noteDocument, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return noteDocument.getNotePageInfo().getPageInfo(pageId);
    }

    @Nullable
    public final PageInfo getPageInfoByIndex(@NotNull NoteDocument noteDocument, int i) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        String pageUniqueId = getPageUniqueId(noteDocument, i);
        if (pageUniqueId == null) {
            return null;
        }
        return getPageInfoById(noteDocument, pageUniqueId);
    }

    @NotNull
    public final PageNameList getPageNameList(@NotNull NoteDocument noteDocument) {
        List<String> list;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        PageNameList pageNameList = new PageNameList();
        Set<String> keySet = noteDocument.getPageDataMap().keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        list = CollectionsKt___CollectionsKt.toList(keySet);
        pageNameList.addAll(list);
        return pageNameList;
    }

    @NotNull
    public final String getPageTitle(@NotNull NoteDocument noteDocument, int i) {
        PageInfo pageInfo;
        String title;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        String pageUniqueId = getPageUniqueId(noteDocument, i);
        return (pageUniqueId == null || (pageInfo = noteDocument.getNotePageInfo().getPageInfo(pageUniqueId)) == null || (title = pageInfo.getTitle()) == null) ? "" : title;
    }

    @Nullable
    public final String getPageUniqueId(@NotNull NoteDocument noteDocument, int i) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        if (i < 0 || i >= noteDocument.getPageDataMap().size()) {
            return null;
        }
        return noteDocument.getPageDataMap().get(i);
    }

    @NotNull
    public final List<String> getPageUniqueIds(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        return new ArrayList(noteDocument.getPageDataMap().keySet());
    }

    public final void gotoFirst(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        gotoPage(noteDocument, 0);
    }

    public final void gotoLast(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        gotoPage(noteDocument, Math.max(0, noteDocument.getPageDataMap().size() - 1));
    }

    public final boolean gotoPage(@NotNull NoteDocument noteDocument, int i) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        if (i < 0 || i >= noteDocument.getPageDataMap().size()) {
            return false;
        }
        noteDocument.setCurrentPageIndex(i);
        return true;
    }

    public final boolean hasDirtyNotePage(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        ListOrderedMap<String, NotePage> pageDataMap = noteDocument.getPageDataMap();
        if (pageDataMap.isEmpty()) {
            return false;
        }
        Iterator<Map.Entry<String, NotePage>> it2 = pageDataMap.entrySet().iterator();
        while (it2.hasNext()) {
            if (it2.next().getValue().getIsDirty()) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasNextPage(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        return noteDocument.getCurrentPageIndex() >= 0 && noteDocument.getCurrentPageIndex() < noteDocument.getPageCount() - 1;
    }

    public final boolean isLastPage(@NotNull NoteDocument noteDocument) {
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        int currentPageIndex = noteDocument.getCurrentPageIndex();
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(0, noteDocument.getPageCount() - 1);
        return currentPageIndex >= coerceAtLeast;
    }

    @NotNull
    public final LinkedHashSet<String> loadPageIndex(@NotNull NoteDocument noteDocument, @Nullable PageNameList pageNameList) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet<>();
        if (pageNameList == null) {
            return linkedHashSet;
        }
        Iterator<String> it2 = pageNameList.getPageNameList().iterator();
        while (it2.hasNext()) {
            linkedHashSet.add(it2.next());
        }
        return linkedHashSet;
    }

    @NotNull
    public final Set<String> loadValidShapeNotePageIds(@NotNull NoteDocument noteDocument) {
        int collectionSizeOrDefault;
        Set<String> mutableSet;
        int collectionSizeOrDefault2;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Benchmark benchmark = new Benchmark();
        List<NotePage> loadedNotePages = noteDocument.getLoadedNotePages();
        CBQueryArgs loadShapeListQuery = ShapeQueryArgsExtKt.loadShapeListQuery(noteDocument.getDocumentUniqueId(), 0);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<NotePage> list = loadedNotePages;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NotePage) it2.next()).getPageUniqueId());
        }
        mutableSet = CollectionsKt___CollectionsKt.toMutableSet(noteDocument.getProviderHolder().getNoteShapeProvider().loadShapePageIdList(loadShapeListQuery.andWith(couchUtils.notInExpression(CouchFieldKey.KEY_PAGE_ID, arrayList))));
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (((NotePage) obj).getShapeCount() > 0) {
                arrayList2.add(obj);
            }
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            arrayList3.add(((NotePage) it3.next()).getPageUniqueId());
        }
        CollectionKt.safeAddAll(mutableSet, arrayList3);
        benchmark.report("load valid ShapePageIdList:" + CollectionKt.getSize(mutableSet));
        return mutableSet;
    }

    public final boolean movePage(@NotNull NoteDocument noteDocument, @NotNull List<String> movePageUniqueIdList, int i) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(movePageUniqueIdList, "movePageUniqueIdList");
        Iterator<String> it2 = movePageUniqueIdList.iterator();
        while (it2.hasNext()) {
            if (!m33745c(noteDocument, it2.next(), i)) {
                return false;
            }
        }
        return true;
    }

    public final boolean nextPage(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        return gotoPage(noteDocument, noteDocument.getCurrentPageIndex() + 1);
    }

    public final boolean pageExist(@NotNull NoteDocument noteDocument, @Nullable String str) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        return noteDocument.getPageDataMap().containsKey(str);
    }

    public final boolean prevPage(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        return gotoPage(noteDocument, noteDocument.getCurrentPageIndex() - 1);
    }

    public final boolean removePage(@NotNull NoteDocument noteDocument, int i) {
        int coerceAtMost;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        NotePage pageByIndex = getPageByIndex(noteDocument, i);
        if (pageByIndex == null) {
            return false;
        }
        removePageById(noteDocument, pageByIndex.getPageUniqueId());
        noteDocument.ensureDocumentNotBlank();
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(i, noteDocument.getPageDataMap().size() - 1);
        return gotoPage(noteDocument, coerceAtMost);
    }

    public final void removePageById(@NotNull NoteDocument noteDocument, @NotNull String pageUniqueId) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        noteDocument.getRemovePageList().add(pageUniqueId);
        noteDocument.getPageDataMap().remove(pageUniqueId);
        noteDocument.getCachedPageMap().remove(pageUniqueId);
        noteDocument.getNotePageInfo().removePageInfo(pageUniqueId);
        NoteDocBKGround.INSTANCE.removePageBKGround(noteDocument, pageUniqueId);
    }

    public final void removePagesById(@NotNull NoteDocument noteDocument, @NotNull List<String> pageUniqueIds) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageUniqueIds, "pageUniqueIds");
        if (pageUniqueIds.isEmpty()) {
            return;
        }
        Iterator<String> it2 = pageUniqueIds.iterator();
        while (it2.hasNext()) {
            removePageById(noteDocument, it2.next());
        }
    }

    @NotNull
    public final ChangedShapeBean removeShapesByTouchPointList(@NotNull NoteDocument noteDocument, @NotNull TouchPointList touchPointList, float f) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(touchPointList, "touchPointList");
        NotePage currentPage = getCurrentPage(noteDocument);
        return currentPage == null ? new ChangedShapeBean() : NotePageHitTest.INSTANCE.removeShapesByTouchPointList(currentPage, touchPointList, f);
    }

    public final void setupNotePageDataMap(@NotNull NoteDocument noteDocument, @Nullable PageNameList pageNameList) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        if (pageNameList == null || pageNameList.size() <= 0) {
            return;
        }
        Iterator<String> it2 = loadPageIndex(noteDocument, pageNameList).iterator();
        int i = 0;
        while (it2.hasNext()) {
            createPage(noteDocument, i, it2.next());
            i++;
        }
    }

    public final void toggleValidShapePageSet(@NotNull NoteDocument noteDocument, @NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        if (notePage.getShapeCount() > 0) {
            noteDocument.getValidShapePageSet().add(notePage.getPageUniqueId());
        } else {
            noteDocument.getValidShapePageSet().remove(notePage.getPageUniqueId());
        }
    }

    public final void updatePageInfo(@NotNull NoteDocument noteDocument, @NotNull String pageId, @NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        NotePage notePage = noteDocument.getPageDataMap().get(pageId);
        if (notePage == null) {
            return;
        }
        notePage.setPageInfo(pageInfo);
        noteDocument.getNotePageInfo().addPageInfo(pageId, pageInfo);
    }

    public final void updatePageTitle(@NotNull NoteDocument noteDocument, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        NotePage notePage = noteDocument.getPageDataMap().get(str);
        if (notePage == null) {
            return;
        }
        notePage.getPageInfo().setTitle(str2);
    }

    public final void updateValidShapeNotePageIds(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        noteDocument.getValidShapePageSet().clear();
        noteDocument.getValidShapePageSet().addAll(loadValidShapeNotePageIds(noteDocument));
    }

    public final boolean createBlankPage(@NotNull NoteDocument noteDocument, int i, @NotNull String pageId) {
        int coerceAtMost;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(i, noteDocument.getPageDataMap().size());
        createPage(noteDocument, coerceAtMost, pageId);
        return gotoPage(noteDocument, coerceAtMost);
    }

    @Nullable
    public final List<String> getPageUniqueIds(@NotNull NoteDocument noteDocument, @NotNull List<Integer> pageIndexList) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageIndexList, "pageIndexList");
        if (pageIndexList.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it2 = pageIndexList.iterator();
        while (it2.hasNext()) {
            NotePage pageByIndex = getPageByIndex(noteDocument, it2.next().intValue());
            if (pageByIndex != null) {
                arrayList.add(pageByIndex.getPageUniqueId());
            }
        }
        return arrayList;
    }

    public final boolean gotoPage(@NotNull NoteDocument noteDocument, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return gotoPage(noteDocument, getPageIndex(noteDocument, pageId));
    }
}
