package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteListArgs;
import com.onyx.android.sdk.replicator.note.p035db.ExcerptQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\u0012\u001a\u00020\u000b8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/ExcerptCollectionPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;", "pbDataContext", "", "collectDataToPBFromDB", "saveDataToDB", "exportToDBFromPB", "collectDataExportToFile", "copyPBToDB", "copyDBToDB", "", "a", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nExcerptCollectionPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExcerptCollectionPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/ExcerptCollectionPBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,107:1\n1855#2,2:108\n1855#2,2:110\n1549#2:112\n1620#2,3:113\n1747#2,3:116\n1855#2:119\n1855#2,2:120\n1856#2:122\n*S KotlinDebug\n*F\n+ 1 ExcerptCollectionPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/ExcerptCollectionPBData\n*L\n28#1:108,2\n41#1:110,2\n53#1:112\n53#1:113,3\n78#1:116,3\n92#1:119\n96#1:120,2\n92#1:122\n*E\n"})
/* loaded from: classes8.dex */
public final class ExcerptCollectionPBData extends BaseUserPBData {

    /* renamed from: a, reason: from kotlin metadata */
    public int type = 9;

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void collectDataExportToFile(@NotNull UserPBDataContext pbDataContext) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        ExportNoteListArgs exportNoteListArgs = pbDataContext.getExportNoteListArgs();
        if (exportNoteListArgs == null) {
            return;
        }
        List<ExportNoteArgs> exportNoteArgsList = exportNoteListArgs.getExportNoteArgsList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(exportNoteArgsList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = exportNoteArgsList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((ExportNoteArgs) it2.next()).getDocumentId());
        }
        if (arrayList.isEmpty()) {
            return;
        }
        List<ExcerptCollectionModel> loadExcerptCollectionList = pbDataContext.getExcerptCollectionProvider().loadExcerptCollectionList(ExcerptQueryArgsExtKt.loadDocExcerptCollectionQuery(arrayList));
        if (loadExcerptCollectionList.isEmpty()) {
            return;
        }
        CollectionKt.safeAddAll(pbDataContext.getExcerptCollectionList(), loadExcerptCollectionList);
        Debug.INSTANCE.m32052i(ExcerptCollectionPBData.class, "collectDataExportToFile to pb count: " + loadExcerptCollectionList.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void collectDataToPBFromDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        List<ExcerptCollectionModel> loadExcerptCollectionList = pbDataContext.getExcerptCollectionProvider().loadExcerptCollectionList(ExcerptQueryArgsExtKt.loadEmptyRevisionIdExcerptCollectionQuery());
        if (loadExcerptCollectionList.isEmpty()) {
            return;
        }
        Iterator<T> it2 = loadExcerptCollectionList.iterator();
        while (it2.hasNext()) {
            ((ExcerptCollectionModel) it2.next()).setRevisionId(pbDataContext.getRevisionId());
        }
        CollectionKt.safeAddAll(pbDataContext.getExcerptCollectionList(), loadExcerptCollectionList);
        Debug.INSTANCE.m32052i(ExcerptCollectionPBData.class, "collectDataToPBFromDB to pb count: " + loadExcerptCollectionList.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void copyDBToDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteListArgs copyNoteListArgs = pbDataContext.getCopyNoteListArgs();
        if (copyNoteListArgs == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (CopyNoteArgs copyNoteArgs : copyNoteListArgs.getArgsList()) {
            String srcDocId = copyNoteArgs.getSrcDocId();
            String dstDocId = copyNoteArgs.getDstDocId();
            List<ExcerptCollectionModel> loadExcerptCollectionList = pbDataContext.getExcerptCollectionProvider().loadExcerptCollectionList(ExcerptQueryArgsExtKt.loadExcerptCollectionListByQuoteIdQuery(srcDocId));
            for (ExcerptCollectionModel excerptCollectionModel : loadExcerptCollectionList) {
                excerptCollectionModel.setUniqueId(UUIDUtils.INSTANCE.rawUUID());
                excerptCollectionModel.setQuoteDocId(dstDocId);
                excerptCollectionModel.setQuoteShapeId(copyNoteListArgs.getDstShapeId(excerptCollectionModel.getQuoteShapeId()));
                excerptCollectionModel.resetRevisionId();
            }
            CollectionKt.safeAddAll(arrayList, loadExcerptCollectionList);
        }
        pbDataContext.getExcerptCollectionProvider().saveExcerptCollectionList(arrayList);
        Debug.INSTANCE.m32052i(ExcerptCollectionPBData.class, "copyDBToDB count: " + arrayList.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void copyPBToDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteListArgs copyNoteListArgs = pbDataContext.getCopyNoteListArgs();
        if (copyNoteListArgs == null) {
            return;
        }
        List<ExcerptCollectionModel> excerptCollectionList = pbDataContext.getExcerptCollectionList();
        ArrayList arrayList = new ArrayList();
        Iterator<ExcerptCollectionModel> it2 = excerptCollectionList.iterator();
        while (true) {
            boolean z = false;
            if (!it2.hasNext()) {
                pbDataContext.getExcerptCollectionProvider().saveExcerptCollectionList(arrayList);
                Debug.INSTANCE.m32052i(ExcerptCollectionPBData.class, "copyPBToDB count: " + arrayList.size(), new Object[0]);
                return;
            }
            ExcerptCollectionModel next = it2.next();
            String quoteDocId = next.getQuoteDocId();
            next.setSourceDocId(copyNoteListArgs.getDstDocId(next.getSourceDocId()));
            next.setSourceShapeId(copyNoteListArgs.getDstShapeId(next.getSourceShapeId()));
            next.setQuoteDocId(copyNoteListArgs.getDstDocId(next.getQuoteDocId()));
            next.setQuoteShapeId(copyNoteListArgs.getDstShapeId(next.getQuoteShapeId()));
            if (!Intrinsics.areEqual(next.getQuoteDocId(), quoteDocId)) {
                if (!arrayList.isEmpty()) {
                    Iterator it3 = arrayList.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            break;
                        }
                        ExcerptCollectionModel excerptCollectionModel = (ExcerptCollectionModel) it3.next();
                        if (Intrinsics.areEqual(excerptCollectionModel.getQuoteDocId(), next.getQuoteDocId()) && Intrinsics.areEqual(excerptCollectionModel.getSourceDocId(), next.getSourceDocId()) && Intrinsics.areEqual(excerptCollectionModel.getQuoteShapeId(), next.getQuoteShapeId())) {
                            z = true;
                            break;
                        }
                    }
                }
                if (!z) {
                    next.setUniqueId(UUIDUtils.INSTANCE.rawUUID());
                }
                next.resetRevisionId();
                arrayList.add(next);
            }
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void exportToDBFromPB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteListArgs copyNoteListArgs = pbDataContext.getCopyNoteListArgs();
        if (copyNoteListArgs != null) {
            for (ExcerptCollectionModel excerptCollectionModel : pbDataContext.getExcerptCollectionList()) {
                excerptCollectionModel.setSourceDocId(copyNoteListArgs.getDstDocId(excerptCollectionModel.getSourceDocId()));
                excerptCollectionModel.setSourceShapeId(copyNoteListArgs.getDstShapeId(excerptCollectionModel.getSourceShapeId()));
                excerptCollectionModel.setQuoteDocId(copyNoteListArgs.getDstDocId(excerptCollectionModel.getQuoteDocId()));
                excerptCollectionModel.setQuoteShapeId(copyNoteListArgs.getDstShapeId(excerptCollectionModel.getQuoteShapeId()));
            }
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
        pbDataContext.getExcerptCollectionProvider().saveExportedExcerptCollectionList(pbDataContext.getExcerptCollectionList());
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void setType(int i) {
        this.type = i;
    }
}
