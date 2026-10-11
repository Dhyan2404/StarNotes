package com.onyx.android.sdk.replicator.note.proto.doc.shape;

import com.onyx.android.sdk.replicator.note.proto.ReaderShapeDocProto;
import com.onyx.android.sdk.replicator.note.proto.data.ShapeDocumentArgs;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0012\u0010\u0006\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ReaderShapePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProtoList;", "args", "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;", "(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;)V", "parseFrom", "fin", "Ljava/io/FileInputStream;", "writeTo", "", "fout", "Ljava/io/FileOutputStream;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderShapePBDocument extends BaseShapePBDocument<ReaderShapeDocProto.ShapeInfoProtoList> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReaderShapePBDocument(@NotNull ShapeDocumentArgs args) {
        super(args);
        Intrinsics.checkNotNullParameter(args, "args");
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.shape.BaseShapePBDocument
    public void writeTo(@Nullable FileOutputStream fout) throws IOException {
        ReaderShapeDocProto.ShapeInfoProtoList data = getData();
        Intrinsics.checkNotNull(data);
        data.writeTo(fout);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.replicator.note.proto.doc.shape.BaseShapePBDocument
    @NotNull
    public ReaderShapeDocProto.ShapeInfoProtoList parseFrom(@Nullable FileInputStream fin) throws IOException {
        ReaderShapeDocProto.ShapeInfoProtoList parseFrom = ReaderShapeDocProto.ShapeInfoProtoList.parseFrom(fin);
        Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(...)");
        return parseFrom;
    }
}
