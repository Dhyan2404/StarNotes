package com.onyx.android.sdk.replicator.note.proto.doc;

import com.onyx.android.sdk.base.utils.PackageUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.p027db.BaseModel;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.proto.ExtraInfoProto;
import com.onyx.android.sdk.replicator.note.proto.data.ExtraInfoBean;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u0000 \u00192\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010\u0006\u001a\u00020\u0003J\u001a\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\u0012\u0010\u000e\u001a\u00020\u00022\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0012\u0010\u0014\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u0011H\u0016R\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo;", "Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;", "infoBean", "setInfoBean", "getInfoBean", "data", "Ljava/io/FileOutputStream;", "fout", "", "writeTo", "Ljava/io/FileInputStream;", "fin", "parseFrom", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "args", "", "getDataFilePath", CouchFieldKey.KEY_UNIQUE_ID, "getPBFileDirPath", "d", "Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ExtraInfoPBDocument extends BasePBDocument<ExtraInfoProto.ExtraInfo> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: d, reason: from kotlin metadata */
    public ExtraInfoBean infoBean;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005J\n\u0010\u0006\u001a\u00020\u0005*\u00020\u0004¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument$Companion;", "", "()V", "fromProto", "Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;", "Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo;", "toProto", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ExtraInfoBean fromProto(@NotNull ExtraInfoProto.ExtraInfo extraInfo) {
            Intrinsics.checkNotNullParameter(extraInfo, "<this>");
            ExtraInfoBean extraInfoBean = new ExtraInfoBean(0, 0, null, null, 15, null);
            extraInfoBean.setDocumentId(extraInfo.getDocumentId());
            extraInfoBean.setDocVersion(extraInfo.getDocVersion());
            extraInfoBean.setAppVersionCode(extraInfo.getAppVersionCode());
            extraInfoBean.setUserId(extraInfo.getUserId());
            extraInfoBean.setExportPdfPagesResult(extraInfo.getExportPdfPagesResult());
            return extraInfoBean;
        }

        @NotNull
        public final ExtraInfoProto.ExtraInfo toProto(@NotNull ExtraInfoBean extraInfoBean) {
            Intrinsics.checkNotNullParameter(extraInfoBean, "<this>");
            ExtraInfoProto.ExtraInfo.Builder docVersion = ExtraInfoProto.ExtraInfo.newBuilder().setDocVersion(extraInfoBean.getDocVersion());
            BaseModel.Companion companion = BaseModel.INSTANCE;
            ExtraInfoProto.ExtraInfo build = docVersion.setUserId(companion.ensureNotNull(extraInfoBean.getUserId())).setDocumentId(companion.ensureNotNull(extraInfoBean.getDocumentId())).setAppVersionCode((int) PackageUtils.INSTANCE.getAppVersionCode(ResManager.INSTANCE.getAppContext())).setExportPdfPagesResult(companion.ensureNotNull(extraInfoBean.getExportPdfPagesResult())).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        public Companion() {
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public String getDataFilePath(@NotNull PBDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return getPBFileDirPath(args.getDocumentId()) + "extra";
    }

    @NotNull
    public final ExtraInfoBean getInfoBean() {
        ExtraInfoBean extraInfoBean = this.infoBean;
        if (extraInfoBean != null) {
            return extraInfoBean;
        }
        Intrinsics.throwUninitializedPropertyAccessException("infoBean");
        return null;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public String getPBFileDirPath(@Nullable String uniqueId) {
        SyncConstant syncConstant = SyncConstant.INSTANCE;
        String pbDirPath = getPbDirPath();
        StringBuilder sb = new StringBuilder();
        sb.append(uniqueId);
        String str = File.separator;
        sb.append(str);
        sb.append("extra");
        sb.append(str);
        sb.append("pb");
        sb.append(str);
        return syncConstant.docDirFilePath(pbDirPath, sb.toString());
    }

    @NotNull
    public final ExtraInfoPBDocument setInfoBean(@NotNull ExtraInfoBean infoBean) {
        Intrinsics.checkNotNullParameter(infoBean, "infoBean");
        this.infoBean = infoBean;
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public ExtraInfoProto.ExtraInfo parseFrom(@Nullable FileInputStream fin) throws IOException {
        ExtraInfoProto.ExtraInfo parseFrom = ExtraInfoProto.ExtraInfo.parseFrom(fin);
        Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(...)");
        return parseFrom;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    public void writeTo(@NotNull ExtraInfoProto.ExtraInfo data, @Nullable FileOutputStream fout) throws IOException {
        Intrinsics.checkNotNullParameter(data, "data");
        data.writeTo(fout);
    }
}
