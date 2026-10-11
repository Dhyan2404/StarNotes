.class public final Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\"\u0010#J\u0010\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J \u0010\t\u001a\u00020\u00042\u0018\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u0006J\u0016\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u000f\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u0007J\u0008\u0010\u0011\u001a\u00020\u0004H\u0002J\u0008\u0010\u0012\u001a\u00020\u0004H\u0002J\u0008\u0010\u0013\u001a\u00020\u0004H\u0002R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0017R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;",
        "",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "loadFromAttribute",
        "Lkotlin/Function2;",
        "",
        "callback",
        "setTextChangedCallback",
        "maxLength",
        "",
        "customLengthRule",
        "setMaxLength",
        "release",
        "getTextLengthDisplay",
        "getMaxLengthDisplay",
        "a",
        "b",
        "c",
        "Landroid/widget/EditText;",
        "Landroid/widget/EditText;",
        "view",
        "Z",
        "enableLengthRule",
        "I",
        "Lcom/onyx/android/sdk/ui/BaseTextWatcher;",
        "d",
        "Lcom/onyx/android/sdk/ui/BaseTextWatcher;",
        "textWatcher",
        "Landroid/text/InputFilter;",
        "e",
        "Landroid/text/InputFilter;",
        "textLengthFilter",
        "<init>",
        "(Landroid/widget/EditText;)V",
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
.field public final a:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Z

.field public c:I

.field public d:Lcom/onyx/android/sdk/ui/BaseTextWatcher;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Landroid/text/InputFilter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1
    .param p1    # Landroid/widget/EditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->a:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->c:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->c()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->b()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    iget-boolean v0, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/ui/CustomLengthFilter;

    iget v1, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->c:I

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/CustomLengthFilter;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    iget v1, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->c:I

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->e:Landroid/text/InputFilter;

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public final c()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->release()V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/ui/CustomTextWatcher;

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->a:Landroid/widget/EditText;

    iget v2, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->c:I

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/ui/CustomTextWatcher;-><init>(Landroid/widget/EditText;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/ui/NormalTextWatcher;

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->a:Landroid/widget/EditText;

    iget v2, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->c:I

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/ui/NormalTextWatcher;-><init>(Landroid/widget/EditText;I)V

    :goto_0
    iput-object v0, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->d:Lcom/onyx/android/sdk/ui/BaseTextWatcher;

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->a:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final getMaxLengthDisplay()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->d:Lcom/onyx/android/sdk/ui/BaseTextWatcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BaseTextWatcher;->getMaxLengthDisplay()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getTextLengthDisplay()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->d:Lcom/onyx/android/sdk/ui/BaseTextWatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/BaseTextWatcher;->getLengthDisplay()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final loadFromAttribute(Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextEditTextMaxLengthHelper:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextEditTextMaxLengthHelper_enableLengthRule:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->b:Z

    sget v0, Lcom/onyx/android/sdk/skin/R$styleable;->TintTextEditTextMaxLengthHelper_android_maxLength:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->c:I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->a()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final release()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->d:Lcom/onyx/android/sdk/ui/BaseTextWatcher;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->d:Lcom/onyx/android/sdk/ui/BaseTextWatcher;

    :cond_0
    return-void
.end method

.method public final setMaxLength(IZ)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->c:I

    iput-boolean p2, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->b:Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->a()V

    return-void
.end method

.method public final setTextChangedCallback(Lkotlin/jvm/functions/Function2;)V
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

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->d:Lcom/onyx/android/sdk/ui/BaseTextWatcher;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->c()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/AppcompatEditTextMaxLengthHelper;->d:Lcom/onyx/android/sdk/ui/BaseTextWatcher;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/BaseTextWatcher;->setTextChangeCallback(Lkotlin/jvm/functions/Function2;)V

    :cond_1
    return-void
.end method
