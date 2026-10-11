.class public final synthetic Lcom/sunia/HTREnginev2/vwl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/base/rx/RxScroller;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/base/rx/RxScroller;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vwl;->a:Lcom/onyx/android/sdk/base/rx/RxScroller;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vwl;->a:Lcom/onyx/android/sdk/base/rx/RxScroller;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/base/rx/RxScroller;->c(Lcom/onyx/android/sdk/base/rx/RxScroller;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
