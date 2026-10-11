.class public final synthetic Lcom/sunia/HTREnginev2/owg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/owg;->e:Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/owg;->e:Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->a(Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;Landroid/animation/ValueAnimator;)V

    return-void
.end method
