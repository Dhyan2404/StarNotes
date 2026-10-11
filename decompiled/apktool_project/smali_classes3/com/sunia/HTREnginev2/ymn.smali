.class public final synthetic Lcom/sunia/HTREnginev2/ymn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:Landroidx/transition/Transition$g;


# direct methods
.method public synthetic constructor <init>(Landroidx/transition/Transition$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ymn;->a:Landroidx/transition/Transition$g;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ymn;->a:Landroidx/transition/Transition$g;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/transition/Transition$g;->a(Landroidx/transition/Transition$g;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
