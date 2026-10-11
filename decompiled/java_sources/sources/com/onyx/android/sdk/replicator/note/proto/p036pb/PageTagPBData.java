package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteListArgs;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NotePageTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J,\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\f0\u0010H\u0002R\"\u0010\u001a\u001a\u00020\u00148\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/PageTagPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;", "pbDataContext", "", "collectDataToPBFromDB", "exportToDBFromPB", "saveDataToDB", "collectDataExportToFile", "copyPBToDB", "copyDBToDB", "", "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;", "b", "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;", "exportNoteArgs", "", "", "docTagMap", "a", "", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPageTagPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageTagPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/PageTagPBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,126:1\n1855#2,2:127\n1855#2,2:129\n1855#2,2:131\n1855#2,2:133\n1549#2:135\n1620#2,3:136\n1855#2,2:139\n1855#2,2:141\n1855#2:143\n1855#2,2:144\n1856#2:146\n*S KotlinDebug\n*F\n+ 1 PageTagPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/PageTagPBData\n*L\n29#1:127,2\n37#1:129,2\n58#1:131,2\n74#1:133,2\n82#1:135\n82#1:136,3\n84#1:139,2\n88#1:141,2\n107#1:143\n116#1:144,2\n107#1:146\n*E\n"})
/* loaded from: classes8.dex */
public final class PageTagPBData extends BaseUserPBData {

    /* renamed from: a, reason: from kotlin metadata */
    public int type = 15;

    /* renamed from: a */
    public final void m35471a(UserPBDataContext pbDataContext, ExportNoteArgs exportNoteArgs, Map<String, PageTagModel> docTagMap) {
        NoteProvider noteProvider = pbDataContext.getNoteProvider();
        String documentId = exportNoteArgs.getDocumentId();
        List<String> pageIdList = exportNoteArgs.getPageIdList();
        if (pageIdList == null) {
            pageIdList = CollectionsKt__CollectionsKt.emptyList();
        }
        List<PageTagModel> loadPageTagList = NotePageTagProviderKt.loadPageTagList(noteProvider, documentId, pageIdList);
        if (CollectionKt.isNullOrEmpty(loadPageTagList)) {
            return;
        }
        for (PageTagModel pageTagModel : loadPageTagList) {
            docTagMap.put(pageTagModel.getUniqueId(), pageTagModel);
        }
    }

