package com.onyx.android.sdk.replicator.note.proto.doc;

import com.onyx.android.sdk.data.common.data.template.TemplateData;
import com.onyx.android.sdk.data.common.p027db.BaseModel;
import com.onyx.android.sdk.data.common.path.VirtualDocPaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocOptions;
import com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\b\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualDocPBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;", "()V", "getDataFilePath", "", "args", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "getPBFileDirPath", CouchFieldKey.KEY_UNIQUE_ID, "parseFrom", "fin", "Ljava/io/FileInputStream;", "writeTo", "", "data", "fout", "Ljava/io/FileOutputStream;", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class VirtualDocPBDocument extends BasePBDocument<VirtualDocPageProto.VirtualDoc> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\n\u0010\u0007\u001a\u00020\u0006*\u00020\u0004¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualDocPBDocument$Companion;", "", "()V", "toProto", "Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;", "docModel", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;", "fromProto", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final VirtualDocModel fromProto(@NotNull VirtualDocPageProto.VirtualDoc virtualDoc) {
            Intrinsics.checkNotNullParameter(virtualDoc, "<this>");
            VirtualDocModel virtualDocModel = new VirtualDocModel();
            String uniqueId = virtualDoc.getUniqueId();
            Intrinsics.checkNotNullExpressionValue(uniqueId, "getUniqueId(...)");
            virtualDocModel.setUniqueId(uniqueId);
            virtualDocModel.setCreatedAt(virtualDoc.getCreatedAt());
            virtualDocModel.setUpdatedAt(virtualDoc.getUpdatedAt());
            String viewportId = virtualDoc.getViewportId();
            Intrinsics.checkNotNullExpressionValue(viewportId, "getViewportId(...)");
            virtualDocModel.setViewportId(viewportId);
            virtualDocModel.setActualScale(virtualDoc.getActualScale());
            virtualDocModel.setOffsetX(virtualDoc.getOffsetX());
            virtualDocModel.setOffsetY(virtualDoc.getOffsetY());
            String coverPageId = virtualDoc.getCoverPageId();
            Intrinsics.checkNotNullExpressionValue(coverPageId, "getCoverPageId(...)");
            virtualDocModel.setCoverPageId(coverPageId);
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            virtualDocModel.setDefaultTemplate((TemplateData) jSONUtils.parseObject(virtualDoc.getDefaultTemplate(), TemplateData.class));
            VirtualDocOptions virtualDocOptions = (VirtualDocOptions) jSONUtils.parseObject(virtualDoc.getDocOptions(), VirtualDocOptions.class);
            if (virtualDocOptions == null) {
                virtualDocOptions = new VirtualDocOptions();
            }
            virtualDocModel.setDocOptions(virtualDocOptions);
            return virtualDocModel;
        }

        @NotNull
        public final VirtualDocPageProto.VirtualDoc toProto(@NotNull VirtualDocModel docModel) {
            Intrinsics.checkNotNullParameter(docModel, "docModel");
            VirtualDocPageProto.VirtualDoc.Builder newBuilder = VirtualDocPageProto.VirtualDoc.newBuilder();
            BaseModel.Companion companion = BaseModel.INSTANCE;
            VirtualDocPageProto.VirtualDoc.Builder coverPageId = newBuilder.setUniqueId(companion.ensureNotNull(docModel.getUniqueId())).setCreatedAt(docModel.getCreatedAt()).setUpdatedAt(docModel.getUpdatedAt()).setViewportId(companion.ensureNotNull(docModel.getViewportId())).setActualScale(docModel.getActualScale()).setOffsetX(docModel.getOffsetX()).setOffsetY(docModel.getOffsetY()).setCoverPageId(companion.ensureNotNull(docModel.getCoverPageId()));
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            VirtualDocPageProto.VirtualDoc build = coverPageId.setDefaultTemplate(companion.ensureNotNull(jSONUtils.toJson(docModel.getDefaultTemplate()))).setDocOptions(companion.ensureNotNull(jSONUtils.toJson(docModel.getDocOptions()))).build();
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
        Path path = Paths.get(getPBFileDirPath(args.getDocumentId()), (String[]) Arrays.copyOf(new String[]{args.getDocumentId()}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        return path.toAbsolutePath().toString();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public String getPBFileDirPath(@Nullable String uniqueId) {
        VirtualDocPaths virtualDocPaths = VirtualDocPaths.INSTANCE;
        String pbDirPath = getPbDirPath();
        Intrinsics.checkNotNull(uniqueId);
        return virtualDocPaths.docPBFileDir(pbDirPath, uniqueId).toAbsolutePath().toString();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public VirtualDocPageProto.VirtualDoc parseFrom(@Nullable FileInputStream fin) throws IOException {
        VirtualDocPageProto.VirtualDoc parseFrom = VirtualDocPageProto.VirtualDoc.parseFrom(fin);
        Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(...)");
        return parseFrom;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    public void writeTo(@NotNull VirtualDocPageProto.VirtualDoc data, @Nullable FileOutputStream fout) throws IOException {
        Intrinsics.checkNotNullParameter(data, "data");
        data.writeTo(fout);
    }
}
