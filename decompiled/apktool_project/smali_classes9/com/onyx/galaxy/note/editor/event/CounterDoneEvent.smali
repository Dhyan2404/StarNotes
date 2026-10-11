.class public final Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;",
        "",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "a",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "getCounterEntry",
        "()Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "counterEntry",
        "",
        "b",
        "Z",
        "isManualStop",
        "()Z",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/data/CounterEntry;Z)V",
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
.field public final a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;Z)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/CounterEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "counterEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;->a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;-><init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;Z)V

    return-void
.end method


# virtual methods
.method public final getCounterEntry()Lcom/onyx/galaxy/note/editor/data/CounterEntry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;->a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    return-object p0
.end method

.method public final isManualStop()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;->b:Z

    return p0
.end method
