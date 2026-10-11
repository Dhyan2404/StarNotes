.class public final Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u00020\u0001B)\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;",
        "",
        "Landroid/graphics/Point;",
        "a",
        "Landroid/graphics/Point;",
        "getLocationPoint",
        "()Landroid/graphics/Point;",
        "setLocationPoint",
        "(Landroid/graphics/Point;)V",
        "locationPoint",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "b",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "getDockType",
        "()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "setDockType",
        "(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V",
        "dockType",
        "",
        "c",
        "Z",
        "getExpandState",
        "()Z",
        "setExpandState",
        "(Z)V",
        "expandState",
        "<init>",
        "(Landroid/graphics/Point;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Z)V",
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
.field public a:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;-><init>(Landroid/graphics/Point;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Z)V
    .locals 0
    .param p1    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->a:Landroid/graphics/Point;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->b:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    .line 5
    iput-boolean p3, p0, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Point;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x1

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;-><init>(Landroid/graphics/Point;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Z)V

    return-void
.end method


# virtual methods
.method public final getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->b:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    return-object p0
.end method

.method public final getExpandState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->c:Z

    return p0
.end method

.method public final getLocationPoint()Landroid/graphics/Point;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->a:Landroid/graphics/Point;

    return-object p0
.end method

.method public final setDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->b:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    return-void
.end method

.method public final setExpandState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->c:Z

    return-void
.end method

.method public final setLocationPoint(Landroid/graphics/Point;)V
    .locals 0
    .param p1    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->a:Landroid/graphics/Point;

    return-void
.end method
