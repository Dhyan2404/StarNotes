.class public Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/ls/LSInput;


# instance fields
.field protected fBaseSystemId:Ljava/lang/String;

.field protected fByteStream:Ljava/io/InputStream;

.field protected fCertifiedText:Z

.field protected fCharStream:Ljava/io/Reader;

.field protected fData:Ljava/lang/String;

.field protected fEncoding:Ljava/lang/String;

.field protected fPublicId:Ljava/lang/String;

.field protected fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    .line 7
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fData:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fCertifiedText:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    .line 12
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    .line 13
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fData:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fCertifiedText:Z

    .line 16
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    .line 21
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fData:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fCertifiedText:Z

    .line 23
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    .line 27
    iput-object p5, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    .line 30
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fData:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fCertifiedText:Z

    .line 32
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    .line 36
    iput-object p5, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fCertifiedText:Z

    .line 41
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fData:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    return-object p0
.end method

.method public getByteStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    return-object p0
.end method

.method public getCertifiedText()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fCertifiedText:Z

    return p0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    return-object p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    return-object p0
.end method

.method public getStringData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fData:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    return-object p0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    return-void
.end method

.method public setByteStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    return-void
.end method

.method public setCertifiedText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fCertifiedText:Z

    return-void
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    return-void
.end method

.method public setStringData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fData:Ljava/lang/String;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    return-void
.end method
