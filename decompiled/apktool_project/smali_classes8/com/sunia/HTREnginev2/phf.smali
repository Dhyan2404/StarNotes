.class public final synthetic Lcom/sunia/HTREnginev2/phf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/phf;->e:Landroid/view/View;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/phf;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/phf;->e:Landroid/view/View;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/phf;->f:Landroid/view/View;

    invoke-static {v0, p0, p1, p2}, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropUtils;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method
