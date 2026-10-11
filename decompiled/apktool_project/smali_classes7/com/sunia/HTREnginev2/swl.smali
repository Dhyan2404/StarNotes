.class public final synthetic Lcom/sunia/HTREnginev2/swl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/base/rx/RxScroller;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/base/rx/RxScroller;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/swl;->e:Lcom/onyx/android/sdk/base/rx/RxScroller;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/swl;->e:Lcom/onyx/android/sdk/base/rx/RxScroller;

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/rx/RxScroller;->a(Lcom/onyx/android/sdk/base/rx/RxScroller;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method
