.class public final Lcom/onyx/galaxy/note/editor/data/WebConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/WebConfig;",
        "Ljava/io/Serializable;",
        "()V",
        "dataRepositoryPath",
        "",
        "getDataRepositoryPath",
        "()Ljava/lang/String;",
        "setDataRepositoryPath",
        "(Ljava/lang/String;)V",
        "dataRepositoryRedirection",
        "",
        "getDataRepositoryRedirection",
        "()Z",
        "setDataRepositoryRedirection",
        "(Z)V",
        "note_overseasRelease"
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
.field private dataRepositoryPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dataRepositoryRedirection:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/WebConfig;->dataRepositoryPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDataRepositoryPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/WebConfig;->dataRepositoryPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getDataRepositoryRedirection()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/data/WebConfig;->dataRepositoryRedirection:Z

    return p0
.end method

.method public final setDataRepositoryPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/WebConfig;->dataRepositoryPath:Ljava/lang/String;

    return-void
.end method

.method public final setDataRepositoryRedirection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/data/WebConfig;->dataRepositoryRedirection:Z

    return-void
.end method
