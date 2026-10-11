.class public Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;
.super Lorg/apache/xerces/impl/XMLEntityManager$Entity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScannedEntity"
.end annotation


# instance fields
.field public a:Z

.field public b:Lorg/apache/xerces/impl/XMLEntityManager$b;

.field public baseCharOffset:I

.field public c:[B

.field public ch:[C

.field public columnNumber:I

.field public count:I

.field public final synthetic d:Lorg/apache/xerces/impl/XMLEntityManager;

.field public encoding:Ljava/lang/String;

.field public entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

.field public isExternal:Z

.field public lineNumber:I

.field public literal:Z

.field public mayReadChunks:Z

.field public position:I

.field public reader:Ljava/io/Reader;

.field public startPosition:I

.field public stream:Ljava/io/InputStream;

.field public xmlVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/XMLEntityManager;Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/io/InputStream;Ljava/io/Reader;[BLjava/lang/String;ZZZ)V
    .locals 1

    iget-boolean v0, p1, Lorg/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    invoke-direct {p0, p2, v0}, Lorg/apache/xerces/impl/XMLEntityManager$Entity;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    const/4 p2, 0x1

    iput p2, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iput p2, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->a:Z

    const-string p2, "1.0"

    iput-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->xmlVersion:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iput-object p3, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    iput-object p4, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->stream:Ljava/io/InputStream;

    iput-object p5, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    iput-object p7, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    iput-boolean p8, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->literal:Z

    iput-boolean p9, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    iput-boolean p10, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal:Z

    invoke-static {p1}, Lorg/apache/xerces/impl/XMLEntityManager;->a(Lorg/apache/xerces/impl/XMLEntityManager;)Lorg/apache/xerces/impl/XMLEntityManager$c;

    move-result-object p1

    invoke-virtual {p1, p10}, Lorg/apache/xerces/impl/XMLEntityManager$c;->a(Z)Lorg/apache/xerces/impl/XMLEntityManager$b;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->b:Lorg/apache/xerces/impl/XMLEntityManager$b;

    invoke-static {p1}, Lorg/apache/xerces/impl/XMLEntityManager$b;->a(Lorg/apache/xerces/impl/XMLEntityManager$b;)[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iput-object p6, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->c:[B

    return-void
.end method

.method public static synthetic a(Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;)Lorg/apache/xerces/impl/XMLEntityManager$b;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->b:Lorg/apache/xerces/impl/XMLEntityManager$b;

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->c:[B

    return-object p0
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_1

    iget p0, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget v0, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v1, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v0, v1

    add-int/2addr p0, v0

    return p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getColumnNumber()I
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_1

    iget p0, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    return p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p0, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {p0}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_1

    iget p0, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    return p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p0, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {p0}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->xmlVersion:Ljava/lang/String;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public isEncodingExternallySpecified()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->a:Z

    return p0
.end method

.method public final isExternal()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal:Z

    return p0
.end method

.method public final isUnparsed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setEncodingExternallySpecified(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->a:Z

    return-void
.end method

.method public setReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->c:[B

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/XMLEntityManager;->c(Lorg/apache/xerces/impl/XMLEntityManager;[B)[B

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->d:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-static {p1}, Lorg/apache/xerces/impl/XMLEntityManager;->b(Lorg/apache/xerces/impl/XMLEntityManager;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->c:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, ",ch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, ",position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",baseCharOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",startPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
