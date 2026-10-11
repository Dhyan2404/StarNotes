.class public final synthetic Lcom/sunia/HTREnginev2/a2e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a2e;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/a2e;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a2e;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a2e;->f:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->f(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;Landroid/view/View;)V

    return-void
.end method
