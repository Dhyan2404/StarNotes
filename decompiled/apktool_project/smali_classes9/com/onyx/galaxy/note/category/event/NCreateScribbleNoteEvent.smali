.class public final Lcom/onyx/galaxy/note/category/event/NCreateScribbleNoteEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/event/NCreateScribbleNoteEvent;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "a",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "getNoteCreateInfo",
        "()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "noteCreateInfo",
        "Lcom/onyx/android/sdk/data/NoteCreateFrom;",
        "b",
        "Lcom/onyx/android/sdk/data/NoteCreateFrom;",
        "getNoteCreateFrom",
        "()Lcom/onyx/android/sdk/data/NoteCreateFrom;",
        "noteCreateFrom",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Lcom/onyx/android/sdk/data/NoteCreateFrom;)V",
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
.field public final a:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/data/NoteCreateFrom;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Lcom/onyx/android/sdk/data/NoteCreateFrom;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/NoteCreateFrom;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteCreateInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteCreateFrom"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/event/NCreateScribbleNoteEvent;->a:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/event/NCreateScribbleNoteEvent;->b:Lcom/onyx/android/sdk/data/NoteCreateFrom;

    return-void
.end method


# virtual methods
.method public final getNoteCreateFrom()Lcom/onyx/android/sdk/data/NoteCreateFrom;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/event/NCreateScribbleNoteEvent;->b:Lcom/onyx/android/sdk/data/NoteCreateFrom;

    return-object p0
.end method

.method public final getNoteCreateInfo()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/event/NCreateScribbleNoteEvent;->a:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    return-object p0
.end method
