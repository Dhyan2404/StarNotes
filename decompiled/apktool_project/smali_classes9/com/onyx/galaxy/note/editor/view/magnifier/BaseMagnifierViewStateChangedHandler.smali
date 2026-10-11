.class public abstract Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$OnViewStateChangedListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016R\"\u0010\u000e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;",
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$OnViewStateChangedListener;",
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;",
        "currentType",
        "",
        "accept",
        "",
        "destroy",
        "a",
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;",
        "getPreviousMode",
        "()Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;",
        "setPreviousMode",
        "(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)V",
        "previousMode",
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
.field public a:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->NONE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;->a:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    return-void
.end method


# virtual methods
.method public abstract accept(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)Z
    .param p1    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public final getPreviousMode()Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;->a:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    return-object p0
.end method

.method public final setPreviousMode(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;->a:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    return-void
.end method
