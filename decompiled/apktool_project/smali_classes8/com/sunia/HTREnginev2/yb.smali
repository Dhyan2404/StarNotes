.class public abstract Lcom/sunia/HTREnginev2/yb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Z

.field protected mTintManager:Lcom/onyx/android/sdk/theme/utils/TintManager;

.field protected mView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/TintManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/onyx/android/sdk/theme/utils/TintManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/yb;->mTintManager:Lcom/onyx/android/sdk/theme/utils/TintManager;

    return-void
.end method


# virtual methods
.method public abstract loadFromAttribute(Landroid/util/AttributeSet;I)V
.end method

.method public setSkipNextApply(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/yb;->a:Z

    return-void
.end method

.method public skipNextApply()Z
    .locals 3

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/yb;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/yb;->a:Z

    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/yb;->a:Z

    return v1
.end method

.method public abstract tint()V
.end method
