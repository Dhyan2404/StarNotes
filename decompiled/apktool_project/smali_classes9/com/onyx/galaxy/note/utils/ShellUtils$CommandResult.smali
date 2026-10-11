.class public final Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/utils/ShellUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommandResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0008B%\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0015\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u000c\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010R\u0011\u0010\u0017\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;",
        "",
        "",
        "a",
        "I",
        "getResult",
        "()I",
        "setResult",
        "(I)V",
        "result",
        "",
        "b",
        "Ljava/lang/String;",
        "getSuccessMsg",
        "()Ljava/lang/String;",
        "setSuccessMsg",
        "(Ljava/lang/String;)V",
        "successMsg",
        "c",
        "getErrorMsg",
        "setErrorMsg",
        "errorMsg",
        "",
        "isSuccessful",
        "()Z",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;)V",
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
.field public a:I

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;->a:I

    .line 5
    iput-object p2, p0, Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getErrorMsg()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getResult()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;->a:I

    return p0
.end method

.method public final getSuccessMsg()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final isSuccessful()Z
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;->a:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;->c:Ljava/lang/String;

    return-void
.end method

.method public final setResult(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;->a:I

    return-void
.end method

.method public final setSuccessMsg(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;->b:Ljava/lang/String;

    return-void
.end method
