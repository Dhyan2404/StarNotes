package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.PBDocRecordModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.PBDocumentUtils;
import com.onyx.android.sdk.replicator.note.proto.doc.TagPBDocument;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b!\u0010\"J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\r\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J.\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\fH\u0002J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\fH\u0002J,\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\b2\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\fH\u0002J\b\u0010\u0019\u001a\u00020\fH\u0002R\"\u0010 \u001a\u00020\u001a8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/TagPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "", "exportToPBFromDB", "exportToNote", "copyPBDataToDB", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "a", "list", "", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/note/proto/doc/TagPBDocument;", "tagPBDocument", "tagModels", "documentId", CouchFieldKey.KEY_REVISION_ID, "e", "d", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "argsList", "pbDirPath", "b", "c", "", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTagPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/TagPBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n1855#2,2:143\n*S KotlinDebug\n*F\n+ 1 TagPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/TagPBData\n*L\n48#1:143,2\n*E\n"})
/* loaded from: classes8.dex */
public final class TagPBData extends BasePBData {

    /* renamed from: a, reason: from kotlin metadata */
    public int type = 4;

    /* renamed from: a */
    public final List<SyncTagModel> m35483a(PBDataContext pbDataContext) {
        NoteProvider noteProvider = pbDataContext.getNoteProviderHolder().getNoteProvider();
        CBQueryArgs createTagQueryArgs = NoteTagProviderKt.createTagQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return NoteTagProviderKt.loadTagList(noteProvider, createTagQueryArgs.andWith(couchUtils.equalExpression("type", 0)).andWith(couchUtils.nullOrMissing(CouchFieldKey.KEY_REVISION_ID)));
    }

    /* renamed from: b */
    public final List<SyncTagModel> m35484b(List<PBDocumentArgs> argsList, String documentId, String pbDirPath) {
        List<SyncTagModel> list;
        List<SyncTagModel> list2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (argsList.isEmpty()) {
            list2 = CollectionsKt___CollectionsKt.toList(linkedHashMap.values());
            return list2;
        }
        TagPBDocument tagPBDocument = new TagPBDocument();
        tagPBDocument.setPbDirPath(pbDirPath);
        for (PBDocumentArgs pBDocumentArgs : argsList) {
            pBDocumentArgs.setDocumentId(documentId);
            for (SyncTagModel syncTagModel : TagPBDocument.Companion.fromProtoList$default(TagPBDocument.INSTANCE, tagPBDocument.setArgs(pBDocumentArgs).load().getData(), null, 1, null)) {
                if (syncTagModel.isEnabled()) {
                    linkedHashMap.put(syncTagModel.getUniqueId(), syncTagModel);
                } else {
                    linkedHashMap.remove(syncTagModel.getUniqueId());
                }
            }
        }
        list = CollectionsKt___CollectionsKt.toList(linkedHashMap.values());
        return list;
    }

