.class public final Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0005\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;",
        "",
        "",
        "a",
        "Z",
        "isShow",
        "()Z",
        "Landroid/graphics/Rect;",
        "b",
        "Landroid/graphics/Rect;",
        "getAreaRect",
        "()Landroid/graphics/Rect;",
        "areaRect",
        "Lcom/onyx/galaxy/note/editor/data/SlideBarType;",
        "c",
        "Lcom/onyx/galaxy/note/editor/data/SlideBarType;",
        "getType",
        "()Lcom/onyx/galaxy/note/editor/data/SlideBarType;",
        "type",
        "<init>",
        "(ZLandroid/graphics/Rect;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V",
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
.field public final a:Z

.field public final b:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/galaxy/note/editor/data/SlideBarType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLandroid/graphics/Rect;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V
    .locals 1
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/data/SlideBarType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "areaRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;->a:Z

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;->b:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;->c:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    return-void
.end method


# virtual methods
.method public final getAreaRect()Landroid/graphics/Rect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;->b:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getType()Lcom/onyx/galaxy/note/editor/data/SlideBarType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;->c:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    return-object p0
.end method

.method public final isShow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;->a:Z

    return p0
.end method
