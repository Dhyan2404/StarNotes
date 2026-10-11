package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.fts.model.FTSContentModel;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.p035db.model.PBDocRecordModel;
import com.onyx.android.sdk.replicator.note.proto.FTSContentProto;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.FTSContentPBDocument;
import com.onyx.android.sdk.replicator.note.proto.doc.PBDocumentUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010$\u001a\u00020\u001e¢\u0006\u0004\b%\u0010#J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016JD\u0010\u0012\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\t0\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\rH\u0002J.\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00100\t2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\rH\u0002J,\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00100\t2\u0006\u0010\u0016\u001a\u00020\u00152\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0018\u001a\u00020\rH\u0002J\b\u0010\u001b\u001a\u00020\rH\u0002J\u0016\u0010\u001d\u001a\u00020\r2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00100\tH\u0002R\"\u0010$\u001a\u00020\u001e8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/FTSContentPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "", "exportToNote", "exportToDBFromPB", "copyPBDataToDB", "exportToPBFromDB", "", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "argsList", "", "", "revisionIdList", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;", "Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;", "b", CouchFieldKey.KEY_REVISION_ID, "d", "Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSContentPBDocument;", "pbDocument", "modelList", "documentId", "e", "a", "c", "list", C6997f.f39671c, "", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFTSContentPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FTSContentPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/FTSContentPBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,158:1\n1855#2,2:159\n*S KotlinDebug\n*F\n+ 1 FTSContentPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/FTSContentPBData\n*L\n142#1:159,2\n*E\n"})
/* loaded from: classes8.dex */
public final class FTSContentPBData extends BasePBData {

    /* renamed from: a, reason: from kotlin metadata */
    public int type;

    public FTSContentPBData() {
        this(0, 1, null);
    }

    /* renamed from: a */
    public final List<FTSContentModel> m35446a(FTSContentPBDocument pbDocument, List<PBDocumentArgs> argsList, String documentId) {
        List<FTSContentModel> list;
        List<FTSContentModel> fromProtoList;
        List<FTSContentModel> list2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (argsList.isEmpty()) {
            list2 = CollectionsKt___CollectionsKt.toList(linkedHashMap.values());
            return list2;
        }
        for (PBDocumentArgs pBDocumentArgs : argsList) {
            String revisionId = pBDocumentArgs.getRevisionId();
            if (revisionId != null) {
                pBDocumentArgs.setDocumentId(documentId);
                FTSContentProto.FTSContentList data = pbDocument.setArgs(pBDocumentArgs).load().getData();
                if (data != null && (fromProtoList = FTSContentPBDocument.INSTANCE.fromProtoList(data, revisionId)) != null) {
                    for (FTSContentModel fTSContentModel : fromProtoList) {
                        linkedHashMap.put(fTSContentModel.getUniqueId(), fTSContentModel);
                    }
                }
            }
        }
        list = CollectionsKt___CollectionsKt.toList(linkedHashMap.values());
        return list;
    }

    /* renamed from: b */
    public final Pair<List<FTSContentModel>, List<PBDocRecordModel>> m35447b(PBDataContext pbDataContext, List<PBDocumentArgs> argsList, List<String> revisionIdList) {
        PBDocRecordModel pBDocRecordModel;
        List<FTSContentModel> fromProtoList;
        FTSContentPBDocument fTSContentPBDocument = new FTSContentPBDocument();
        String documentId = pbDataContext.getDocumentId();
        ArrayList arrayList = new ArrayList();
        Map<String, PBDocRecordModel> loadRecordModelMap = pbDataContext.getNoteProviderHolder().getPbDocRecordProvider().loadRecordModelMap(documentId, CollectionKt.copy(revisionIdList));
        ArrayList arrayList2 = new ArrayList();
        for (PBDocumentArgs pBDocumentArgs : argsList) {
            String revisionId = pBDocumentArgs.getRevisionId();
            if (revisionId != null && ((pBDocRecordModel = loadRecordModelMap.get(revisionId)) == null || !pBDocRecordModel.isSynced())) {
                pBDocumentArgs.setDocumentId(documentId);
                FTSContentProto.FTSContentList data = fTSContentPBDocument.setArgs(pBDocumentArgs).load().getData();
                if (data != null && (fromProtoList = FTSContentPBDocument.INSTANCE.fromProtoList(data, revisionId)) != null) {
                    arrayList.addAll(fromProtoList);
                    PBDocRecordModel pBDocRecordModel2 = new PBDocRecordModel();
                    pBDocRecordModel2.setUniqueId(revisionId);
                    pBDocRecordModel2.setDocumentId(documentId);
                    pBDocRecordModel2.setStatus(1);
                    arrayList2.add(pBDocRecordModel2);
                }
            }
        }
        return new Pair<>(arrayList, arrayList2);
    }

