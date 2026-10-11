.class public Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected fBaseSystemId:Ljava/lang/String;

.field protected fByteStream:Ljava/io/InputStream;

.field protected fCharStream:Ljava/io/Reader;

.field protected fEncoding:Ljava/lang/String;

.field protected fPublicId:Ljava/lang/String;

.field protected fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    .line 7
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    .line 8
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fByteStream:Ljava/io/InputStream;

    .line 14
    iput-object p5, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fCharStream:Ljava/io/Reader;

    .line 20
    iput-object p5, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    return-object p0
.end method

.method public getByteStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fByteStream:Ljava/io/InputStream;

    return-object p0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fCharStream:Ljava/io/Reader;

    return-object p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    return-object p0
.end method

.method public setBaseSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    return-void
.end method

.method public setByteStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fByteStream:Ljava/io/InputStream;

    return-void
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fCharStream:Ljava/io/Reader;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fEncoding:Ljava/lang/String;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    return-void
.end method
