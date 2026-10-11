.class public final Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent;",
        "",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "a",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "getCounterEntry",
        "()Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "counterEntry",
        "",
        "b",
        "I",
        "getType",
        "()I",
        "type",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/data/CounterEntry;I)V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TIPS_TYPE_COUNT_DOWN_END:I = 0x0

.field public static final TIPS_TYPE_COUNT_DOWN_END_ONE:I = 0x1


# instance fields
.field public final a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent;->Companion:Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;I)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/CounterEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "counterEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent;->a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent;->b:I

    return-void
.end method


# virtual methods
.method public final getCounterEntry()Lcom/onyx/galaxy/note/editor/data/CounterEntry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent;->a:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent;->b:I

    return p0
.end method
