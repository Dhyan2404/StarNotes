.class public Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;
.super Lcom/onegravity/rteditor/converter/tagsoup/util/CodePointTranslator;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v2, v0, v1}, Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onegravity/rteditor/converter/tagsoup/util/CodePointTranslator;-><init>()V

    .line 2
    iput p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;->a:I

    .line 3
    iput p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;->b:I

    .line 4
    iput-boolean p3, p0, Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;->c:Z

    return-void
.end method

.method public static above(I)Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;->outsideOf(II)Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;

    move-result-object p0

    return-object p0
.end method

.method public static below(I)Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;->outsideOf(II)Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;

    move-result-object p0

    return-object p0
.end method

.method public static between(II)Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;
    .locals 2

    new-instance v0, Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
.end method

.method public static outsideOf(II)Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;
    .locals 2

    new-instance v0, Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method public translate(ILjava/io/Writer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;->a:I

    if-lt p1, v0, :cond_0

    iget p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;->b:I

    if-le p1, p0, :cond_2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;->a:I

    if-lt p1, v0, :cond_2

    iget p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/util/NumericEntityEscaper;->b:I

    if-gt p1, p0, :cond_2

    return v1

    :cond_2
    const-string p0, "&#"

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p0, 0xa

    invoke-static {p1, p0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p0, 0x3b

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(I)V

    const/4 p0, 0x1

    return p0
.end method
