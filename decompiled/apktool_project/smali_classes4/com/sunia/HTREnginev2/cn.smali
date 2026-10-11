.class public final synthetic Lcom/sunia/HTREnginev2/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/hjq/window/draggable/BaseDraggable$a;

.field public final synthetic f:F

.field public final synthetic g:I

.field public final synthetic h:F

.field public final synthetic i:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/hjq/window/draggable/BaseDraggable$a;FIFLandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cn;->e:Lcom/hjq/window/draggable/BaseDraggable$a;

    iput p2, p0, Lcom/sunia/HTREnginev2/cn;->f:F

    iput p3, p0, Lcom/sunia/HTREnginev2/cn;->g:I

    iput p4, p0, Lcom/sunia/HTREnginev2/cn;->h:F

    iput-object p5, p0, Lcom/sunia/HTREnginev2/cn;->i:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cn;->e:Lcom/hjq/window/draggable/BaseDraggable$a;

    iget v1, p0, Lcom/sunia/HTREnginev2/cn;->f:F

    iget v2, p0, Lcom/sunia/HTREnginev2/cn;->g:I

    iget v3, p0, Lcom/sunia/HTREnginev2/cn;->h:F

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cn;->i:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/hjq/window/draggable/BaseDraggable$a;->a(Lcom/hjq/window/draggable/BaseDraggable$a;FIFLandroid/view/View;)V

    return-void
.end method
