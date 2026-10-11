.class public abstract Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0015\u0010\u000cJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;",
        "",
        "safelyExecuteImpl",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "execute",
        "e",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "getNoteBundle",
        "()Lcom/onyx/android/sdk/note/NoteBundle;",
        "setNoteBundle",
        "(Lcom/onyx/android/sdk/note/NoteBundle;)V",
        "",
        "f",
        "Z",
        "getPostShapeChangedEvent",
        "()Z",
        "setPostShapeChangedEvent",
        "(Z)V",
        "postShapeChangedEvent",
        "<init>",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/android/sdk/note/NoteBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->e:Lcom/onyx/android/sdk/note/NoteBundle;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->f:Z

    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->e:Lcom/onyx/android/sdk/note/NoteBundle;

    return-object p0
.end method

.method public final getPostShapeChangedEvent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->f:Z

    return p0
.end method

.method public final safelyExecuteImpl()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->e:Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->execute(Lcom/onyx/android/sdk/note/NoteBundle;)V

    return-void
.end method

.method public final setNoteBundle(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->e:Lcom/onyx/android/sdk/note/NoteBundle;

    return-void
.end method

.method public final setPostShapeChangedEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->f:Z

    return-void
.end method
