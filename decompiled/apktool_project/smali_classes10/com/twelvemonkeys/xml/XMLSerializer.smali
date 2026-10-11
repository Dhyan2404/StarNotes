.class public Lcom/twelvemonkeys/xml/XMLSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/xml/XMLSerializer$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/OutputStream;

.field public final b:Ljava/nio/charset/Charset;

.field public final c:Lcom/twelvemonkeys/xml/XMLSerializer$a;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twelvemonkeys/xml/XMLSerializer;->a:Ljava/io/OutputStream;

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/xml/XMLSerializer;->b:Ljava/nio/charset/Charset;

    new-instance p1, Lcom/twelvemonkeys/xml/XMLSerializer$a;

    invoke-direct {p1}, Lcom/twelvemonkeys/xml/XMLSerializer$a;-><init>()V

    iput-object p1, p0, Lcom/twelvemonkeys/xml/XMLSerializer;->c:Lcom/twelvemonkeys/xml/XMLSerializer$a;

    return-void
.end method

.method public static a(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method public static b(Ljava/io/PrintWriter;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lcom/twelvemonkeys/xml/XMLSerializer$a;->f:I

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lcom/twelvemonkeys/xml/XMLSerializer$a;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/twelvemonkeys/xml/XMLSerializer;->e(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_2

    const/16 v4, 0x26

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "&amp;"

    invoke-static {p0, v2, v0, v1, v3}, Lcom/twelvemonkeys/xml/XMLSerializer;->a(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_2
    const-string v3, "&quot;"

    invoke-static {p0, v2, v0, v1, v3}, Lcom/twelvemonkeys/xml/XMLSerializer;->a(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/twelvemonkeys/xml/XMLSerializer;->f(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x26

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "&gt;"

    invoke-static {p0, v2, v0, v1, v3}, Lcom/twelvemonkeys/xml/XMLSerializer;->a(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_2
    const-string v3, "&lt;"

    invoke-static {p0, v2, v0, v1, v3}, Lcom/twelvemonkeys/xml/XMLSerializer;->a(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_3
    const-string v3, "&amp;"

    invoke-static {p0, v2, v0, v1, v3}, Lcom/twelvemonkeys/xml/XMLSerializer;->a(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    const/16 v2, 0x26

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x26

    if-eq v1, v2, :cond_0

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static g(Lorg/w3c/dom/Node;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V
    .locals 2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "xml:space"

    invoke-interface {p0, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "preserve"

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/twelvemonkeys/xml/XMLSerializer$a;->g:Z

    goto :goto_0

    :cond_0
    const-string v0, "default"

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/twelvemonkeys/xml/XMLSerializer$a;->g:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "]]>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Malformed input document: CDATA block may not contain the string \']]>\'"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Malformed input document: Comment may not contain the string \'--\'"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    :try_start_0
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    const-string v2, "test"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3}, Lorg/w3c/dom/DOMImplementation;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v3

    const-string v4, "http://www.twelvemonkeys.com/xml/test"

    invoke-interface {v1, v4, v2, v3}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v5

    invoke-interface {v1, v5, v3}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v5, "sub"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v3, "http://more.com/1999/namespace"

    const-string v6, "more:more"

    invoke-interface {v1, v3, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string v6, "foo"

    invoke-interface {v3, v6, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "bar"

    const-string v6, "\'really\' \"legal\" & ok"

    invoke-interface {v3, v2, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v2, "Simply some text."

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v2, "&something escaped;"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v2, "More & <more>!"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v2, "\"<<\'&\'>>\""

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v2, "another"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v5, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v2, "yet-another"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "this-one"

    const-string v6, "with-params"

    invoke-interface {v2, v3, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v2, "pre"

    invoke-interface {v1, v4, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    const-string v6, "xml:space"

    const-string v7, "preserve"

    invoke-interface {v2, v3, v6, v7}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, " \t \n\r some text & white \' \'   \n   "

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v5, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v2, "tight"

    invoke-interface {v1, v4, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2, v3, v6, v7}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "no-space-around-me"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v5, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "XMLSerializer:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Lcom/twelvemonkeys/xml/XMLSerializer;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Lcom/twelvemonkeys/xml/XMLSerializer;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/twelvemonkeys/xml/XMLSerializer;->serialize(Lorg/w3c/dom/Document;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "DOMSerializer:"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Lcom/twelvemonkeys/xml/DOMSerializer;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v5, v4}, Lcom/twelvemonkeys/xml/DOMSerializer;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/twelvemonkeys/xml/DOMSerializer;->setPrettyPrint(Z)V

    invoke-virtual {v3, v1}, Lcom/twelvemonkeys/xml/DOMSerializer;->serialize(Lorg/w3c/dom/Document;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Lcom/twelvemonkeys/xml/XMLSerializer;

    invoke-direct {v5, v0, v4}, Lcom/twelvemonkeys/xml/XMLSerializer;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/twelvemonkeys/xml/XMLSerializer;->serialize(Lorg/w3c/dom/Document;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Lcom/twelvemonkeys/xml/DOMSerializer;

    invoke-direct {v6, v5, v4}, Lcom/twelvemonkeys/xml/DOMSerializer;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/twelvemonkeys/xml/DOMSerializer;->serialize(Lorg/w3c/dom/Document;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "XMLSerializer reparsed XMLSerializer:"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/twelvemonkeys/xml/XMLSerializer;->serialize(Lorg/w3c/dom/Document;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DOMSerializer reparsed XMLSerializer:"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/twelvemonkeys/xml/DOMSerializer;->serialize(Lorg/w3c/dom/Document;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "XMLSerializer reparsed DOMSerializer:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/twelvemonkeys/xml/XMLSerializer;->serialize(Lorg/w3c/dom/Document;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DOMSerializer reparsed DOMSerializer:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/twelvemonkeys/xml/DOMSerializer;->serialize(Lorg/w3c/dom/Document;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method


# virtual methods
.method public final indentation(Ljava/lang/String;)Lcom/twelvemonkeys/xml/XMLSerializer;
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/xml/XMLSerializer;->c:Lcom/twelvemonkeys/xml/XMLSerializer$a;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "\t"

    :goto_0
    iput-object p1, v0, Lcom/twelvemonkeys/xml/XMLSerializer$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final j(Ljava/io/PrintWriter;Lorg/w3c/dom/Node;)V
    .locals 0

    const-string p0, "<![CDATA["

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/twelvemonkeys/xml/XMLSerializer;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "]]>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final k(Ljava/io/PrintWriter;Lorg/w3c/dom/Node;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V
    .locals 0

    iget-boolean p0, p3, Lcom/twelvemonkeys/xml/XMLSerializer$a;->h:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/twelvemonkeys/xml/XMLSerializer;->i(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "<!--"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p3, "<!-- "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "-->"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, " -->"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final l(Ljava/io/PrintWriter;Lorg/w3c/dom/DocumentType;)V
    .locals 2

    if-eqz p2, :cond_4

    const-string p0, "<!DOCTYPE "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/twelvemonkeys/lang/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " PUBLIC "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twelvemonkeys/lang/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/twelvemonkeys/lang/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, " SYSTEM \""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, " \""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "\""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/twelvemonkeys/lang/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, " [ "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, " ]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    const-string p0, ">"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final m(Ljava/io/PrintWriter;Lorg/w3c/dom/Node;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V
    .locals 2

    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/twelvemonkeys/xml/XMLSerializer;->o(Ljava/io/PrintWriter;Lorg/w3c/dom/Node;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n(Ljava/io/PrintWriter;Lorg/w3c/dom/Element;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V
    .locals 9

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "=\""

    if-eqz v0, :cond_1

    iget-object v3, p3, Lcom/twelvemonkeys/xml/XMLSerializer$a;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iput-object v0, p3, Lcom/twelvemonkeys/xml/XMLSerializer$a;->i:Ljava/lang/String;

    const-string v3, " xmlns"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, " xmlns:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move v4, v3

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v0, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Attr;

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "xmlns"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_3

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_3

    :cond_2
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/twelvemonkeys/xml/XMLSerializer;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    const-string v1, "</"

    const-string v2, ">"

    if-eqz v0, :cond_8

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/twelvemonkeys/xml/XMLSerializer$a;->g:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_5
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {p3}, Lcom/twelvemonkeys/xml/XMLSerializer$a;->b()Lcom/twelvemonkeys/xml/XMLSerializer$a;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5}, Lcom/twelvemonkeys/xml/XMLSerializer;->o(Ljava/io/PrintWriter;Lorg/w3c/dom/Node;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-boolean p0, p3, Lcom/twelvemonkeys/xml/XMLSerializer$a;->g:Z

    if-nez p0, :cond_7

    invoke-static {p1, p3}, Lcom/twelvemonkeys/xml/XMLSerializer;->b(Ljava/io/PrintWriter;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V

    :cond_7
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string p0, "/>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public final o(Ljava/io/PrintWriter;Lorg/w3c/dom/Node;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V
    .locals 2

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {p1, p3}, Lcom/twelvemonkeys/xml/XMLSerializer;->b(Ljava/io/PrintWriter;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V

    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/InternalError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Lazy programmer never implemented serialization of "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    check-cast p2, Lorg/w3c/dom/DocumentType;

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/xml/XMLSerializer;->l(Ljava/io/PrintWriter;Lorg/w3c/dom/DocumentType;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/xml/XMLSerializer;->m(Ljava/io/PrintWriter;Lorg/w3c/dom/Node;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/xml/XMLSerializer;->k(Ljava/io/PrintWriter;Lorg/w3c/dom/Node;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Lorg/w3c/dom/ProcessingInstruction;

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/xml/XMLSerializer;->p(Ljava/io/PrintWriter;Lorg/w3c/dom/ProcessingInstruction;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/xml/XMLSerializer;->j(Ljava/io/PrintWriter;Lorg/w3c/dom/Node;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/xml/XMLSerializer;->q(Ljava/io/PrintWriter;Lorg/w3c/dom/Node;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V

    goto :goto_0

    :pswitch_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Malformed input Document: Attribute nodes should only occur inside Element nodes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_8
    iget-boolean v0, p3, Lcom/twelvemonkeys/xml/XMLSerializer$a;->g:Z

    invoke-static {p2, p3}, Lcom/twelvemonkeys/xml/XMLSerializer;->g(Lorg/w3c/dom/Node;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V

    check-cast p2, Lorg/w3c/dom/Element;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/xml/XMLSerializer;->n(Ljava/io/PrintWriter;Lorg/w3c/dom/Element;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V

    iput-boolean v0, p3, Lcom/twelvemonkeys/xml/XMLSerializer$a;->g:Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final p(Ljava/io/PrintWriter;Lorg/w3c/dom/ProcessingInstruction;)V
    .locals 0

    const-string p0, "\n<?"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const-string p0, "?>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final q(Ljava/io/PrintWriter;Lorg/w3c/dom/Node;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V
    .locals 0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    iget-boolean p2, p3, Lcom/twelvemonkeys/xml/XMLSerializer$a;->g:Z

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/twelvemonkeys/xml/XMLSerializer;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/twelvemonkeys/lang/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/twelvemonkeys/xml/XMLSerializer;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/twelvemonkeys/xml/XMLSerializer;->b(Ljava/io/PrintWriter;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final r(Ljava/io/PrintWriter;Lorg/w3c/dom/Node;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/xml/XMLSerializer;->o(Ljava/io/PrintWriter;Lorg/w3c/dom/Node;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V

    return-void
.end method

.method public final s(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/twelvemonkeys/xml/XMLSerializer;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "\"?>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public serialize(Lorg/w3c/dom/Document;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/xml/XMLSerializer;->serialize(Lorg/w3c/dom/Node;Z)V

    return-void
.end method

.method public serialize(Lorg/w3c/dom/Node;Z)V
    .locals 4

    .line 2
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/twelvemonkeys/xml/XMLSerializer;->a:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/twelvemonkeys/xml/XMLSerializer;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    if-eqz p2, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/xml/XMLSerializer;->s(Ljava/io/PrintWriter;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/twelvemonkeys/xml/XMLSerializer;->c:Lcom/twelvemonkeys/xml/XMLSerializer$a;

    invoke-virtual {p2}, Lcom/twelvemonkeys/xml/XMLSerializer$a;->a()Lcom/twelvemonkeys/xml/XMLSerializer$a;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/twelvemonkeys/xml/XMLSerializer;->r(Ljava/io/PrintWriter;Lorg/w3c/dom/Node;Lcom/twelvemonkeys/xml/XMLSerializer$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    throw p0
.end method

.method public final stripComments(Z)Lcom/twelvemonkeys/xml/XMLSerializer;
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/xml/XMLSerializer;->c:Lcom/twelvemonkeys/xml/XMLSerializer$a;

    iput-boolean p1, v0, Lcom/twelvemonkeys/xml/XMLSerializer$a;->h:Z

    return-object p0
.end method
