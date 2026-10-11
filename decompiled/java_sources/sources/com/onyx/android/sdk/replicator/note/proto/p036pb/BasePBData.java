package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.PBDocRecordProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.PBDocRecordModel;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ&\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u0016¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;", "()V", "copyPBDataToDB", "", "pbDataContext", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "exportToDBFromPB", "exportToNote", "exportToPBFromDB", "loadRevisions", "", "", "argsList", "", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "saveDocPBRecord", "pbDocRecordProvider", "Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;", EditorConstants.ARGS_DOC_ID, CouchFieldKey.KEY_REVISION_ID, "status", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class BasePBData implements PBData {
    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void copyPBDataToDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToDBFromPB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToNote(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToPBFromDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
    }

    @NotNull
    public final List<String> loadRevisions(@NotNull List<PBDocumentArgs> argsList) {
        Intrinsics.checkNotNullParameter(argsList, "argsList");
        ArrayList arrayList = new ArrayList();
        if (argsList.isEmpty()) {
            return arrayList;
        }
        Iterator<PBDocumentArgs> it2 = argsList.iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(arrayList, it2.next().getRevisionId());
        }
        return arrayList;
    }

    public final void saveDocPBRecord(@NotNull PBDocRecordProvider pbDocRecordProvider, @NotNull String docId, @NotNull String revisionId, int status) {
        Intrinsics.checkNotNullParameter(pbDocRecordProvider, "pbDocRecordProvider");
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(revisionId, "revisionId");
        PBDocRecordModel pBDocRecordModel = new PBDocRecordModel();
        pBDocRecordModel.setUniqueId(revisionId);
        pBDocRecordModel.setDocumentId(docId);
        pBDocRecordModel.setStatus(status);
        List<PBDocRecordModel> singletonList = Collections.singletonList(pBDocRecordModel);
        Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
        pbDocRecordProvider.saveRecordList(singletonList);
    }
}
