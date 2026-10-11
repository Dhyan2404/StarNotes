.class public Lcom/onegravity/rteditor/converter/ConverterHtmlToText;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/converter/ConverterHtmlToText$b;
    }
.end annotation


# static fields
.field public static final a:C = '\ufffc'

.field public static final b:C = ' '

.field public static final c:C = '\u00a0'

.field public static final d:C = ' '


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lcom/onegravity/rteditor/api/format/RTHtml;)Lcom/onegravity/rteditor/api/format/RTPlainText;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/api/format/RTHtml<",
            "+",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            "+",
            "Lcom/onegravity/rteditor/api/media/RTAudio;",
            "+",
            "Lcom/onegravity/rteditor/api/media/RTVideo;",
            ">;)",
            "Lcom/onegravity/rteditor/api/format/RTPlainText;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/api/format/RTHtml;->getText()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToText$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToText$b;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToText$a;)V

    const/16 v2, 0x3f

    invoke-static {p0, v2, v1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const v0, 0xfffc

    const/16 v1, 0x20

    .line 3
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa0

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v0, Lcom/onegravity/rteditor/api/format/RTPlainText;

    invoke-direct {v0, p0}, Lcom/onegravity/rteditor/api/format/RTPlainText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 6
    new-instance v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToText$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToText$b;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToText$a;)V

    const/16 v2, 0x3f

    invoke-static {p0, v2, v1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const v0, 0xfffc

    const/16 v1, 0x20

    .line 8
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa0

    .line 9
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
