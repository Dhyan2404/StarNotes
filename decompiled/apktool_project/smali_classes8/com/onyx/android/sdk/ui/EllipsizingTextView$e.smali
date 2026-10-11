.class public abstract Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/ui/EllipsizingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/ui/EllipsizingTextView;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/ui/EllipsizingTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->a:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final b(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->a:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->a:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->a:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->a:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const-string v0, "obtain(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->a:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-static {v0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->access$getLineAddVertPad$p(Lcom/onyx/android/sdk/ui/EllipsizingTextView;)F

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->a:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-static {p0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->access$getLineSpacingMult$p(Lcom/onyx/android/sdk/ui/EllipsizingTextView;)F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c()I
    .locals 3

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->b(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->a:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->a:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->a:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result p0

    sub-int/2addr v1, p0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p0

    div-int/2addr v1, p0

    return v1
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->a:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->ellipsizingLastFullyVisibleLine()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->c()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->a:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->getTextMaxLines()I

    move-result p0

    return p0
.end method

.method public final e(Ljava/lang/CharSequence;)Z
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->b(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->d()I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->e(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    return-object p1
.end method
