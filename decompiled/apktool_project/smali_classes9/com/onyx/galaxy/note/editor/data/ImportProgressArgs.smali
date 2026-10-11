.class public final Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0015\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u000c\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010R\"\u0010\u0019\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u000c\u001a\u0004\u0008\u0017\u0010\u000e\"\u0004\u0008\u0018\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getFileName",
        "()Ljava/lang/String;",
        "setFileName",
        "(Ljava/lang/String;)V",
        "fileName",
        "",
        "b",
        "I",
        "getProgress",
        "()I",
        "setProgress",
        "(I)V",
        "progress",
        "c",
        "getCurrentNumber",
        "setCurrentNumber",
        "currentNumber",
        "d",
        "getTotalCount",
        "setTotalCount",
        "totalCount",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCurrentNumber()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->c:I

    return p0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getProgress()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->b:I

    return p0
.end method

.method public final getTotalCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->d:I

    return p0
.end method

.method public final setCurrentNumber(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->c:I

    return-void
.end method

.method public final setFileName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->a:Ljava/lang/String;

    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->b:I

    return-void
.end method

.method public final setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->d:I

    return-void
.end method
