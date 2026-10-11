package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.Collection;
import com.couchbase.lite.Database;
import com.couchbase.lite.Expression;
import com.couchbase.lite.SelectResult;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0010\u001a\u0012\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0012\u0010\u0007\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\b*\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00010\b\u001a\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\b*\u00020\u00002\u0006\u0010\f\u001a\u00020\u000b\u001a\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\b*\u00020\u00002\u0006\u0010\f\u001a\u00020\u000b\u001a-\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00050\b*\u00020\u00002\u001b\b\u0002\u0010\u0011\u001a\u0015\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e¢\u0006\u0002\b\u0010\u001a7\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\b*\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u00012\u001b\b\u0002\u0010\u0011\u001a\u0015\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e¢\u0006\u0002\b\u0010\u001a\u0012\u0010\u0016\u001a\u00020\u000f*\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0005\u001a\u0018\u0010\u0018\u001a\u00020\u000f*\u00020\u00002\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\b\u001a\u0012\u0010\u0019\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0005\u001a\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0018\u0010\u001a\u001a\u00020\u0003*\u00020\u00002\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\b\u001a\u0018\u0010\u001c\u001a\u00020\u000f*\u00020\u00002\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00010\b\u001a\u0018\u0010\u001e\u001a\u00020\u000f*\u00020\u00002\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00010\b\u001a\u001c\u0010 \u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001\u001a\u001a\u0010\"\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u0001\u001a\u0012\u0010#\u001a\u00020\u000f*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0018\u0010%\u001a\u00020\u000f*\u00020\u00002\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00010\b\u001a\n\u0010'\u001a\u00020&*\u00020\u0000\u001a\n\u0010(\u001a\u00020&*\u00020\u0000\u001a\u0012\u0010)\u001a\u00020&*\u00020\u00002\u0006\u0010\f\u001a\u00020\u000b\u001a\u0014\u0010,\u001a\u00020&*\u00020\u00002\u0006\u0010+\u001a\u00020*H\u0002\u001a&\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00050\b*\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0001\u001a'\u0010/\u001a\u00020\u0003*\u00020\u00002\u001b\b\u0002\u0010\u0011\u001a\u0015\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e¢\u0006\u0002\b\u0010\u001a/\u00101\u001a\u00020\u0003*\u00020\u00002\u0006\u00100\u001a\u00020\u00012\u001b\b\u0002\u0010\u0011\u001a\u0015\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e¢\u0006\u0002\b\u0010\u001a \u00103\u001a\b\u0012\u0004\u0012\u00020\u00010\b*\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u00102\u001a\u00020\u0001\u001a \u00103\u001a\b\u0012\u0004\u0012\u00020\u00010\b*\u00020\u00002\u0006\u0010+\u001a\u00020*2\u0006\u00102\u001a\u00020\u0001\u001a\u0014\u00104\u001a\u0004\u0018\u00010\u0005*\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0005\u001a\u0018\u00105\u001a\b\u0012\u0004\u0012\u00020\u00050\b*\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0005\u001a\u0018\u00107\u001a\b\u0012\u0004\u0012\u00020\u00010\b*\u00020\u00002\u0006\u00106\u001a\u00020\u0001\u001a7\u00109\u001a\u00020\u0001*\u00020\u00002\u0006\u00100\u001a\u00020\u00012\u0006\u00108\u001a\u00020\u00012\u001b\b\u0002\u0010\u0011\u001a\u0015\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e¢\u0006\u0002\b\u0010¨\u0006:"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "", CouchFieldKey.KEY_UNIQUE_ID, "", "noteExist", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "loadNote", "checkNoteExist", "", "uniqueIdList", "loadNoteList", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "loadNoteListInBatch", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", BreakpointSQLiteHelper.f39283i, "loadDeletedNoteList", "content", "searchDeleteNoteList", "noteModel", "saveNote", "list", "saveNoteList", "removeNote", "removeNoteList", "idList", "purgeNoteList", "excludeDocIds", "purgeNoteTree", "newParentId", "moveNote", "name", "renameNote", "toggleFavoriteNote", "docIdList", "forceDeleteNote", "", "getLibraryCount", "getDocumentCount", "getCount", "", "type", "a", CouchFieldKey.KEY_PARENT_ID, "searchNoteList", "hasNoteData", "title", "hasDuplicatedName", "titleStart", "loadNoteDocTitleList", "loadParentNote", "loadParentNotes", EditorConstants.ARGS_DOC_ID, "loadParentIds", "suffix", "generateUniqueName", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteModelProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteModelProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,346:1\n1855#2,2:347\n1855#2,2:349\n1855#2,2:351\n1855#2,2:353\n1603#2,9:355\n1855#2:364\n1856#2:366\n1612#2:367\n1603#2,9:368\n1855#2:377\n1856#2:379\n1612#2:380\n1#3:365\n1#3:378\n1#3:381\n*S KotlinDebug\n*F\n+ 1 NoteModelProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt\n*L\n112#1:347,2\n120#1:349,2\n163#1:351,2\n221#1:353,2\n283#1:355,9\n283#1:364\n283#1:366\n283#1:367\n300#1:368,9\n300#1:377\n300#1:379\n300#1:380\n283#1:365\n300#1:378\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteModelProviderKt {
    /* renamed from: a */
    public static final long m35176a(NoteProvider noteProvider, int i) {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression("type", Integer.valueOf(i)));
        cBQueryArgs.andWith(couchUtils.equalExpression("status", 1));
        cBQueryArgs.andWith(couchUtils.uniqueIdValued());
        return getCount(noteProvider, cBQueryArgs);
    }

    public static final boolean checkNoteExist(@NotNull NoteProvider noteProvider, @NotNull String uniqueId) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        return loadNote(noteProvider, uniqueId) != null;
    }

    public static final void forceDeleteNote(@NotNull NoteProvider noteProvider, @NotNull List<String> docIdList) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(docIdList, "docIdList");
        if (docIdList.isEmpty()) {
            return;
        }
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.setMaxLimit();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, docIdList));
        cBQueryArgs.andWith(couchUtils.equalExpression("status", 0));
        List<SyncNoteModel> loadNoteList = loadNoteList(noteProvider, cBQueryArgs);
        Iterator<T> it2 = loadNoteList.iterator();
        while (it2.hasNext()) {
            ((SyncNoteModel) it2.next()).setStatus(2);
        }
        saveNoteList(noteProvider, loadNoteList);
    }

    @NotNull
    public static final String generateUniqueName(@NotNull NoteProvider noteProvider, @NotNull String title, @NotNull String suffix, @Nullable Function1<? super CBQueryArgs, Unit> function1) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        while (hasDuplicatedName(noteProvider, title, function1)) {
            title = title + suffix;
        }
        return title;
    }

    public static /* synthetic */ String generateUniqueName$default(NoteProvider noteProvider, String str, String str2, Function1 function1, int i, Object obj) {
        if ((i & 4) != 0) {
            function1 = null;
        }
        return generateUniqueName(noteProvider, str, str2, function1);
    }

    public static final long getCount(@NotNull NoteProvider noteProvider, @NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        Expression whereEx = queryArgs.getWhereEx();
        if (whereEx == null) {
            whereEx = CouchUtils.INSTANCE.uniqueIdValued();
        }
        return CouchUtils.INSTANCE.queryDocumentCount(noteProvider.getDatabase(), whereEx);
    }

    public static final long getDocumentCount(@NotNull NoteProvider noteProvider) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        return m35176a(noteProvider, 1);
    }

    public static final long getLibraryCount(@NotNull NoteProvider noteProvider) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        return m35176a(noteProvider, 0);
    }

    public static final boolean hasDuplicatedName(@NotNull NoteProvider noteProvider, @NotNull String title, @Nullable Function1<? super CBQueryArgs, Unit> function1) {
        List<? extends Object> listOf;
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("status", 1)).andWith(couchUtils.equalExpression("title", title));
        Expression nullOrMissing = couchUtils.nullOrMissing(CouchFieldKey.KEY_ASSOCIATION);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{0, 1});
        CBQueryArgs andWith2 = andWith.andWith(nullOrMissing.m9761or(couchUtils.nestedInExpression(listOf, CouchFieldKey.KEY_ASSOCIATION, CouchFieldKey.KEY_ASSOCIATION_TYPE)));
        if (function1 != null) {
            function1.invoke(andWith2);
        }
        return getCount(noteProvider, andWith2) > 0;
    }

    public static /* synthetic */ boolean hasDuplicatedName$default(NoteProvider noteProvider, String str, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        return hasDuplicatedName(noteProvider, str, function1);
    }

    public static final boolean hasNoteData(@NotNull NoteProvider noteProvider, @Nullable Function1<? super CBQueryArgs, Unit> function1) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("status", 1)).andWith(couchUtils.uniqueIdValued());
        if (function1 != null) {
            function1.invoke(andWith);
        }
        return getCount(noteProvider, andWith) > 0;
    }

    public static /* synthetic */ boolean hasNoteData$default(NoteProvider noteProvider, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = null;
        }
        return hasNoteData(noteProvider, function1);
    }

    @NotNull
    public static final List<SyncNoteModel> loadDeletedNoteList(@NotNull NoteProvider noteProvider, @Nullable Function1<? super CBQueryArgs, Unit> function1) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.andWith(CouchUtils.INSTANCE.equalExpression("status", 0));
        if (function1 != null) {
            function1.invoke(cBQueryArgs);
        }
        return loadNoteList(noteProvider, cBQueryArgs);
    }

    public static /* synthetic */ List loadDeletedNoteList$default(NoteProvider noteProvider, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = null;
        }
        return loadDeletedNoteList(noteProvider, function1);
    }

    @Nullable
    public static final SyncNoteModel loadNote(@NotNull NoteProvider noteProvider, @NotNull String uniqueId) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        if (StringUtils.isEmpty(uniqueId)) {
            return null;
        }
        List singletonList = Collections.singletonList(uniqueId);
        Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) loadNoteList(noteProvider, (List<String>) singletonList));
        return (SyncNoteModel) firstOrNull;
    }

    @NotNull
    public static final List<String> loadNoteDocTitleList(@NotNull NoteProvider noteProvider, @NotNull SyncNoteModel noteModel, @NotNull String titleStart) throws Exception {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        Intrinsics.checkNotNullParameter(titleStart, "titleStart");
        CBQueryArgs maxLimit = new CBQueryArgs().setMaxLimit();
        SelectResult.C2166As property = SelectResult.property("title");
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        CBQueryArgs varargSelectResults = maxLimit.setVarargSelectResults(property);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = varargSelectResults.andWith(couchUtils.uniqueIdValued()).andWith(couchUtils.nonExpression(CouchFieldKey.KEY_UNIQUE_ID, noteModel.getUniqueId())).andWith(couchUtils.equalExpression("status", Integer.valueOf(noteModel.getStatus()))).andWith(couchUtils.equalExpression("type", Integer.valueOf(noteModel.getType()))).andWith(couchUtils.equalOrNullExpression(CouchFieldKey.KEY_PARENT_UNIQUE_ID, noteModel.getParentUniqueId()));
        List singletonList = Collections.singletonList("title");
        Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
        List<SyncNoteModel> loadNoteList = loadNoteList(noteProvider, andWith.andWith(CouchUtils.orPrefixLikeExpression$default(couchUtils, titleStart, singletonList, false, 4, null)));
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = loadNoteList.iterator();
        while (it2.hasNext()) {
            String title = ((SyncNoteModel) it2.next()).getTitle();
            if (title != null) {
                arrayList.add(title);
            }
        }
        return arrayList;
    }

    @NotNull
    public static final List<SyncNoteModel> loadNoteList(@NotNull NoteProvider noteProvider, @NotNull List<String> uniqueIdList) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(uniqueIdList, "uniqueIdList");
        List<String> list = uniqueIdList;
        if (list.isEmpty()) {
            return new ArrayList();
        }
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_UNIQUE_ID, list));
        cBQueryArgs.setLimit(uniqueIdList.size());
        return loadNoteList(noteProvider, cBQueryArgs);
    }

    @NotNull
    public static final List<SyncNoteModel> loadNoteListInBatch(@NotNull NoteProvider noteProvider, @NotNull CBQueryArgs queryArgs) {
        List<SyncNoteModel> loadNoteList;
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        ArrayList arrayList = new ArrayList();
        do {
            loadNoteList = loadNoteList(noteProvider, queryArgs);
            arrayList.addAll(loadNoteList);
            queryArgs.m72252setOffset(queryArgs.getOffset() + loadNoteList.size());
        } while (loadNoteList.size() >= queryArgs.getLimit());
        return arrayList;
    }

    @NotNull
    public static final List<String> loadParentIds(@NotNull NoteProvider noteProvider, @NotNull String docId) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(docId, "docId");
        ArrayList arrayList = new ArrayList();
        do {
            SyncNoteModel loadNote = loadNote(noteProvider, docId);
            if (loadNote == null || (docId = loadNote.getParentUniqueId()) == null || arrayList.contains(docId)) {
                break;
            }
            arrayList.add(docId);
        } while (StringUtils.isNotBlank(docId));
        return arrayList;
    }

    @Nullable
    public static final SyncNoteModel loadParentNote(@NotNull NoteProvider noteProvider, @NotNull SyncNoteModel noteModel) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        String parentUniqueId = noteModel.getParentUniqueId();
        if (parentUniqueId != null) {
            return loadNote(noteProvider, parentUniqueId);
        }
        return null;
    }

    @NotNull
    public static final List<SyncNoteModel> loadParentNotes(@NotNull NoteProvider noteProvider, @NotNull SyncNoteModel noteModel) {
        List<SyncNoteModel> list;
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        SyncNoteModel syncNoteModel = noteModel;
        while (StringUtils.isNotBlank(syncNoteModel.getParentUniqueId()) && (syncNoteModel = loadParentNote(noteProvider, noteModel)) != null && !linkedHashMap.containsKey(syncNoteModel.getUniqueId())) {
            linkedHashMap.put(syncNoteModel.getUniqueId(), syncNoteModel);
        }
        list = CollectionsKt___CollectionsKt.toList(linkedHashMap.values());
        return list;
    }

    public static final boolean moveNote(@NotNull NoteProvider noteProvider, @NotNull String uniqueId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        SyncNoteModel loadNote = loadNote(noteProvider, uniqueId);
        if (loadNote == null) {
            return false;
        }
        loadNote.setParentUniqueId(str);
        saveNote(noteProvider, loadNote);
        return true;
    }

    public static final boolean noteExist(@NotNull NoteProvider noteProvider, @NotNull String uniqueId) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        return loadNote(noteProvider, uniqueId) != null;
    }

    public static final void purgeNoteList(@NotNull NoteProvider noteProvider, @NotNull List<String> idList) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(idList, "idList");
        if (idList.isEmpty()) {
            return;
        }
        Iterator<T> it2 = idList.iterator();
        while (it2.hasNext()) {
            CouchUtils.INSTANCE.delete(noteProvider.getDatabase(), (String) it2.next());
        }
    }

    public static final void purgeNoteTree(@NotNull NoteProvider noteProvider, @NotNull List<String> excludeDocIds) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(excludeDocIds, "excludeDocIds");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection treeCollection = noteProvider.getTreeCollection(noteProvider);
        Database database = noteProvider.getDatabase();
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        couchCollections.deleteByExpression(treeCollection, database, cBQueryArgs.andWith(couchUtils.noteTreeExpression()).andWith(couchUtils.notInExpression(CouchFieldKey.KEY_UNIQUE_ID, excludeDocIds)));
    }

    public static final boolean removeNote(@NotNull NoteProvider noteProvider, @NotNull SyncNoteModel noteModel) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        noteModel.setStatus(0);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        couchUtils.save(noteProvider.getDatabase(), couchUtils.toMutableDocument(noteModel));
        return true;
    }

    public static final boolean removeNoteList(@NotNull NoteProvider noteProvider, @NotNull List<? extends SyncNoteModel> list) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            removeNote(noteProvider, (SyncNoteModel) it2.next());
        }
        return true;
    }

    public static final boolean renameNote(@NotNull NoteProvider noteProvider, @NotNull String uniqueId, @NotNull String name) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        Intrinsics.checkNotNullParameter(name, "name");
        SyncNoteModel loadNote = loadNote(noteProvider, uniqueId);
        if (loadNote == null) {
            return false;
        }
        loadNote.setTitle(name);
        saveNote(noteProvider, loadNote);
        return true;
    }

    public static final void saveNote(@NotNull NoteProvider noteProvider, @NotNull SyncNoteModel noteModel) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        List singletonList = Collections.singletonList(noteModel);
        Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
        saveNoteList(noteProvider, singletonList);
    }

    public static final void saveNoteList(@NotNull NoteProvider noteProvider, @NotNull List<? extends SyncNoteModel> list) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        noteProvider.saveSyncModelList(list, new Function1<SyncNoteModel, Unit>() { // from class: com.onyx.android.sdk.replicator.note.db.NoteModelProviderKt$saveNoteList$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull SyncNoteModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SyncNoteModel syncNoteModel) {
                invoke2(syncNoteModel);
                return Unit.INSTANCE;
            }
        });
    }

    @NotNull
    public static final List<SyncNoteModel> searchDeleteNoteList(@NotNull NoteProvider noteProvider, @Nullable final String str, @Nullable final Function1<? super CBQueryArgs, Unit> function1) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        return loadDeletedNoteList(noteProvider, new Function1<CBQueryArgs, Unit>() { // from class: com.onyx.android.sdk.replicator.note.db.NoteModelProviderKt$searchDeleteNoteList$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(CBQueryArgs cBQueryArgs) {
                invoke2(cBQueryArgs);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CBQueryArgs loadDeletedNoteList) {
                Intrinsics.checkNotNullParameter(loadDeletedNoteList, "$this$loadDeletedNoteList");
                CouchUtils couchUtils = CouchUtils.INSTANCE;
                String str2 = str;
                if (str2 == null) {
                    str2 = "";
                }
                List singletonList = Collections.singletonList("title");
                Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
                loadDeletedNoteList.andWith(CouchUtils.orLikeExpression$default(couchUtils, str2, singletonList, null, false, 12, null));
                Function1<CBQueryArgs, Unit> function12 = function1;
                if (function12 != null) {
                    function12.invoke(loadDeletedNoteList);
                }
            }
        });
    }

    public static /* synthetic */ List searchDeleteNoteList$default(NoteProvider noteProvider, String str, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        return searchDeleteNoteList(noteProvider, str, function1);
    }

    @NotNull
    public static final List<SyncNoteModel> searchNoteList(@NotNull NoteProvider noteProvider, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        String str3 = str == null ? "" : str;
        List singletonList = Collections.singletonList("title");
        Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
        Expression orLikeExpression$default = CouchUtils.orLikeExpression$default(couchUtils, str3, singletonList, null, false, 12, null);
        Intrinsics.checkNotNull(orLikeExpression$default);
        CBQueryArgs varargOrdering = new CBQueryArgs().andWith(couchUtils.equalExpression("status", 1)).setVarargOrdering(couchUtils.getOrdering("updatedAt", false));
        if (StringUtils.isEmpty(str2)) {
            return loadNoteList(noteProvider, varargOrdering.m72249clone().setMaxLimit().andWith(orLikeExpression$default));
        }
        ArrayList arrayList = new ArrayList();
        CBQueryArgs maxLimit = varargOrdering.m72249clone().setMaxLimit();
        Intrinsics.checkNotNull(str2);
        for (SyncNoteModel syncNoteModel : loadNoteList(noteProvider, maxLimit.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PARENT_UNIQUE_ID, str2)).andWith(orLikeExpression$default.m9761or(couchUtils.equalExpression("type", 0))))) {
            if (syncNoteModel.isDocument()) {
                CollectionKt.safeAdd(arrayList, syncNoteModel);
            } else {
                if (StringUtils.containsIgnoreCase(syncNoteModel.getTitle(), str)) {
                    CollectionKt.safeAdd(arrayList, syncNoteModel);
                }
                CollectionKt.safeAddAll(arrayList, searchNoteList(noteProvider, str, syncNoteModel.getUniqueId()));
            }
        }
        return arrayList;
    }

    public static /* synthetic */ List searchNoteList$default(NoteProvider noteProvider, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return searchNoteList(noteProvider, str, str2);
    }

    public static final void toggleFavoriteNote(@NotNull NoteProvider noteProvider, @NotNull String uniqueId) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        SyncNoteModel loadNote = loadNote(noteProvider, uniqueId);
        if (loadNote == null) {
            return;
        }
        loadNote.toggleFavorite();
        if (loadNote.getUpdatedAt() <= 0) {
            loadNote.beforeSave();
        }
        saveNote(noteProvider, loadNote);
    }

    @Nullable
    public static final SyncNoteModel removeNote(@NotNull NoteProvider noteProvider, @NotNull String uniqueId) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        SyncNoteModel loadNote = loadNote(noteProvider, uniqueId);
        if (loadNote == null) {
            return null;
        }
        removeNote(noteProvider, loadNote);
        return loadNote;
    }

    @NotNull
    public static final List<SyncNoteModel> loadNoteList(@NotNull NoteProvider noteProvider, @NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        queryArgs.andWith(CouchUtils.INSTANCE.noteTreeExpression());
        return noteProvider.loadModelList(queryArgs, SyncNoteModel.class);
    }

    @NotNull
    public static final List<String> loadNoteDocTitleList(@NotNull NoteProvider noteProvider, int i, @NotNull String titleStart) throws Exception {
        Intrinsics.checkNotNullParameter(noteProvider, "<this>");
        Intrinsics.checkNotNullParameter(titleStart, "titleStart");
        CBQueryArgs maxLimit = new CBQueryArgs().setMaxLimit();
        SelectResult.C2166As property = SelectResult.property("title");
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        CBQueryArgs varargSelectResults = maxLimit.setVarargSelectResults(property);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = varargSelectResults.andWith(couchUtils.uniqueIdValued()).andWith(couchUtils.equalExpression("type", Integer.valueOf(i)));
        List singletonList = Collections.singletonList("title");
        Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
        List<SyncNoteModel> loadNoteList = loadNoteList(noteProvider, andWith.andWith(CouchUtils.orPrefixLikeExpression$default(couchUtils, titleStart, singletonList, false, 4, null)));
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = loadNoteList.iterator();
        while (it2.hasNext()) {
            String title = ((SyncNoteModel) it2.next()).getTitle();
            if (title != null) {
                arrayList.add(title);
            }
        }
        return arrayList;
    }
}
