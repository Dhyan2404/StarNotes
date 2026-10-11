.class public final Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCopySpaceNotEnoughException;
.super Lcom/onyx/android/sdk/data/common/exception/ContentException$FileException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/common/exception/ContentException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileCopySpaceNotEnoughException"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCopySpaceNotEnoughException;",
        "Lcom/onyx/android/sdk/data/common/exception/ContentException$FileException;",
        "source",
        "Ljava/io/File;",
        "targetDir",
        "(Ljava/io/File;Ljava/io/File;)V",
        "getSource",
        "()Ljava/io/File;",
        "setSource",
        "(Ljava/io/File;)V",
        "getTargetDir",
        "setTargetDir",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private source:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private targetDir:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    const-string v1, "FileCopySpaceNotEnoughException"

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/data/common/exception/ContentException$FileException;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCopySpaceNotEnoughException;->source:Ljava/io/File;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCopySpaceNotEnoughException;->targetDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final getSource()Ljava/io/File;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCopySpaceNotEnoughException;->source:Ljava/io/File;

    return-object p0
.end method

.method public final getTargetDir()Ljava/io/File;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCopySpaceNotEnoughException;->targetDir:Ljava/io/File;

    return-object p0
.end method

.method public final setSource(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCopySpaceNotEnoughException;->source:Ljava/io/File;

    return-void
.end method

.method public final setTargetDir(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCopySpaceNotEnoughException;->targetDir:Ljava/io/File;

    return-void
.end method
