.class public final synthetic Lcom/sunia/HTREnginev2/dul;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;

.field public final synthetic g:Landroid/graphics/RectF;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dul;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/dul;->f:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/dul;->g:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dul;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/dul;->f:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dul;->g:Landroid/graphics/RectF;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->a(Lkotlin/jvm/internal/Ref$IntRef;Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V

    return-void
.end method
