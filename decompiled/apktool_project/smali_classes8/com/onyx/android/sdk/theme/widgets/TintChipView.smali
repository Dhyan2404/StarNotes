.class public Lcom/onyx/android/sdk/theme/widgets/TintChipView;
.super Lcom/google/android/material/chip/Chip;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/widgets/Tintable;


# instance fields
.field public B0:Lcom/sunia/HTREnginev2/bc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintChipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/theme/widgets/TintChipView;->y(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/TintChipView;->y(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public tint()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintChipView;->B0:Lcom/sunia/HTREnginev2/bc;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/bc;->tint()V

    :cond_0
    return-void
.end method

.method public final y(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->get(Landroid/content/Context;)Lcom/onyx/android/sdk/theme/utils/TintManager;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/bc;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/bc;-><init>(Lcom/onyx/android/sdk/theme/widgets/TintChipView;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintChipView;->B0:Lcom/sunia/HTREnginev2/bc;

    invoke-virtual {v0, p2, p3}, Lcom/sunia/HTREnginev2/bc;->loadFromAttribute(Landroid/util/AttributeSet;I)V

    return-void
.end method
