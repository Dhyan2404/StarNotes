package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto;
import com.onyx.android.sdk.replicator.note.proto.data.ExtraInfoBean;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.ExtraInfoPBDocument;
import com.onyx.android.sdk.replicator.note.proto.doc.PBDocumentUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\r\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002J(\u0010\u0012\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000e\u001a\u00020\u00072\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\f\u001a\u00020\u000bH\u0002R\"\u0010\u0019\u001a\u00020\u00138\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/ExtraInfoPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "", "exportToNote", "copyPBDataToDB", "Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument;", "infoPBDocument", "Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;", "infoBean", "", "documentId", "b", "pbDocument", "", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "argsList", "a", "", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ExtraInfoPBData extends BasePBData {

    /* renamed from: a, reason: from kotlin metadata */
    public int type = 6;

    /* renamed from: a */
    public final ExtraInfoBean m35444a(ExtraInfoPBDocument pbDocument, List<PBDocumentArgs> argsList, String documentId) {
        Object first;
        if (argsList.isEmpty()) {
            return null;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) argsList);
        PBDocumentArgs pBDocumentArgs = (PBDocumentArgs) first;
        pBDocumentArgs.setDocumentId(documentId);
        ExtraInfoProto.ExtraInfo data = pbDocument.setArgs(pBDocumentArgs).load().getData();
        if (data != null) {
            return ExtraInfoPBDocument.INSTANCE.fromProto(data);
        }
        return null;
    }

    /* renamed from: b */
    public final void m35445b(ExtraInfoPBDocument infoPBDocument, ExtraInfoBean infoBean, String documentId) {
        ExtraInfoProto.ExtraInfo proto = ExtraInfoPBDocument.INSTANCE.toProto(infoBean);
        infoPBDocument.setArgs(new PBDocumentArgs().setDocumentId(documentId).setRevisionId("extra"));
        infoPBDocument.setData(proto);
        infoPBDocument.save();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void copyPBDataToDB(@NotNull PBDataContext pbDataContext) {
        ExtraInfoBean m35444a;
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteArgs copyNoteArgs = pbDataContext.getCopyNoteArgs();
        if (copyNoteArgs == null) {
            return;
        }
        ExtraInfoPBDocument extraInfoPBDocument = new ExtraInfoPBDocument();
        extraInfoPBDocument.setPbDirPath(copyNoteArgs.getSrcDirFilePath());
        List<PBDocumentArgs> loadDocPBArgsList = PBDocumentUtils.INSTANCE.loadDocPBArgsList(extraInfoPBDocument.getPBFileDirPath(copyNoteArgs.getSrcDocId()));
        if (loadDocPBArgsList.isEmpty() || (m35444a = m35444a(extraInfoPBDocument, loadDocPBArgsList, copyNoteArgs.getSrcDocId())) == null) {
            return;
        }
        copyNoteArgs.setExtraInfoBean(m35444a);
        Debug.INSTANCE.m32052i(ExtraInfoPBData.class, "copyPBDataToDB documentId = " + copyNoteArgs.getSrcDocId() + ", extraInfo:" + m35444a, new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToNote(@NotNull PBDataContext pbDataContext) {
        ExtraInfoBean infoBean;
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        ExportNoteArgs exportNoteArgs = pbDataContext.getExportNoteArgs();
        if (exportNoteArgs == null || (infoBean = exportNoteArgs.getInfoBean()) == null) {
            return;
        }
        ExtraInfoPBDocument extraInfoPBDocument = new ExtraInfoPBDocument();
        extraInfoPBDocument.setPbDirPath(exportNoteArgs.getExportDirPath());
        m35445b(extraInfoPBDocument, infoBean, pbDataContext.getDocumentId());
        Debug.INSTANCE.m32052i(ExtraInfoPBData.class, "exportToNote documentId = " + pbDataContext.getDocumentId() + ", save extraInfo to pb:" + infoBean, new Object[0]);
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
