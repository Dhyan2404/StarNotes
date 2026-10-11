package com.onyx.android.sdk.replicator.note.proto.doc;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.proto.NoteInfoProto;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00142\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0014J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010\f\u001a\u00020\u00022\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/NoteTreePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;", "()V", "checkArgsNotComplete", "", "args", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "getDataFilePath", "", "getPBFileDirPath", CouchFieldKey.KEY_UNIQUE_ID, "parseFrom", "fin", "Ljava/io/FileInputStream;", "writeTo", "", "data", "fout", "Ljava/io/FileOutputStream;", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteTreePBDocument extends BasePBDocument<NoteInfoProto.NoteInfoList> {

    @NotNull
    public static final String NOTE_TREE_FILE_NAME = "note_tree";

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    public boolean checkArgsNotComplete(@NotNull PBDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!StringUtils.isEmpty(args.getRevisionId())) {
            return false;
        }
        Debug.INSTANCE.m32044e(NoteTreePBDocument.class, "empty revisionId", new Object[0]);
        return true;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public String getDataFilePath(@NotNull PBDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return getPBFileDirPath(null) + args.getRevisionId();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public String getPBFileDirPath(@Nullable String uniqueId) {
        return getPbDirPath() + File.separator;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public NoteInfoProto.NoteInfoList parseFrom(@Nullable FileInputStream fin) throws IOException {
        NoteInfoProto.NoteInfoList parseFrom = NoteInfoProto.NoteInfoList.parseFrom(fin);
        Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(...)");
        return parseFrom;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    public void writeTo(@NotNull NoteInfoProto.NoteInfoList data, @Nullable FileOutputStream fout) throws IOException {
        Intrinsics.checkNotNullParameter(data, "data");
        data.writeTo(fout);
    }
}
