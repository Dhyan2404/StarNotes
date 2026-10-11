.class public final Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ReaderShapePBDocument;
.super Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument<",
        "Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProtoList;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0012\u0010\u0006\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ReaderShapePBDocument;",
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;",
        "Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProtoList;",
        "args",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;",
        "(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;)V",
        "parseFrom",
        "fin",
        "Ljava/io/FileInputStream;",
        "writeTo",
        "",
        "fout",
        "Ljava/io/FileOutputStream;",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;)V

    return-void
.end method


# virtual methods
.method public parseFrom(Ljava/io/FileInputStream;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProtoList;
    .locals 0
    .param p1    # Ljava/io/FileInputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProtoList;->parseFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProtoList;

    move-result-object p0

    const-string p1, "parseFrom(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic parseFrom(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ReaderShapePBDocument;->parseFrom(Ljava/io/FileInputStream;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProtoList;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Ljava/io/FileOutputStream;)V
    .locals 0
    .param p1    # Ljava/io/FileOutputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->getData()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProtoList;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
