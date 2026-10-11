.class public final Lcom/onyx/galaxy/note/ui/view/SpannableTextView;
.super Lcom/onyx/android/sdk/theme/widgets/TintTextView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0002R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u000f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000cR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0012\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/view/SpannableTextView;",
        "Lcom/onyx/android/sdk/theme/widgets/TintTextView;",
        "",
        "text",
        "",
        "setSpannableText",
        "Landroid/widget/TextView$BufferType;",
        "type",
        "setText",
        "a",
        "",
        "h",
        "Ljava/lang/String;",
        "prefixText",
        "i",
        "suffixText",
        "",
        "j",
        "I",
        "prefixTextColor",
        "k",
        "suffixTextColor",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->i:Ljava/lang/String;

    sget v1, Lcom/onyx/android/sdk/base/R$color;->red_warning:I

    iput v1, p0, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->j:I

    iput v1, p0, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->k:I

    sget-object v1, Lcom/onyx/galaxy/note/R$styleable;->NecessaryTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->NecessaryTextView_prefixText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    move-object p2, v0

    :cond_0
    iput-object p2, p0, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->h:Ljava/lang/String;

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->NecessaryTextView_suffixText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->i:Ljava/lang/String;

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->NecessaryTextView_prefixTextColor:I

    sget v0, Lcom/onyx/android/sdk/base/R$color;->red_warning:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->j:I

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->NecessaryTextView_suffixTextColor:I

    sget v0, Lcom/onyx/android/sdk/base/R$color;->red_warning:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->k:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string p2, "getText(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->setSpannableText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->j:I

    if-nez v0, :cond_0

    sget v0, Lcom/onyx/android/sdk/base/R$color;->red_warning:I

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->j:I

    :cond_0
    iget v0, p0, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->k:I

    if-nez v0, :cond_1

    sget v0, Lcom/onyx/android/sdk/base/R$color;->red_warning:I

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->k:I

    :cond_1
    return-void
.end method

.method public final setSpannableText(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->a()V

    iget v0, p0, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->j:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    iget v1, p0, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->k:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->i:Ljava/lang/String;

    invoke-static {p1, v2, v3, v0, v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->buildSpanText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView$BufferType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;->setSpannableText(Ljava/lang/CharSequence;)V

    return-void
.end method
