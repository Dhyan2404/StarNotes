.class public final Lcom/onegravity/rteditor/converter/html/DefaultSpannedToHtmlConverter;
.super Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\n\u0010\u0014\u001a\u00060\u0012j\u0002`\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J&\u0010\t\u001a\u00020\u00082\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0003H\u0002J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0003H\u0002\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onegravity/rteditor/converter/html/DefaultSpannedToHtmlConverter;",
        "Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;",
        "Ljava/util/SortedSet;",
        "Landroid/text/style/CharacterStyle;",
        "spans",
        "",
        "start",
        "end",
        "",
        "convertText",
        "style",
        "",
        "b",
        "a",
        "Landroid/text/Spanned;",
        "text",
        "Lcom/onegravity/rteditor/api/format/RTFormat;",
        "format",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "out",
        "<init>",
        "(Landroid/text/Spanned;Lcom/onegravity/rteditor/api/format/RTFormat;Ljava/lang/StringBuilder;)V",
        "sdk-rteditor_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/text/Spanned;Lcom/onegravity/rteditor/api/format/RTFormat;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1    # Landroid/text/Spanned;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onegravity/rteditor/api/format/RTFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/StringBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;-><init>(Landroid/text/Spanned;Lcom/onegravity/rteditor/api/format/RTFormat;Ljava/lang/StringBuilder;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/text/style/CharacterStyle;)V
    .locals 2

    instance-of v0, p1, Landroid/text/style/URLSpan;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "</a>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lcom/onegravity/rteditor/spans/TypefaceSpan;

    const-string v1, "</font>"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Landroid/text/style/ForegroundColorSpan;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    instance-of v0, p1, Landroid/text/style/StrikethroughSpan;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "</strike>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    instance-of v0, p1, Landroid/text/style/SubscriptSpan;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "</sub>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    instance-of v0, p1, Landroid/text/style/SuperscriptSpan;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "</sup>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/onegravity/rteditor/spans/UnderlineSpan;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "</u>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lcom/onegravity/rteditor/spans/BoldSpan;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "</b>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_9
    instance-of p1, p1, Lcom/onegravity/rteditor/spans/ItalicSpan;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "</i>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_0
    return-void
.end method

.method public final b(Landroid/text/style/CharacterStyle;)Z
    .locals 5

    instance-of v0, p1, Lcom/onegravity/rteditor/spans/BoldSpan;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "<b>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/onegravity/rteditor/spans/ItalicSpan;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "<i>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_1
    instance-of v0, p1, Lcom/onegravity/rteditor/spans/UnderlineSpan;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "<u>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_2
    instance-of v0, p1, Landroid/text/style/SuperscriptSpan;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "<sup>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_3
    instance-of v0, p1, Landroid/text/style/SubscriptSpan;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "<sub>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_4
    instance-of v0, p1, Landroid/text/style/StrikethroughSpan;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "<strike>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_5
    instance-of v0, p1, Lcom/onegravity/rteditor/spans/TypefaceSpan;

    const-string v1, "\">"

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<font face=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/onegravity/rteditor/spans/TypefaceSpan;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/spans/TypefaceSpan;->getValue()Lcom/onegravity/rteditor/fonts/RTTypeface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onegravity/rteditor/fonts/RTTypeface;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/onegravity/rteditor/converter/tagsoup/util/StringEscapeUtils;->escapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_6
    instance-of v0, p1, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v0, :cond_7

    check-cast p1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p1}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result p1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<font "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data-size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "px\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "style=\"font-size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "px\">"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_7
    instance-of v0, p1, Landroid/text/style/ForegroundColorSpan;

    const/16 v2, 0x30

    const/4 v3, 0x6

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "<font style=\"color:#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_9
    instance-of v0, p1, Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "<font style=\"background-color:#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p1}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_b
    instance-of v0, p1, Lcom/onegravity/rteditor/spans/LinkSpan;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<a href=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.text.style.URLSpan"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_c
    instance-of v0, p1, Lcom/onegravity/rteditor/spans/ImageSpan;

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    check-cast p1, Lcom/onegravity/rteditor/spans/ImageSpan;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/spans/ImageSpan;->getImage()Lcom/onegravity/rteditor/api/media/RTImage;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getImages$sdk_rteditor_release()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getFormat()Lcom/onegravity/rteditor/api/format/RTFormat;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/onegravity/rteditor/api/media/RTMedia;->getFilePath(Lcom/onegravity/rteditor/api/format/RTFormat;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<img src=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2

    :cond_d
    instance-of v0, p1, Lcom/onegravity/rteditor/spans/AudioSpan;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/onegravity/rteditor/spans/AudioSpan;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/spans/AudioSpan;->getAudio()Lcom/onegravity/rteditor/api/media/RTAudio;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getFormat()Lcom/onegravity/rteditor/api/format/RTFormat;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/onegravity/rteditor/api/media/RTMedia;->getFilePath(Lcom/onegravity/rteditor/api/format/RTFormat;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<embed src=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2

    :cond_e
    instance-of v0, p1, Lcom/onegravity/rteditor/spans/VideoSpan;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/onegravity/rteditor/spans/VideoSpan;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/spans/VideoSpan;->getVideo()Lcom/onegravity/rteditor/api/media/RTVideo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getFormat()Lcom/onegravity/rteditor/api/format/RTFormat;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/onegravity/rteditor/api/media/RTMedia;->getFilePath(Lcom/onegravity/rteditor/api/format/RTFormat;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<video controls src=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2

    :cond_f
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public convertText(Ljava/util/SortedSet;II)V
    .locals 4
    .param p1    # Ljava/util/SortedSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Landroid/text/style/CharacterStyle;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "spans"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge p2, p3, :cond_5

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/CharacterStyle;

    :goto_1
    const v1, 0x7fffffff

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getText()Landroid/text/Spanned;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    :goto_2
    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getText()Landroid/text/Spanned;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    :goto_3
    if-ge p2, v2, :cond_3

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getOut()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->getText()Landroid/text/Spanned;

    move-result-object v1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v1, p2, v3}, Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;->escape$sdk_rteditor_release(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v2

    goto :goto_0

    :cond_3
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/html/DefaultSpannedToHtmlConverter;->b(Landroid/text/style/CharacterStyle;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/onegravity/rteditor/converter/html/DefaultSpannedToHtmlConverter;->convertText(Ljava/util/SortedSet;II)V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/html/DefaultSpannedToHtmlConverter;->a(Landroid/text/style/CharacterStyle;)V

    move p2, v1

    goto :goto_0

    :cond_5
    return-void
.end method
