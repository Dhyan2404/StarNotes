.class public Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument;
.super Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument<",
        "Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0012\u0010\u0006\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J\u0006\u0010\r\u001a\u00020\nJ\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument;",
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;",
        "Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;",
        "args",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;",
        "(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;)V",
        "parseFrom",
        "fin",
        "Ljava/io/FileInputStream;",
        "shapeFileDirPath",
        "",
        "pbDirPath",
        "documentId",
        "tempDataZipFilePath",
        "writeTo",
        "",
        "fout",
        "Ljava/io/FileOutputStream;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion;

    return-void
.end method

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
.method public parseFrom(Ljava/io/FileInputStream;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;
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
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;->parseFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;

    move-result-object p0

    const-string p1, "parseFrom(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic parseFrom(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument;->parseFrom(Ljava/io/FileInputStream;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;

    move-result-object p0

    return-object p0
.end method

.method public shapeFileDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pbDirPath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "documentId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/common/path/StashPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/StashPaths;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/common/path/StashPaths;->stashShapePBFileDir(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tempDataZipFilePath()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->dataFileDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->getArgs()Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;->getPageShapeFileName(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x23

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".zip"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
