.class public final synthetic Lcom/sunia/HTREnginev2/u2e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u2e;->e:Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u2e;->e:Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->n(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter$ColorSetItemViewHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method
