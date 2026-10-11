.class public final Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u000f\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008\u000f\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;",
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
        "getShow",
        "()Z",
        "show",
        "c",
        "isExpand",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZ)V",
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

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZ)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/CounterEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "counterEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;->a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;->b:Z

    iput-boolean p3, p0, Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;-><init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZ)V

    return-void
.end method


# virtual methods
.method public final getCounterEntry()Lcom/onyx/galaxy/note/editor/data/CounterEntry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;->a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    return-object p0
.end method

.method public final getShow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;->b:Z

    return p0
.end method

.method public final isExpand()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;->c:Z

    return p0
.end method
