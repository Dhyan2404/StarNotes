.class public final Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;
.super Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument<",
        "Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\u0008\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;",
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;",
        "Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;",
        "()V",
        "getDataFilePath",
        "",
        "args",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;",
        "getPBFileDirPath",
        "uniqueId",
        "parseFrom",
        "fin",
        "Ljava/io/FileInputStream;",
        "writeTo",
        "",
        "data",
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
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataFilePath(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;->getPBFileDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->getRevisionId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const-string p1, "get(base, *subpaths)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPBFileDirPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/VirtualPagePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/VirtualPagePaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->getPbDirPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/common/path/VirtualPagePaths;->pagePBFileDir(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public parseFrom(Ljava/io/FileInputStream;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;
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
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;->parseFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;

    move-result-object p0

    const-string p1, "parseFrom(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic parseFrom(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;->parseFrom(Ljava/io/FileInputStream;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;Ljava/io/FileOutputStream;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileOutputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method public bridge synthetic writeTo(Ljava/lang/Object;Ljava/io/FileOutputStream;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;->writeTo(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;Ljava/io/FileOutputStream;)V

    return-void
.end method
