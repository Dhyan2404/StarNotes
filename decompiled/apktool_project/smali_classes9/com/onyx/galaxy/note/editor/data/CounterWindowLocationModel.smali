.class public final Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008R\"\u0010\u0011\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;",
        "",
        "",
        "a",
        "I",
        "getX",
        "()I",
        "setX",
        "(I)V",
        "x",
        "b",
        "getY",
        "setY",
        "y",
        "",
        "c",
        "Z",
        "isExpand",
        "()Z",
        "setExpand",
        "(Z)V",
        "<init>",
        "()V",
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
.field public static final Companion:Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;->Companion:Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;->c:Z

    return-void
.end method


# virtual methods
.method public final getX()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;->a:I

    return p0
.end method

.method public final getY()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;->b:I

    return p0
.end method

.method public final isExpand()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;->c:Z

    return p0
.end method

.method public final setExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;->c:Z

    return-void
.end method

.method public final setX(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;->a:I

    return-void
.end method

.method public final setY(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;->b:I

    return-void
.end method
