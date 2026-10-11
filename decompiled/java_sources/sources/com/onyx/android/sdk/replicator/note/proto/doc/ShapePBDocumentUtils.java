package com.onyx.android.sdk.replicator.note.proto.doc;

import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto;
import com.onyx.android.sdk.replicator.note.proto.data.ShapeDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.NoteShapePBDocument;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\b\u0002\u0010\f\u001a\u00020\rJ4\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils;", "", "()V", "saveToShapeFile", "", "noteProviderHolder", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "args", "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;", "shapeModelList", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "saveModel", "", "documentId", "", CouchFieldKey.KEY_PAGE_ID, CouchFieldKey.KEY_INFO_REVISION_ID, "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nShapePBDocumentUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapePBDocumentUtils.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapePBDocumentUtils {

    @NotNull
    public static final ShapePBDocumentUtils INSTANCE = new ShapePBDocumentUtils();

    public static /* synthetic */ void saveToShapeFile$default(ShapePBDocumentUtils shapePBDocumentUtils, NoteProviderHolder noteProviderHolder, ShapeDocumentArgs shapeDocumentArgs, List list, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = true;
        }
        shapePBDocumentUtils.saveToShapeFile(noteProviderHolder, shapeDocumentArgs, list, z);
    }

    public final void saveToShapeFile(@NotNull NoteProviderHolder noteProviderHolder, @NotNull String documentId, @NotNull String pageUniqueId, @NotNull String infoRevisionId, @NotNull List<ShapeModel> shapeModelList) {
        Intrinsics.checkNotNullParameter(noteProviderHolder, "noteProviderHolder");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        Intrinsics.checkNotNullParameter(infoRevisionId, "infoRevisionId");
        Intrinsics.checkNotNullParameter(shapeModelList, "shapeModelList");
        saveToShapeFile$default(this, noteProviderHolder, new ShapeDocumentArgs().setDocumentId(documentId).setPageId(pageUniqueId).setRevisionId(infoRevisionId), shapeModelList, false, 8, null);
    }

    public final void saveToShapeFile(@NotNull NoteProviderHolder noteProviderHolder, @NotNull ShapeDocumentArgs args, @NotNull List<ShapeModel> shapeModelList, boolean saveModel) {
        Intrinsics.checkNotNullParameter(noteProviderHolder, "noteProviderHolder");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(shapeModelList, "shapeModelList");
        String revisionId = args.getRevisionId();
        if (!(revisionId.length() > 0)) {
            revisionId = null;
        }
        String str = (String) AnyKt.getOrElse(revisionId, new Function0<String>() { // from class: com.onyx.android.sdk.replicator.note.proto.doc.ShapePBDocumentUtils$saveToShapeFile$infoRevisionId$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return ShapeModel.INSTANCE.newRevisionId();
            }
        });
        Iterator<ShapeModel> it2 = shapeModelList.iterator();
        while (it2.hasNext()) {
            it2.next().setInfoRevisionId(str);
        }
        NoteShapeDocProto.ShapeInfoProtoList shapeInfoList = NoteShapePBDocument.INSTANCE.toShapeInfoList(noteProviderHolder.getNoteResourceProvider(), shapeModelList);
        args.setSaveExportRecord(true).setRevisionId(str).setCreateAt(ShapeDocumentUtils.INSTANCE.currentTimestamp());
        args.setProvider(noteProviderHolder.getPbDocRecordProvider());
        new NoteShapePBDocument(args).setData(shapeInfoList).save();
        if (saveModel) {
            noteProviderHolder.getNoteShapeProvider().saveShapeList(shapeModelList);
        }
    }
}
