.class public final Lcom/onyx/android/sdk/ui/EllipsizingTextView$d;
.super Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/ui/EllipsizingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEllipsizingTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EllipsizingTextView.kt\ncom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeStartStrategy\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,531:1\n107#2:532\n79#2,22:533\n107#2:555\n79#2,22:556\n*S KotlinDebug\n*F\n+ 1 EllipsizingTextView.kt\ncom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeStartStrategy\n*L\n428#1:532\n428#1:533,22\n438#1:555\n438#1:556,22\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEllipsizingTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EllipsizingTextView.kt\ncom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeStartStrategy\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,531:1\n107#2:532\n79#2,22:533\n107#2:555\n79#2,22:556\n*S KotlinDebug\n*F\n+ 1 EllipsizingTextView.kt\ncom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeStartStrategy\n*L\n428#1:532\n428#1:533,22\n438#1:555\n438#1:556,22\n*E\n"
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

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$d;->b:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

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

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$d;->b:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->getTextMaxLines()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int v0, v5, v0

    invoke-static {}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->access$getELLIPSIS$cp()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->access$getELLIPSIS$cp()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_0
    invoke-static {p1, v0, v5}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    move v6, v4

    :goto_0
    const/16 v7, 0x20

    if-gt v4, v1, :cond_6

    if-nez v6, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    move v8, v1

    :goto_1
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v8

    if-gtz v8, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move v8, v3

    :goto_2
    if-nez v6, :cond_4

    if-nez v8, :cond_3

    move v6, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    add-int/2addr v1, v2

    invoke-interface {v0, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->access$getELLIPSIS$cp()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->e(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v9, 0x20

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    move-object v8, v0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_7

    goto :goto_9

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v2

    move v4, v3

    move v6, v4

    :goto_5
    if-gt v4, v1, :cond_d

    if-nez v6, :cond_8

    move v8, v4

    goto :goto_6

    :cond_8
    move v8, v1

    :goto_6
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v8

    if-gtz v8, :cond_9

    move v8, v2

    goto :goto_7

    :cond_9
    move v8, v3

    :goto_7
    if-nez v6, :cond_b

    if-nez v8, :cond_a

    move v6, v2

    goto :goto_5

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    if-nez v8, :cond_c

    goto :goto_8

    :cond_c
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_d
    :goto_8
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_e
    :goto_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->access$getELLIPSIS$cp()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_f

    move-object v3, p1

    check-cast v3, Landroid/text/Spanned;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int v4, v5, p0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, v0

    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    :cond_f
    return-object v0
.end method