    /* renamed from: b */
    public final List<PageTagModel> m35472b(UserPBDataContext pbDataContext) {
        return NotePageTagProviderKt.loadPageTagList(pbDataContext.getNoteProvider(), NotePageTagProviderKt.createPageTagQueryArgs().andWith(CouchUtils.INSTANCE.nullOrEqualExpression(CouchFieldKey.KEY_REVISION_ID, "")));
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void collectDataExportToFile(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        ExportNoteListArgs exportNoteListArgs = pbDataContext.getExportNoteListArgs();
        if (exportNoteListArgs == null) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> it2 = exportNoteListArgs.getExportNoteArgsList().iterator();
        while (it2.hasNext()) {
            m35471a(pbDataContext, (ExportNoteArgs) it2.next(), linkedHashMap);
        }
        if (linkedHashMap.isEmpty()) {
            return;
        }
        CollectionKt.safeAddAll(pbDataContext.getPageTagList(), linkedHashMap.values());
        Debug.INSTANCE.m32052i(PageTagPBData.class, "userId = " + pbDataContext.getUserId() + ", exportToNote count: " + linkedHashMap.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void collectDataToPBFromDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        String userId = pbDataContext.getUserId();
        List<PageTagModel> m35472b = m35472b(pbDataContext);
        if (m35472b.isEmpty()) {
            return;
        }
        Iterator<T> it2 = m35472b.iterator();
        while (it2.hasNext()) {
            ((PageTagModel) it2.next()).setRevisionId(pbDataContext.getRevisionId());
        }
        CollectionKt.safeAddAll(pbDataContext.getPageTagList(), m35472b);
        Debug.INSTANCE.m32052i(PageTagPBData.class, "userId = " + userId + ", save template model to pb count: " + m35472b.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void copyDBToDB(@NotNull UserPBDataContext pbDataContext) {
        List list;
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteListArgs copyNoteListArgs = pbDataContext.getCopyNoteListArgs();
        if (copyNoteListArgs == null) {
            return;
        }
        for (CopyNoteArgs copyNoteArgs : copyNoteListArgs.getArgsList()) {
            NoteProvider noteProvider = pbDataContext.getNoteProvider();
            String srcDocId = copyNoteArgs.getSrcDocId();
            String dstDocId = copyNoteArgs.getDstDocId();
            list = CollectionsKt___CollectionsKt.toList(copyNoteArgs.getPageIdCopyMap().keySet());
            List<PageTagModel> loadPageTagList = NotePageTagProviderKt.loadPageTagList(noteProvider, srcDocId, (List<String>) list);
            if (!loadPageTagList.isEmpty()) {
                SyncNoteModel loadNote = NoteModelProviderKt.loadNote(noteProvider, dstDocId);
                for (PageTagModel pageTagModel : loadPageTagList) {
                    pageTagModel.setUniqueId(UUIDUtils.INSTANCE.shortUUID());
                    pageTagModel.setDocumentId(dstDocId);
                    String copyPageId = copyNoteArgs.getCopyPageId(pageTagModel.getPageUniqueId());
                    if (copyPageId == null) {
                        copyPageId = pageTagModel.getPageUniqueId();
                    }
                    pageTagModel.setPageUniqueId(copyPageId);
                    String title = loadNote != null ? loadNote.getTitle() : null;
                    if (title == null) {
                        title = "";
                    }
                    pageTagModel.setDocTitle(title);
                    pageTagModel.resetRevisionId();
                }
                NotePageTagProviderKt.savePageTagModels(noteProvider, loadPageTagList);
            }
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void copyPBToDB(@NotNull UserPBDataContext pbDataContext) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteListArgs copyNoteListArgs = pbDataContext.getCopyNoteListArgs();
        if (copyNoteListArgs == null) {
            return;
        }
        List<PageTagModel> pageTagList = pbDataContext.getPageTagList();
        NoteProvider noteProvider = pbDataContext.getNoteProvider();
        List<PageTagModel> list = pageTagList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((PageTagModel) it2.next()).getTagId());
        }
        List<SyncTagModel> loadTagById = NoteTagProviderKt.loadTagById(noteProvider, arrayList);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (SyncTagModel syncTagModel : loadTagById) {
            linkedHashMap.put(syncTagModel.getUniqueId(), syncTagModel);
        }
        ArrayList arrayList2 = new ArrayList();
        for (PageTagModel pageTagModel : list) {
            SyncTagModel syncTagModel2 = copyNoteListArgs.getExportTagMap().get(pageTagModel.getTagId());
            SyncTagModel syncTagModel3 = (SyncTagModel) linkedHashMap.get(pageTagModel.getTagId());
            if (syncTagModel3 != null) {
                if (Intrinsics.areEqual(syncTagModel2 != null ? syncTagModel2.getContent() : null, syncTagModel3.getContent())) {
                    pageTagModel.setUniqueId("");
                    pageTagModel.setDocumentId(copyNoteListArgs.getDstDocId(pageTagModel.getDocumentId()));
                    pageTagModel.setPageUniqueId(copyNoteListArgs.getDstPageId(pageTagModel.getPageUniqueId()));
                    pageTagModel.resetRevisionId();
                    arrayList2.add(pageTagModel);
                }
            }
        }
        NotePageTagProviderKt.savePageTagModels(pbDataContext.getNoteProvider(), arrayList2);
        Debug.INSTANCE.m32052i(PageTagPBData.class, "copyPBDataToDB count: " + arrayList2.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void exportToDBFromPB(@NotNull UserPBDataContext pbDataContext) {
        String documentId;
        String pageUniqueId;
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        for (PageTagModel pageTagModel : pbDataContext.getPageTagList()) {
            CopyNoteListArgs copyNoteListArgs = pbDataContext.getCopyNoteListArgs();
            if (copyNoteListArgs == null || (documentId = copyNoteListArgs.getDstDocId(pageTagModel.getDocumentId())) == null) {
                documentId = pageTagModel.getDocumentId();
            }
            pageTagModel.setDocumentId(documentId);
            CopyNoteListArgs copyNoteListArgs2 = pbDataContext.getCopyNoteListArgs();
            if (copyNoteListArgs2 == null || (pageUniqueId = copyNoteListArgs2.getDstPageId(pageTagModel.getPageUniqueId())) == null) {
                pageUniqueId = pageTagModel.getPageUniqueId();
            }
            pageTagModel.setPageUniqueId(pageUniqueId);
        }
        saveDataToDB(pbDataContext);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void saveDataToDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        NotePageTagProviderKt.saveExportedPageTagModels(pbDataContext.getNoteProvider(), pbDataContext.getPageTagList());
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void setType(int i) {
        this.type = i;
    }
}
