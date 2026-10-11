.class public final Lcom/onyx/android/sdk/ui/EllipsizingTextView$a;
.super Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/ui/EllipsizingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEllipsizingTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EllipsizingTextView.kt\ncom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeEndStrategy\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,531:1\n107#2:532\n79#2,22:533\n107#2:555\n79#2,22:556\n*S KotlinDebug\n*F\n+ 1 EllipsizingTextView.kt\ncom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeEndStrategy\n*L\n377#1:532\n377#1:533,22\n386#1:555\n386#1:556,22\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEllipsizingTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EllipsizingTextView.kt\ncom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeEndStrategy\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,531:1\n107#2:532\n79#2,22:533\n107#2:555\n79#2,22:556\n*S KotlinDebug\n*F\n+ 1 EllipsizingTextView.kt\ncom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeEndStrategy\n*L\n377#1:532\n377#1:533,22\n386#1:555\n386#1:556,22\n*E\n"
    }
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

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$a;->b:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;-><init>(Lcom/onyx/android/sdk/ui/EllipsizingTextView;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 13
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

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$a;->b:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->getTextMaxLines()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v0, v1, v0

    invoke-static {}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->access$getELLIPSIS$cp()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->access$getELLIPSIS$cp()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_0
    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "substring(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v2

    move v4, v0

    move v5, v4

    :goto_0
    const/16 v6, 0x20

    if-gt v4, v3, :cond_6

    if-nez v5, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gtz v7, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v0

    :goto_2
    if-nez v5, :cond_4

    if-nez v7, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    add-int/2addr v3, v2

    invoke-interface {v1, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$a;->g(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->access$getELLIPSIS$cp()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->e(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v1

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    goto :goto_9

    :cond_7
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v2

    move v4, v0

    move v5, v4

    :goto_5
    if-gt v4, v3, :cond_d

    if-nez v5, :cond_8

    move v7, v4

    goto :goto_6

    :cond_8
    move v7, v3

    :goto_6
    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gtz v7, :cond_9

    move v7, v2

    goto :goto_7

    :cond_9
    move v7, v0

    :goto_7
    if-nez v5, :cond_b

    if-nez v7, :cond_a

    move v5, v2

    goto :goto_5

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    if-nez v7, :cond_c

    goto :goto_8

    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_d
    :goto_8
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_e
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$a;->g(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->access$getELLIPSIS$cp()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    :cond_f
    return-object v6
.end method

.method public final g(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "workingText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$a;->b:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->getEndPunctPattern()Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "replaceFirst(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
