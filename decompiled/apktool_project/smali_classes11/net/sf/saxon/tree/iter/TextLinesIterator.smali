.class public abstract Lnet/sf/saxon/tree/iter/TextLinesIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# instance fields
.field protected checker:Lnet/sf/saxon/z/IntPredicateProxy;

.field public e:Lnet/sf/saxon/value/StringValue;

.field public f:I

.field public g:Lnet/sf/saxon/om/SequenceIterator;

.field protected location:Lnet/sf/saxon/s9api/Location;

.field protected reader:Ljava/io/LineNumberReader;

.field protected uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->e:Lnet/sf/saxon/value/StringValue;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/io/LineNumberReader;Lnet/sf/saxon/s9api/Location;Ljava/net/URI;Lnet/sf/saxon/z/IntPredicateProxy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->e:Lnet/sf/saxon/value/StringValue;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->f:I

    .line 7
    iput-object p1, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->reader:Ljava/io/LineNumberReader;

    .line 8
    iput-object p2, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->location:Lnet/sf/saxon/s9api/Location;

    .line 9
    iput-object p3, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->uri:Ljava/net/URI;

    .line 10
    iput-object p4, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->checker:Lnet/sf/saxon/z/IntPredicateProxy;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->reader:Ljava/io/LineNumberReader;

    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public discharge()V
    .locals 1

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->g:Lnet/sf/saxon/om/SequenceIterator;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/TextLinesIterator;->close()V

    return-void
.end method

.method public final f(Lnet/sf/saxon/z/IntPredicateProxy;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-char v0, v0

    invoke-static {v0, v1}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->combinePair(CC)I

    move-result v0

    move v1, v2

    :cond_0
    invoke-interface {p1, v0}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The unparsed-text file contains a character that is illegal in XML (line="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->f:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value=hex "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p2, "FOUT1190"

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->location:Lnet/sf/saxon/s9api/Location;

    invoke-virtual {p1, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw p1

    :cond_2
    return-void
.end method

.method public handleIOError(Ljava/net/URI;Ljava/io/IOException;)Lnet/sf/saxon/trans/XPathException;
    .locals 0

    invoke-static {p1, p2}, Lnet/sf/saxon/functions/UnparsedTextFunction;->handleIOError(Ljava/net/URI;Ljava/io/IOException;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/TextLinesIterator;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/StringValue;
    .locals 4

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->g:Lnet/sf/saxon/om/SequenceIterator;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    return-object p0

    .line 4
    :cond_0
    iget v0, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->f:I

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/TextLinesIterator;->close()V

    return-object v1

    .line 6
    :cond_1
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->reader:Ljava/io/LineNumberReader;

    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    iput-object v1, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->e:Lnet/sf/saxon/value/StringValue;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->f:I

    .line 9
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/TextLinesIterator;->close()V

    return-object v1

    .line 10
    :cond_2
    iget v1, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->f:I

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v3, 0xfeff

    if-ne v1, v3, :cond_3

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    :cond_3
    iget-object v1, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->checker:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/tree/iter/TextLinesIterator;->f(Lnet/sf/saxon/z/IntPredicateProxy;Ljava/lang/String;)V

    .line 13
    new-instance v1, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v1, v0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->e:Lnet/sf/saxon/value/StringValue;

    .line 14
    iget v0, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->f:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 15
    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0

    :catch_1
    move-exception v0

    .line 16
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/TextLinesIterator;->close()V

    .line 17
    iget-object v1, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->uri:Ljava/net/URI;

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/tree/iter/TextLinesIterator;->handleIOError(Ljava/net/URI;Ljava/io/IOException;)Lnet/sf/saxon/trans/XPathException;

    move-result-object v0

    .line 18
    iget-object p0, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->location:Lnet/sf/saxon/s9api/Location;

    if-eqz p0, :cond_4

    .line 19
    invoke-virtual {v0, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 20
    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p0
.end method
