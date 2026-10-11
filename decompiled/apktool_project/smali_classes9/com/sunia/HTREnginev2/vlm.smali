.class public final synthetic Lcom/sunia/HTREnginev2/vlm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vlm;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vlm;->f:Landroid/view/View;

    iput p3, p0, Lcom/sunia/HTREnginev2/vlm;->g:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vlm;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/vlm;->f:Landroid/view/View;

    iget p0, p0, Lcom/sunia/HTREnginev2/vlm;->g:I

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->b(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;Landroid/view/View;ILandroid/view/View;)V

    return-void
.end method
