.class public Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;
.super Lcom/google/android/material/tabs/TabLayout;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/widgets/Tintable;


# instance fields
.field public a1:Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->get(Landroid/content/Context;)Lcom/onyx/android/sdk/theme/utils/TintManager;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;-><init>(Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;->a1:Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;

    .line 7
    invoke-virtual {v0, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->loadFromAttribute(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public initTabViewBackgroundColor()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;->a1:Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->initTabViewBackgroundColor()V

    :cond_0
    return-void
.end method

.method public tint()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;->a1:Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTabLayoutViewHelper;->tint()V

    :cond_0
    return-void
.end method