    /* renamed from: c */
    public final String m35485c() {
        return UUIDUtils.INSTANCE.timeBasedEpochUUID();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void copyPBDataToDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteArgs copyNoteArgs = pbDataContext.getCopyNoteArgs();
        if (copyNoteArgs == null) {
            return;
        }
        TagPBDocument tagPBDocument = new TagPBDocument();
        tagPBDocument.setPbDirPath(copyNoteArgs.getSrcDirFilePath());
        List<PBDocumentArgs> loadDocPBArgsList = PBDocumentUtils.INSTANCE.loadDocPBArgsList(tagPBDocument.getPBFileDirPath(copyNoteArgs.getSrcDocId()));
        if (loadDocPBArgsList.isEmpty()) {
            return;
        }
        String m35485c = m35485c();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<SyncTagModel> m35484b = m35484b(loadDocPBArgsList, copyNoteArgs.getSrcDocId(), copyNoteArgs.getSrcDirFilePath());
        for (SyncTagModel syncTagModel : m35484b) {
            String rawUUID = UUIDUtils.INSTANCE.rawUUID();
            linkedHashMap.put(syncTagModel.getUniqueId(), rawUUID);
            syncTagModel.setDocumentId(copyNoteArgs.getDstDocId());
            syncTagModel.setUser(copyNoteArgs.getUserId());
            syncTagModel.setPageUniqueId(copyNoteArgs.getCopyPageId(syncTagModel.getPageUniqueId()));
            syncTagModel.setUniqueId(rawUUID);
            syncTagModel.setRevisionId(m35485c);
        }
        saveDocPBRecord(pbDataContext.getNoteProviderHolder().getPbDocRecordProvider(), copyNoteArgs.getDstDocId(), m35485c, 2);
        copyNoteArgs.setTagIdCopyMap(linkedHashMap);
        tagPBDocument.setPbDirPath(copyNoteArgs.getDstDirFilePath());
        m35487e(tagPBDocument, m35484b, copyNoteArgs.getDstDocId(), m35485c);
        NoteTagProviderKt.saveTagList(pbDataContext.getNoteProviderHolder().getNoteProvider(), m35484b);
    }

    /* renamed from: d */
    public final void m35486d(PBDataContext pbDataContext, String revisionId) {
        PBDocRecordModel pBDocRecordModel = new PBDocRecordModel();
        pBDocRecordModel.setUniqueId(revisionId);
        pBDocRecordModel.setDocumentId(pbDataContext.getDocumentId());
        pBDocRecordModel.setStatus(2);
        pbDataContext.getNoteProviderHolder().getPbDocRecordProvider().saveRecordModel(pBDocRecordModel);
    }

    /* renamed from: e */
    public final void m35487e(TagPBDocument tagPBDocument, List<? extends SyncTagModel> tagModels, String documentId, String revisionId) {
        tagPBDocument.setArgs(new PBDocumentArgs().setDocumentId(documentId).setRevisionId(revisionId)).setData(TagPBDocument.INSTANCE.toProtoList(tagModels)).save();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToNote(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        ExportNoteArgs exportNoteArgs = pbDataContext.getExportNoteArgs();
        if (exportNoteArgs == null) {
            return;
        }
        String documentId = pbDataContext.getDocumentId();
        TagPBDocument tagPBDocument = new TagPBDocument();
        tagPBDocument.setPbDirPath(exportNoteArgs.getExportDirPath());
        List<String> pageIdList = exportNoteArgs.getPageIdList();
        if (pageIdList == null) {
            return;
        }
        List<SyncTagModel> loadDocPageTagList = NoteTagProviderKt.loadDocPageTagList(pbDataContext.getNoteProviderHolder().getNoteProvider(), documentId, pageIdList);
        if (loadDocPageTagList.isEmpty()) {
            return;
        }
        m35487e(tagPBDocument, loadDocPageTagList, documentId, m35485c());
        Debug.INSTANCE.m32052i(TagPBData.class, "documentId = " + documentId + ", tag model exportPB count: " + loadDocPageTagList.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToPBFromDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        String documentId = pbDataContext.getDocumentId();
        List<SyncTagModel> m35483a = m35483a(pbDataContext);
        if (m35483a.isEmpty()) {
            return;
        }
        String m35488f = m35488f(m35483a);
        m35487e(new TagPBDocument(), m35483a, documentId, m35488f);
        m35486d(pbDataContext, m35488f);
        NoteTagProviderKt.saveTagList(pbDataContext.getNoteProviderHolder().getNoteProvider(), m35483a);
        Debug.INSTANCE.m32052i(TagPBData.class, "documentId = " + documentId + ", tag exportDirtyToPB count: " + m35483a.size(), new Object[0]);
    }

    /* renamed from: f */
    public final String m35488f(List<? extends SyncTagModel> list) {
        String m35485c = m35485c();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ((SyncTagModel) it2.next()).setRevisionId(m35485c);
        }
        return m35485c;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void setType(int i) {
        this.type = i;
    }
}
