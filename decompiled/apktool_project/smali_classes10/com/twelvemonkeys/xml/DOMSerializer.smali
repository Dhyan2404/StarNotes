.class public final Lcom/twelvemonkeys/xml/DOMSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/xml/DOMSerializer$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "format-pretty-print"

.field public static final d:Ljava/lang/String; = "xml-declaration"


# instance fields
.field public final a:Lorg/w3c/dom/ls/LSSerializer;

.field public final b:Lorg/w3c/dom/ls/LSOutput;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/twelvemonkeys/xml/DOMSerializer$a;->b()Lorg/w3c/dom/ls/DOMImplementationLS;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lorg/w3c/dom/ls/DOMImplementationLS;->createLSSerializer()Lorg/w3c/dom/ls/LSSerializer;

    move-result-object v1

    iput-object v1, p0, Lcom/twelvemonkeys/xml/DOMSerializer;->a:Lorg/w3c/dom/ls/LSSerializer;

    .line 4
    invoke-interface {v0}, Lorg/w3c/dom/ls/DOMImplementationLS;->createLSOutput()Lorg/w3c/dom/ls/LSOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/twelvemonkeys/xml/DOMSerializer;->b:Lorg/w3c/dom/ls/LSOutput;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/twelvemonkeys/xml/DOMSerializer;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/twelvemonkeys/xml/DOMSerializer;->b:Lorg/w3c/dom/ls/LSOutput;

    invoke-interface {v0, p1}, Lorg/w3c/dom/ls/LSOutput;->setByteStream(Ljava/io/OutputStream;)V

    .line 7
    iget-object p0, p0, Lcom/twelvemonkeys/xml/DOMSerializer;->b:Lorg/w3c/dom/ls/LSOutput;

    invoke-interface {p0, p2}, Lorg/w3c/dom/ls/LSOutput;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/twelvemonkeys/xml/DOMSerializer;-><init>()V

    .line 9
    iget-object p0, p0, Lcom/twelvemonkeys/xml/DOMSerializer;->b:Lorg/w3c/dom/ls/LSOutput;

    invoke-interface {p0, p1}, Lorg/w3c/dom/ls/LSOutput;->setCharacterStream(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/w3c/dom/Node;Z)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/twelvemonkeys/xml/DOMSerializer;->b(Z)V

    iget-object p2, p0, Lcom/twelvemonkeys/xml/DOMSerializer;->a:Lorg/w3c/dom/ls/LSSerializer;

    iget-object p0, p0, Lcom/twelvemonkeys/xml/DOMSerializer;->b:Lorg/w3c/dom/ls/LSOutput;

    invoke-interface {p2, p1, p0}, Lorg/w3c/dom/ls/LSSerializer;->write(Lorg/w3c/dom/Node;Lorg/w3c/dom/ls/LSOutput;)Z

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object p0, p0, Lcom/twelvemonkeys/xml/DOMSerializer;->a:Lorg/w3c/dom/ls/LSSerializer;

    invoke-interface {p0}, Lorg/w3c/dom/ls/LSSerializer;->getDomConfig()Lorg/w3c/dom/DOMConfiguration;

    move-result-object p0

    const-string v0, "xml-declaration"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lorg/w3c/dom/DOMConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getPrettyPrint()Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/twelvemonkeys/xml/DOMSerializer;->a:Lorg/w3c/dom/ls/LSSerializer;

    invoke-interface {p0}, Lorg/w3c/dom/ls/LSSerializer;->getDomConfig()Lorg/w3c/dom/DOMConfiguration;

    move-result-object p0

    const-string v1, "format-pretty-print"

    invoke-interface {p0, v1}, Lorg/w3c/dom/DOMConfiguration;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/w3c/dom/Document;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/xml/DOMSerializer;->a(Lorg/w3c/dom/Node;Z)V

    return-void
.end method

.method public serialize(Lorg/w3c/dom/Node;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/xml/DOMSerializer;->a(Lorg/w3c/dom/Node;Z)V

    return-void
.end method

.method public setPrettyPrint(Z)V
    .locals 2

    iget-object p0, p0, Lcom/twelvemonkeys/xml/DOMSerializer;->a:Lorg/w3c/dom/ls/LSSerializer;

    invoke-interface {p0}, Lorg/w3c/dom/ls/LSSerializer;->getDomConfig()Lorg/w3c/dom/DOMConfiguration;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "format-pretty-print"

    invoke-interface {p0, v1, v0}, Lorg/w3c/dom/DOMConfiguration;->canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Lorg/w3c/dom/DOMConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
