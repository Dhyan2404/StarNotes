.class public final Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StyleBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder$WhenMappings;
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/StringBuilder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "font-family"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "font-size"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "line-height"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "color"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text-align"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text-decoration"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "font-style"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "font-weight"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "font-stretch"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->getColor()I

    move-result p0

    const v0, 0xffffff

    and-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "#%06x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(format, *args)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->getFontFamily()Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;->getFonts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Helv"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->getFontFamily()Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;->getFonts()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->getFontSize()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "pt"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->getFontStretch()Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;

    const-string p0, "normal"

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->getFontStyle()Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "italic"

    goto :goto_0

    :cond_0
    const-string p0, "normal"

    :goto_0
    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->getFontWeight()Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "bold"

    goto :goto_0

    :cond_0
    const-string p0, "normal"

    :goto_0
    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->getFontSize()F

    move-result v1

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->getLineHeight()F

    move-result p0

    mul-float/2addr v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "pt"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->getTextAlign()Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "left"

    goto :goto_0

    :cond_0
    const-string p0, "right"

    goto :goto_0

    :cond_1
    const-string p0, "center"

    :goto_0
    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->getTextDecoration()Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "underline"

    goto :goto_0

    :cond_0
    const-string p0, "normal"

    :goto_0
    return-object p0
.end method
