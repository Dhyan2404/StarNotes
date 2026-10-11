.class public Lcom/onegravity/rteditor/api/format/RTHtml;
.super Lcom/onegravity/rteditor/api/format/RTText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lcom/onegravity/rteditor/api/media/RTImage;",
        "A::",
        "Lcom/onegravity/rteditor/api/media/RTAudio;",
        "V::",
        "Lcom/onegravity/rteditor/api/media/RTVideo;",
        ">",
        "Lcom/onegravity/rteditor/api/format/RTText;"
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/api/format/RTFormat$Html;Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/onegravity/rteditor/api/format/RTHtml;-><init>(Lcom/onegravity/rteditor/api/format/RTFormat$Html;Ljava/lang/CharSequence;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/onegravity/rteditor/api/format/RTFormat$Html;Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/api/format/RTFormat$Html;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "TI;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/onegravity/rteditor/api/format/RTText;-><init>(Lcom/onegravity/rteditor/api/format/RTFormat;Ljava/lang/CharSequence;)V

    .line 4
    iput-object p3, p0, Lcom/onegravity/rteditor/api/format/RTHtml;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/onegravity/rteditor/api/format/RTFormat;->HTML:Lcom/onegravity/rteditor/api/format/RTFormat$Html;

    invoke-direct {p0, v0, p1}, Lcom/onegravity/rteditor/api/format/RTHtml;-><init>(Lcom/onegravity/rteditor/api/format/RTFormat$Html;Ljava/lang/CharSequence;)V

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

    instance-of v0, p1, Lcom/onegravity/rteditor/api/format/RTFormat$PlainText;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToText;->convert(Lcom/onegravity/rteditor/api/format/RTHtml;)Lcom/onegravity/rteditor/api/format/RTPlainText;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lcom/onegravity/rteditor/api/format/RTFormat$Spanned;

    if-eqz v0, :cond_1

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;

    invoke-direct {p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;-><init>()V

    invoke-virtual {p1, p0, p2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->convert(Lcom/onegravity/rteditor/api/format/RTHtml;Lcom/onegravity/rteditor/api/RTMediaFactory;)Lcom/onegravity/rteditor/api/format/RTSpanned;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/onegravity/rteditor/api/format/RTText;->convertTo(Lcom/onegravity/rteditor/api/format/RTFormat;Lcom/onegravity/rteditor/api/RTMediaFactory;)Lcom/onegravity/rteditor/api/format/RTText;

    move-result-object p0

    return-object p0
.end method

.method public getImages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TI;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onegravity/rteditor/api/format/RTHtml;->c:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/api/format/RTHtml;->getText()Ljava/lang/String;

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
