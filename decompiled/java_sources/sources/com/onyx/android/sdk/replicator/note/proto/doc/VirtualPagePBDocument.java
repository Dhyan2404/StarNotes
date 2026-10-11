package com.onyx.android.sdk.replicator.note.proto.doc;

import android.graphics.RectF;
import com.onyx.android.sdk.data.common.p027db.BaseModel;
import com.onyx.android.sdk.data.common.path.VirtualPagePaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\b\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;", "()V", "getDataFilePath", "", "args", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "getPBFileDirPath", CouchFieldKey.KEY_UNIQUE_ID, "parseFrom", "fin", "Ljava/io/FileInputStream;", "writeTo", "", "data", "fout", "Ljava/io/FileOutputStream;", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class VirtualPagePBDocument extends BasePBDocument<VirtualDocPageProto.VirtualPageList> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0005\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0012\u0010\n\u001a\u00020\u0003*\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0003H\u0002¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument$Companion;", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", "Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;", "toProtoList", "", CouchFieldKey.KEY_REVISION_ID, "fromProtoList", "Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;", "fromProto", "pageModel", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final VirtualDocPageProto.VirtualPage m35422a(VirtualPageModel pageModel) {
            VirtualDocPageProto.VirtualPage.Builder newBuilder = VirtualDocPageProto.VirtualPage.newBuilder();
            BaseModel.Companion companion = BaseModel.INSTANCE;
            VirtualDocPageProto.VirtualPage.Builder status = newBuilder.setPageId(companion.ensureNotNull(pageModel.getUniqueId())).setOrderIndex(pageModel.getOrderIndex()).setCreatedAt(pageModel.getCreatedAt()).setUpdatedAt(pageModel.getUpdatedAt()).setStatus(pageModel.getStatus());
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            VirtualDocPageProto.VirtualPage build = status.setPageSize(companion.ensureNotNull(jSONUtils.toJson(pageModel.getPageSize()))).setPageSizeWithMargin(companion.ensureNotNull(jSONUtils.toJson(pageModel.getPageSizeWithMargin()))).setContentPageSize(companion.ensureNotNull(jSONUtils.toJson(pageModel.getContentPageSize()))).setContentType(companion.ensureNotNull(pageModel.getContentType())).setContentPath(companion.ensureNotNull(pageModel.getContentRelativePath())).setContentPageId(companion.ensureNotNull(pageModel.getContentPageId())).setContentId(companion.ensureNotNull(pageModel.getContentId())).setColorTheme(pageModel.getColorTheme()).setMarginColor(pageModel.getMarginColor()).setMarginTemplateResource(companion.ensureNotNull(pageModel.getMarginTemplateResource())).setMarginTemplateSpace(pageModel.getMarginTemplateSpace()).setMarginTemplateResourceId(companion.ensureNotNull(pageModel.getMarginTemplateResourceId())).setRotation(pageModel.getRotation()).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        @NotNull
        public final VirtualPageModel fromProto(@NotNull VirtualDocPageProto.VirtualPage virtualPage, @NotNull String revisionId) {
            Intrinsics.checkNotNullParameter(virtualPage, "<this>");
            Intrinsics.checkNotNullParameter(revisionId, "revisionId");
            VirtualPageModel virtualPageModel = new VirtualPageModel();
            String pageId = virtualPage.getPageId();
            Intrinsics.checkNotNullExpressionValue(pageId, "getPageId(...)");
            virtualPageModel.setUniqueId(pageId);
            virtualPageModel.setOrderIndex(virtualPage.getOrderIndex());
            virtualPageModel.setCreatedAt(virtualPage.getCreatedAt());
            virtualPageModel.setUpdatedAt(virtualPage.getUpdatedAt());
            virtualPageModel.setStatus(virtualPage.getStatus());
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            RectF rectF = (RectF) jSONUtils.parseObject(virtualPage.getPageSize(), RectF.class);
            if (rectF == null) {
                rectF = new RectF();
            }
            virtualPageModel.setPageSize(rectF);
            RectF rectF2 = (RectF) jSONUtils.parseObject(virtualPage.getPageSizeWithMargin(), RectF.class);
            if (rectF2 == null) {
                rectF2 = new RectF();
            }
            virtualPageModel.setPageSizeWithMargin(rectF2);
            RectF rectF3 = (RectF) jSONUtils.parseObject(virtualPage.getContentPageSize(), RectF.class);
            if (rectF3 == null) {
                rectF3 = new RectF();
            }
            virtualPageModel.setContentPageSize(rectF3);
            String contentType = virtualPage.getContentType();
            Intrinsics.checkNotNullExpressionValue(contentType, "getContentType(...)");
            virtualPageModel.setContentType(contentType);
            String contentPath = virtualPage.getContentPath();
            Intrinsics.checkNotNullExpressionValue(contentPath, "getContentPath(...)");
            virtualPageModel.setContentRelativePath(contentPath);
            String contentPageId = virtualPage.getContentPageId();
            Intrinsics.checkNotNullExpressionValue(contentPageId, "getContentPageId(...)");
            virtualPageModel.setContentPageId(contentPageId);
            String contentId = virtualPage.getContentId();
            Intrinsics.checkNotNullExpressionValue(contentId, "getContentId(...)");
            virtualPageModel.setContentId(contentId);
            virtualPageModel.setColorTheme(virtualPage.getColorTheme());
            virtualPageModel.setMarginColor(virtualPage.getMarginColor());
            virtualPageModel.setMarginTemplateResource(virtualPage.getMarginTemplateResource());
            virtualPageModel.setMarginTemplateSpace(virtualPage.getMarginTemplateSpace());
            virtualPageModel.setMarginTemplateResourceId(virtualPage.getMarginTemplateResourceId());
            virtualPageModel.setRotation(virtualPage.getRotation());
            virtualPageModel.setRevisionId(revisionId);
            return virtualPageModel;
        }

        @NotNull
        public final List<VirtualPageModel> fromProtoList(@NotNull VirtualDocPageProto.VirtualPageList virtualPageList, @NotNull String revisionId) {
            Intrinsics.checkNotNullParameter(virtualPageList, "<this>");
            Intrinsics.checkNotNullParameter(revisionId, "revisionId");
            ArrayList arrayList = new ArrayList();
            for (VirtualDocPageProto.VirtualPage virtualPage : virtualPageList.getProtoList()) {
                Intrinsics.checkNotNull(virtualPage);
                arrayList.add(fromProto(virtualPage, revisionId));
            }
            return arrayList;
        }

        @NotNull
        public final VirtualDocPageProto.VirtualPageList toProtoList(@NotNull List<VirtualPageModel> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            ArrayList arrayList = new ArrayList();
            Iterator<VirtualPageModel> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(m35422a(it2.next()));
            }
            VirtualDocPageProto.VirtualPageList build = VirtualDocPageProto.VirtualPageList.newBuilder().addAllProto(arrayList).build();
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
        String pBFileDirPath = getPBFileDirPath(args.getDocumentId());
        String[] strArr = new String[1];
        String revisionId = args.getRevisionId();
        if (revisionId == null) {
            revisionId = "";
        }
        strArr[0] = revisionId;
        Path path = Paths.get(pBFileDirPath, (String[]) Arrays.copyOf(strArr, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        return path.toAbsolutePath().toString();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public String getPBFileDirPath(@Nullable String uniqueId) {
        VirtualPagePaths virtualPagePaths = VirtualPagePaths.INSTANCE;
        String pbDirPath = getPbDirPath();
        Intrinsics.checkNotNull(uniqueId);
        return virtualPagePaths.pagePBFileDir(pbDirPath, uniqueId).toAbsolutePath().toString();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public VirtualDocPageProto.VirtualPageList parseFrom(@Nullable FileInputStream fin) throws IOException {
        VirtualDocPageProto.VirtualPageList parseFrom = VirtualDocPageProto.VirtualPageList.parseFrom(fin);
        Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(...)");
        return parseFrom;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    public void writeTo(@NotNull VirtualDocPageProto.VirtualPageList data, @Nullable FileOutputStream fout) throws IOException {
        Intrinsics.checkNotNullParameter(data, "data");
        data.writeTo(fout);
    }
}
