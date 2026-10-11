.class public final synthetic Lcom/sunia/HTREnginev2/wsk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wsk;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wsk;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showSelectColorPopup$1;->u(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V

    return-void
.end method