    /* renamed from: c */
    public final String m35448c() {
        return UUIDUtils.INSTANCE.timeBasedEpochUUID();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void copyPBDataToDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        super.copyPBDataToDB(pbDataContext);
        CopyNoteArgs copyNoteArgs = pbDataContext.getCopyNoteArgs();
        if (copyNoteArgs == null) {
            return;
        }
        FTSContentPBDocument fTSContentPBDocument = new FTSContentPBDocument();
        fTSContentPBDocument.setPbDirPath(copyNoteArgs.getSrcDirFilePath());
        List<PBDocumentArgs> loadDocPBArgsList = PBDocumentUtils.INSTANCE.loadDocPBArgsList(fTSContentPBDocument.getPBFileDirPath(copyNoteArgs.getSrcDocId()));
        if (loadDocPBArgsList.isEmpty()) {
            return;
        }
        String m35448c = m35448c();
        List<FTSContentModel> m35446a = m35446a(fTSContentPBDocument, loadDocPBArgsList, copyNoteArgs.getSrcDocId());
        for (FTSContentModel fTSContentModel : m35446a) {
            String str = copyNoteArgs.getPageIdCopyMap().get(fTSContentModel.getPageUniqueId());
            if (!(str == null || str.length() == 0)) {
                fTSContentModel.setUniqueId(UUIDUtils.INSTANCE.rawUUID());
                fTSContentModel.setPageUniqueId(str);
                fTSContentModel.setRevisionId(m35448c);
            }
        }
        fTSContentPBDocument.setPbDirPath(copyNoteArgs.getDstDirFilePath());
        m35450e(fTSContentPBDocument, m35446a, copyNoteArgs.getDstDocId(), m35448c);
        pbDataContext.getNoteProviderHolder().getNoteFtsProvider().saveFtsContent(m35446a);
    }

    /* renamed from: d */
    public final void m35449d(PBDataContext pbDataContext, String revisionId) {
        String documentId = pbDataContext.getDocumentId();
        PBDocRecordModel pBDocRecordModel = new PBDocRecordModel();
        pBDocRecordModel.setUniqueId(revisionId);
        pBDocRecordModel.setDocumentId(documentId);
        pBDocRecordModel.setStatus(2);
        pbDataContext.getNoteProviderHolder().getPbDocRecordProvider().saveRecordModel(pBDocRecordModel);
    }

    /* renamed from: e */
    public final void m35450e(FTSContentPBDocument pbDocument, List<FTSContentModel> modelList, String documentId, String revisionId) {
        pbDocument.setArgs(new PBDocumentArgs().setDocumentId(documentId).setRevisionId(revisionId)).setData(FTSContentPBDocument.INSTANCE.toProtoList(modelList)).save();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToDBFromPB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        String documentId = pbDataContext.getDocumentId();
        List<PBDocumentArgs> loadDocPBArgsList = PBDocumentUtils.INSTANCE.loadDocPBArgsList(new FTSContentPBDocument().getPBFileDirPath(documentId));
        if (loadDocPBArgsList.isEmpty()) {
            return;
        }
        Pair<List<FTSContentModel>, List<PBDocRecordModel>> m35447b = m35447b(pbDataContext, loadDocPBArgsList, loadRevisions(loadDocPBArgsList));
        pbDataContext.getNoteProviderHolder().getNoteFtsProvider().saveFtsContent(m35447b.getFirst());
        pbDataContext.getNoteProviderHolder().getPbDocRecordProvider().saveRecordList(m35447b.getSecond());
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToNote(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        super.exportToNote(pbDataContext);
        ExportNoteArgs exportNoteArgs = pbDataContext.getExportNoteArgs();
        if (exportNoteArgs == null) {
            return;
        }
        List<FTSContentModel> queryAllFtsContent = pbDataContext.getNoteProviderHolder().getNoteFtsProvider().queryAllFtsContent();
        FTSContentPBDocument fTSContentPBDocument = new FTSContentPBDocument();
        fTSContentPBDocument.setPbDirPath(exportNoteArgs.getExportDirPath());
        m35450e(fTSContentPBDocument, queryAllFtsContent, pbDataContext.getDocumentId(), m35448c());
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToPBFromDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        super.exportToPBFromDB(pbDataContext);
        String documentId = pbDataContext.getDocumentId();
        List<FTSContentModel> queryFtsContentByArgs = pbDataContext.getNoteProviderHolder().getNoteFtsProvider().queryFtsContentByArgs(new CBQueryArgs().andWith(CouchUtils.INSTANCE.nullOrEmpty(CouchFieldKey.KEY_REVISION_ID)));
        if (queryFtsContentByArgs.isEmpty()) {
            return;
        }
        String m35451f = m35451f(queryFtsContentByArgs);
        m35450e(new FTSContentPBDocument(), queryFtsContentByArgs, documentId, m35451f);
        m35449d(pbDataContext, m35451f);
        pbDataContext.getNoteProviderHolder().getNoteFtsProvider().saveFtsContent(queryFtsContentByArgs);
    }

    /* renamed from: f */
    public final String m35451f(List<FTSContentModel> list) {
        String m35448c = m35448c();
        Iterator<FTSContentModel> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().setRevisionId(m35448c);
        }
        return m35448c;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void setType(int i) {
        this.type = i;
    }

    public FTSContentPBData(int i) {
        this.type = i;
    }

    public /* synthetic */ FTSContentPBData(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 21 : i);
    }
}
