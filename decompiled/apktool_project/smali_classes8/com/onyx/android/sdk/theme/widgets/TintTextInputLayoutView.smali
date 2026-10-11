.class public Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;
.super Lcom/google/android/material/textfield/TextInputLayout;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/widgets/Tintable;


# instance fields
.field public z1:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->get(Landroid/content/Context;)Lcom/onyx/android/sdk/theme/utils/TintManager;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;->z1:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;

    const/4 p0, -0x1

    .line 5
    invoke-virtual {v0, p2, p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->loadFromAttribute(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public tint()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;->z1:Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/AppCompatTextInputLayoutHelper;->tint()V

    :cond_0
    return-void
.end method
