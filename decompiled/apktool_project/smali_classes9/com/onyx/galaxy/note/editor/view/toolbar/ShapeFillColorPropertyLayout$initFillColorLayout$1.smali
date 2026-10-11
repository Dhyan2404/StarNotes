.class final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$initFillColorLayout$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;->initFillColorLayout(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lkotlin/jvm/functions/Function3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "color",
        "",
        "colorIndex",
        "isSameItemSelected",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $anchorView:Landroid/view/View;

.field final synthetic $dockType:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

.field final synthetic $editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field final synthetic $itemSelectedCallback:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $shapeToolType:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Landroid/view/View;",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$initFillColorLayout$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$initFillColorLayout$1;->$editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$initFillColorLayout$1;->$anchorView:Landroid/view/View;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$initFillColorLayout$1;->$dockType:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iput-object p5, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$initFillColorLayout$1;->$shapeToolType:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    iput-object p6, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$initFillColorLayout$1;->$itemSelectedCallback:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$initFillColorLayout$1;->invoke(IIZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(IIZ)V
    .locals 8

    if-eqz p3, :cond_0

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$initFillColorLayout$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$initFillColorLayout$1;->$editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$initFillColorLayout$1;->$anchorView:Landroid/view/View;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$initFillColorLayout$1;->$dockType:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$initFillColorLayout$1;->$shapeToolType:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$initFillColorLayout$1;->$itemSelectedCallback:Lkotlin/jvm/functions/Function3;

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;->access$pickFillColor(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;IILkotlin/jvm/functions/Function3;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$initFillColorLayout$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$initFillColorLayout$1;->$itemSelectedCallback:Lkotlin/jvm/functions/Function3;

    invoke-static {v0, p1, p2, p0, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;->access$onFillColorSelected(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;IILkotlin/jvm/functions/Function3;Z)V

    return-void
.end method
