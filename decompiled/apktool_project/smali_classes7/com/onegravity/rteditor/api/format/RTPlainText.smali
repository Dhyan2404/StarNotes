.class public final Lcom/onegravity/rteditor/api/format/RTPlainText;
.super Lcom/onegravity/rteditor/api/format/RTText;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/api/format/RTFormat;->PLAIN_TEXT:Lcom/onegravity/rteditor/api/format/RTFormat$PlainText;

    invoke-direct {p0, v0, p1}, Lcom/onegravity/rteditor/api/format/RTText;-><init>(Lcom/onegravity/rteditor/api/format/RTFormat;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public convertTo(Lcom/onegravity/rteditor/api/format/RTFormat;Lcom/onegravity/rteditor/api/RTMediaFactory;)Lcom/onegravity/rteditor/api/format/RTText;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/api/format/RTFormat;",
            "Lcom/onegravity/rteditor/api/RTMediaFactory<",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            "Lcom/onegravity/rteditor/api/media/RTAudio;",
            "Lcom/onegravity/rteditor/api/media/RTVideo;",
            ">;)",
            "Lcom/onegravity/rteditor/api/format/RTText;"
        }
    .end annotation

    instance-of v0, p1, Lcom/onegravity/rteditor/api/format/RTFormat$Html;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/onegravity/rteditor/converter/ConverterTextToHtml;->convert(Lcom/onegravity/rteditor/api/format/RTPlainText;)Lcom/onegravity/rteditor/api/format/RTHtml;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lcom/onegravity/rteditor/api/format/RTFormat$Spanned;

    if-eqz v0, :cond_1

    new-instance p1, Lcom/onegravity/rteditor/api/format/RTSpanned;

    new-instance p2, Landroid/text/SpannedString;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/api/format/RTPlainText;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p1, p2}, Lcom/onegravity/rteditor/api/format/RTSpanned;-><init>(Landroid/text/Spanned;)V

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/onegravity/rteditor/api/format/RTText;->convertTo(Lcom/onegravity/rteditor/api/format/RTFormat;Lcom/onegravity/rteditor/api/RTMediaFactory;)Lcom/onegravity/rteditor/api/format/RTText;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/api/format/RTPlainText;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/onegravity/rteditor/api/format/RTText;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method
