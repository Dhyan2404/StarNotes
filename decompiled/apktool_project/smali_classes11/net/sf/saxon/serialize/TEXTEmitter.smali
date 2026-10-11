.class public Lnet/sf/saxon/serialize/TEXTEmitter;
.super Lnet/sf/saxon/serialize/XMLEmitter;
.source "SourceFile"


# static fields
.field public static final synthetic s:Z


# instance fields
.field public q:Ljava/util/regex/Pattern;

.field public r:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/serialize/XMLEmitter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/serialize/TEXTEmitter;->q:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lnet/sf/saxon/serialize/TEXTEmitter;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean p2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->started:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/TEXTEmitter;->openDocument()V

    :cond_0
    const/4 p2, 0x4

    invoke-static {p3, p2}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/XMLEmitter;->testCharacters(Lnet/sf/saxon/str/UnicodeString;)I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Output character not available in this encoding (x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SERE0008"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object p2, p0, Lnet/sf/saxon/serialize/TEXTEmitter;->q:Ljava/util/regex/Pattern;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/serialize/TEXTEmitter;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    :cond_3
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->write(Lnet/sf/saxon/str/UnicodeString;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public endElement()V
    .locals 0

    return-void
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public openDocument()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->characterSet:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;->getInstance()Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->characterSet:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v1, "encoding"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    if-eqz v0, :cond_1

    const-string v2, "utf8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    :cond_2
    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v3, "byte-order-mark"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v4, "{http://saxon.sf.net/}newline"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iput-object v3, p0, Lnet/sf/saxon/serialize/TEXTEmitter;->r:Ljava/lang/String;

    const-string v3, "\\n"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/serialize/TEXTEmitter;->q:Ljava/util/regex/Pattern;

    :cond_3
    const-string v3, "yes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "UTF-16LE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "UTF-16BE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const v1, 0xfeff

    invoke-interface {v0, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->started:Z

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    return-void
.end method

.method public writeDeclaration()V
    .locals 0

    return-void
.end method
