.class public final Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R \u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;",
        "",
        "()V",
        "exportAllFolder",
        "",
        "getExportAllFolder",
        "()Z",
        "setExportAllFolder",
        "(Z)V",
        "exportAllTag",
        "getExportAllTag",
        "setExportAllTag",
        "exportDirPath",
        "",
        "getExportDirPath",
        "()Ljava/lang/String;",
        "setExportDirPath",
        "(Ljava/lang/String;)V",
        "exportFont",
        "getExportFont",
        "setExportFont",
        "exportNoteArgsList",
        "",
        "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
        "getExportNoteArgsList",
        "()Ljava/util/List;",
        "setExportNoteArgsList",
        "(Ljava/util/List;)V",
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


# instance fields
.field private exportAllFolder:Z

.field private exportAllTag:Z

.field private exportDirPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private exportFont:Z

.field private exportNoteArgsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->exportNoteArgsList:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->exportDirPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getExportAllFolder()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->exportAllFolder:Z

    return p0
.end method

.method public final getExportAllTag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->exportAllTag:Z

    return p0
.end method

.method public final getExportDirPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->exportDirPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getExportFont()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->exportFont:Z

    return p0
.end method

.method public final getExportNoteArgsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->exportNoteArgsList:Ljava/util/List;

    return-object p0
.end method

.method public final setExportAllFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->exportAllFolder:Z

    return-void
.end method

.method public final setExportAllTag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->exportAllTag:Z

    return-void
.end method

.method public final setExportDirPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->exportDirPath:Ljava/lang/String;

    return-void
.end method

.method public final setExportFont(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->exportFont:Z

    return-void
.end method

.method public final setExportNoteArgsList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->exportNoteArgsList:Ljava/util/List;

    return-void
.end method
