.class public final synthetic Lcom/sunia/HTREnginev2/ulm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ulm;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ulm;->f:Landroid/view/View;

    iput p3, p0, Lcom/sunia/HTREnginev2/ulm;->g:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ulm;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ulm;->f:Landroid/view/View;

    iget p0, p0, Lcom/sunia/HTREnginev2/ulm;->g:I

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;->b(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;Landroid/view/View;ILandroid/view/View;)V

    return-void
.end method
