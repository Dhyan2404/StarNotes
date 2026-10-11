.class public final synthetic Lcom/sunia/HTREnginev2/j6h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;Landroid/view/View;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j6h;->e:Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/j6h;->f:Landroid/view/View;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/j6h;->g:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/j6h;->e:Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/j6h;->f:Landroid/view/View;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j6h;->g:Landroid/graphics/Point;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;->a(Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;Landroid/view/View;Landroid/graphics/Point;)V

    return-void
.end method
