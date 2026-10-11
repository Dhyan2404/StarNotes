.class public final Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$showRulerUnitsWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$RulerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->F(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/ruler/RulerView$showRulerUnitsWindow$1",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$RulerListener;",
        "onChangeUnits",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$showRulerUnitsWindow$1;->a:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeUnits()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$showRulerUnitsWindow$1;->a:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->access$getUnitsType$p(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;)Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->CM:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$showRulerUnitsWindow$1;->a:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->IN:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->access$updateUnits(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$showRulerUnitsWindow$1;->a:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;

    invoke-static {p0, v1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->access$updateUnits(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;)V

    :goto_0
    return-void
.end method
