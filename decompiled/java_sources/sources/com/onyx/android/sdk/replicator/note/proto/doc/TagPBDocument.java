package com.onyx.android.sdk.replicator.note.proto.doc;

import com.onyx.android.sdk.data.common.p027db.BaseModel;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.note.data.style.StyleAttr;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.proto.TagProto;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\b\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/TagPBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;", "()V", "getDataFilePath", "", "args", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "getPBFileDirPath", CouchFieldKey.KEY_UNIQUE_ID, "parseFrom", "fin", "Ljava/io/FileInputStream;", "writeTo", "", "data", "fout", "Ljava/io/FileOutputStream;", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TagPBDocument extends BasePBDocument<TagProto.TagList> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u001e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002*\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\f\u0010\n\u001a\u00020\t*\u00020\u0003H\u0002J\u0018\u0010\u000b\u001a\u00020\u0003*\u00020\t2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/TagPBDocument$Companion;", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;", "toProtoList", "", CouchFieldKey.KEY_REVISION_ID, "fromProtoList", "Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;", "c", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: b */
        public static /* synthetic */ SyncTagModel m35413b(Companion companion, TagProto.Tag tag, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = null;
            }
            return companion.m35414a(tag, str);
        }

        public static /* synthetic */ List fromProtoList$default(Companion companion, TagProto.TagList tagList, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = null;
            }
            return companion.fromProtoList(tagList, str);
        }

        /* renamed from: a */
        public final SyncTagModel m35414a(TagProto.Tag tag, String str) {
            SyncTagModel syncTagModel = new SyncTagModel();
            String uniqueId = tag.getUniqueId();
            Intrinsics.checkNotNullExpressionValue(uniqueId, "getUniqueId(...)");
            syncTagModel.setUniqueId(uniqueId);
            syncTagModel.setCreatedAt(tag.getCreatedAt());
            syncTagModel.setUpdatedAt(tag.getUpdatedAt());
            syncTagModel.setUser(tag.getUserId());
            syncTagModel.setDocumentId(tag.getDocumentId());
            syncTagModel.setStatus(tag.getStatus());
            syncTagModel.setPageUniqueId(tag.getPageUniqueId());
            String content = tag.getContent();
            Intrinsics.checkNotNullExpressionValue(content, "getContent(...)");
            syncTagModel.setContent(content);
            syncTagModel.setModeType(tag.getModeType());
            syncTagModel.setType(tag.getType());
            StyleAttr styleAttr = (StyleAttr) JSONUtils.INSTANCE.parseObject(tag.getStyle(), StyleAttr.class);
            if (styleAttr == null) {
                styleAttr = new StyleAttr();
            }
            syncTagModel.setStyle(styleAttr);
            syncTagModel.setOrderIndex(tag.getOrderIndex());
            syncTagModel.setParentId(tag.getParentId());
            syncTagModel.setRevisionId(str);
            return syncTagModel;
        }

        /* renamed from: c */
        public final TagProto.Tag m35415c(SyncTagModel syncTagModel) {
            TagProto.Tag.Builder newBuilder = TagProto.Tag.newBuilder();
            BaseModel.Companion companion = BaseModel.INSTANCE;
            TagProto.Tag build = newBuilder.setUniqueId(companion.ensureNotNull(syncTagModel.getUniqueId())).setDocumentId(companion.ensureNotNull(syncTagModel.getDocumentId())).setCreatedAt(syncTagModel.getCreatedAt()).setUpdatedAt(syncTagModel.getUpdatedAt()).setStatus(syncTagModel.getStatus()).setUserId(companion.ensureNotNull(syncTagModel.getUser())).setPageUniqueId(companion.ensureNotNull(syncTagModel.getPageUniqueId())).setContent(companion.ensureNotNull(syncTagModel.getContent())).setStatus(syncTagModel.getStatus()).setModeType(syncTagModel.getModeType()).setType(syncTagModel.getType()).setStyle(JSONUtils.INSTANCE.toJson(syncTagModel.getStyle())).setOrderIndex(syncTagModel.getOrderIndex()).setParentId(companion.ensureNotNull(syncTagModel.getParentId())).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        @NotNull
        public final List<SyncTagModel> fromProtoList(@Nullable TagProto.TagList tagList, @Nullable String str) {
            ArrayList arrayList = new ArrayList();
            if (tagList == null) {
                return arrayList;
            }
            for (TagProto.Tag tag : tagList.getProtoList()) {
                Intrinsics.checkNotNull(tag);
                arrayList.add(m35414a(tag, str));
            }
            return arrayList;
        }

        @NotNull
        public final TagProto.TagList toProtoList(@NotNull List<? extends SyncTagModel> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            ArrayList arrayList = new ArrayList();
            Iterator<? extends SyncTagModel> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(m35415c(it2.next()));
            }
            TagProto.TagList build = TagProto.TagList.newBuilder().addAllProto(arrayList).build();
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
        return getPBFileDirPath(args.getDocumentId()) + args.getRevisionId();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public String getPBFileDirPath(@Nullable String r3) {
        StringBuilder sb = new StringBuilder();
        SyncConstant syncConstant = SyncConstant.INSTANCE;
        String pbDirPath = getPbDirPath();
        Intrinsics.checkNotNull(r3);
        sb.append(syncConstant.docDirFilePath(pbDirPath, r3));
        String str = File.separator;
        sb.append(str);
        sb.append("tag");
        sb.append(str);
        sb.append("pb");
        sb.append(str);
        return sb.toString();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public TagProto.TagList parseFrom(@Nullable FileInputStream fin) throws IOException {
        TagProto.TagList parseFrom = TagProto.TagList.parseFrom(fin);
        Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(...)");
        return parseFrom;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    public void writeTo(@NotNull TagProto.TagList data, @Nullable FileOutputStream fout) throws IOException {
        Intrinsics.checkNotNullParameter(data, "data");
        data.writeTo(fout);
    }
}
