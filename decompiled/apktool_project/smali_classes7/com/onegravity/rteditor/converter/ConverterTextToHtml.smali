.class public Lcom/onegravity/rteditor/converter/ConverterTextToHtml;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x200

.field public static final b:Ljava/lang/String; = "bitcoin:[1-9a-km-zA-HJ-NP-Z]{27,34}(\\?[a-zA-Z0-9$\\-_.+!*\'(),%:@&=]*)?"

.field public static final c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 4

    const-string v0, "bitcoin:[1-9a-km-zA-HJ-NP-Z]{27,34}(\\?[a-zA-Z0-9$\\-_.+!*\'(),%:@&=]*)?"

    const-string v1, "<a href=\"$0\">$0</a>"

    invoke-static {p0, v0, v1}, Lcom/onegravity/rteditor/converter/ConverterTextToHtml;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "$0"

    invoke-virtual {v0, p1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0, p1, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_2
    const-string v2, "<a href=\"http://$0\">$0</a>"

    invoke-virtual {v0, p1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0, p2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static convert(Lcom/onegravity/rteditor/api/format/RTPlainText;)Lcom/onegravity/rteditor/api/format/RTHtml;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/api/format/RTPlainText;",
            ")",
            "Lcom/onegravity/rteditor/api/format/RTHtml<",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            "Lcom/onegravity/rteditor/api/media/RTAudio;",
            "Lcom/onegravity/rteditor/api/media/RTVideo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/api/format/RTPlainText;->getText()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/onegravity/rteditor/converter/ConverterTextToHtml;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v0, Lcom/onegravity/rteditor/api/format/RTHtml;

    sget-object v1, Lcom/onegravity/rteditor/api/format/RTFormat;->HTML:Lcom/onegravity/rteditor/api/format/RTFormat$Html;

    invoke-direct {v0, v1, p0}, Lcom/onegravity/rteditor/api/format/RTHtml;-><init>(Lcom/onegravity/rteditor/api/format/RTFormat$Html;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6
    invoke-static {p0, v0}, Lcom/onegravity/rteditor/converter/ConverterTextToHtml;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    const-string v1, "<br>\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&apos;"

    const-string v1, "&#39;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
