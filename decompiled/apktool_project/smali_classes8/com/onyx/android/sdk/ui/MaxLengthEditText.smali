.class public Lcom/onyx/android/sdk/ui/MaxLengthEditText;
.super Lcom/onyx/android/sdk/theme/widgets/TintEditText;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0013\u0008\u0016\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016B\u001d\u0008\u0016\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u0015\u0010\u0019B%\u0008\u0016\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u001bJ\u001f\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J \u0010\u000b\u001a\u00020\u00062\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\tJ\u0006\u0010\u000c\u001a\u00020\u0002J\u0006\u0010\r\u001a\u00020\u0002J\u0008\u0010\u000e\u001a\u00020\u0006H\u0014R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/MaxLengthEditText;",
        "Lcom/onyx/android/sdk/theme/widgets/TintEditText;",
        "",
        "maxLength",
        "",
        "customLengthRule",
        "",
        "setMaxLength",
        "(Ljava/lang/Integer;Z)V",
        "Lkotlin/Function2;",
        "callback",
        "setTextChangeCallback",
        "getLength",
        "getMaxLength",
        "onDetachedFromWindow",
        "Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;",
        "h",
        "Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;",
        "editTextMaxLengthHelper",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "sdk-ui_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public h:Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/ui/MaxLengthEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v0, 0x101006e

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/android/sdk/ui/MaxLengthEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/TintEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;-><init>(Landroid/widget/EditText;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/MaxLengthEditText;->h:Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;

    .line 5
    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->loadFromAttribute(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getLength()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/MaxLengthEditText;->h:Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->getTextLengthDisplay()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getMaxLength()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/MaxLengthEditText;->h:Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->getMaxLengthDisplay()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/MaxLengthEditText;->h:Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->release()V

    :cond_0
    return-void
.end method

.method public final setMaxLength(Ljava/lang/Integer;Z)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/MaxLengthEditText;->h:Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->setMaxLength(IZ)V

    :cond_0
    return-void
.end method

.method public final setTextChangeCallback(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/MaxLengthEditText;->h:Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->setTextChangedCallback(Lkotlin/jvm/functions/Function2;)V

    :cond_0
    return-void
.end method
