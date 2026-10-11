.class public final Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->screenCapture(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$c;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$c;->f:Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$c;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;->setSelectionColor(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$c;->f:Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->onColorSelected(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$c;->f:Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->access$setOriginColor$p(Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$c;->f:Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->access$showColorPicker(Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction$c;->a(I)V

    return-void
.end method
