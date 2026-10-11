.class public final synthetic Lcom/sunia/HTREnginev2/f7j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

.field public final synthetic f:Landroid/graphics/RectF;

.field public final synthetic g:Landroid/graphics/RectF;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f7j;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/f7j;->f:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/f7j;->g:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/f7j;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/f7j;->f:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f7j;->g:Landroid/graphics/RectF;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->b(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method
