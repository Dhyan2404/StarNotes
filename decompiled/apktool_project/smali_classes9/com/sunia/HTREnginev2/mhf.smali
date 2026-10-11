.class public final synthetic Lcom/sunia/HTREnginev2/mhf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

.field public final synthetic f:Landroid/graphics/PointF;

.field public final synthetic g:Landroid/graphics/PointF;

.field public final synthetic h:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic i:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic j:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic k:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic l:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic m:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic n:F


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Landroid/graphics/PointF;Landroid/graphics/PointF;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mhf;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/mhf;->f:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/mhf;->g:Landroid/graphics/PointF;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/mhf;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/mhf;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Lcom/sunia/HTREnginev2/mhf;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p7, p0, Lcom/sunia/HTREnginev2/mhf;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p8, p0, Lcom/sunia/HTREnginev2/mhf;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p9, p0, Lcom/sunia/HTREnginev2/mhf;->m:Lkotlin/jvm/internal/Ref$FloatRef;

    iput p10, p0, Lcom/sunia/HTREnginev2/mhf;->n:F

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mhf;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/mhf;->f:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/mhf;->g:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/mhf;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/mhf;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/mhf;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lcom/sunia/HTREnginev2/mhf;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, p0, Lcom/sunia/HTREnginev2/mhf;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, p0, Lcom/sunia/HTREnginev2/mhf;->m:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v9, p0, Lcom/sunia/HTREnginev2/mhf;->n:F

    move-object v10, p1

    move-object v11, p2

    invoke-static/range {v0 .. v11}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->m0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Landroid/graphics/PointF;Landroid/graphics/PointF;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;FLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
