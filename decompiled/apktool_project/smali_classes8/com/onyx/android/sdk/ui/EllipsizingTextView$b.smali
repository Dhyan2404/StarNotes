.class public final Lcom/onyx/android/sdk/ui/EllipsizingTextView$b;
.super Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/ui/EllipsizingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lcom/onyx/android/sdk/ui/EllipsizingTextView;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/ui/EllipsizingTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$b;->b:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;-><init>(Lcom/onyx/android/sdk/ui/EllipsizingTextView;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 14
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fullText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->b(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$b;->b:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->getTextMaxLines()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    iget-object v3, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$b;->b:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->getTextMaxLines()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    if-lt v5, v3, :cond_0

    invoke-virtual {p0, v4, p1}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$b;->g(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    add-int v5, v0, v1

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v1

    const/4 v6, 0x4

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v0, v3, v0

    iget-object v7, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$b;->b:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    const-string v8, " "

    invoke-virtual {v7, v4, v8, v1, v5}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->searchMostRight(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    iget-object v5, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$b;->b:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-virtual {v5, v4, v8, v0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->next(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v7, v3, -0x4

    if-ge v5, v7, :cond_2

    if-gez v5, :cond_1

    goto :goto_0

    :cond_1
    move v0, v5

    :cond_2
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v9, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->access$getELLIPSIS$cp()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move v12, v2

    move-object v11, v10

    move-object v10, v9

    move-object v9, v7

    move v7, v1

    move v1, v0

    :goto_1
    invoke-virtual {p0, v11}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->e(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    if-le v7, v2, :cond_6

    sub-int v11, v3, v0

    if-gt v11, v6, :cond_3

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v5, v7}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v9

    const-string v11, "substring(...)"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->access$getELLIPSIS$cp()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_3
    if-eqz v12, :cond_4

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$b;->b:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-virtual {v1, v4, v8, v0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->next(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    :cond_4
    if-lez v1, :cond_5

    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    move v12, v5

    :goto_2
    invoke-static {p1, v0, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->access$getELLIPSIS$cp()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v11, p1}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$b;->g(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "workingText"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    instance-of v0, p2, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    :cond_0
    return-object p0
.end method
