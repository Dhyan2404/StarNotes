.class public Lcom/sun/xml/internal/stream/Entity$ScannedEntity;
.super Lcom/sun/xml/internal/stream/Entity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/internal/stream/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScannedEntity"
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_INTERNAL_BUFFER_SIZE:I = 0x400

.field public static final DEFAULT_XMLDECL_BUFFER_SIZE:I = 0x1c


# instance fields
.field public baseCharOffset:I

.field public ch:[C

.field public columnNumber:I

.field public count:I

.field declaredEncoding:Z

.field public encoding:Ljava/lang/String;

.field public entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

.field externallySpecifiedEncoding:Z

.field public fBufferSize:I

.field public fLastCount:I

.field public fTotalCountTillLastLoad:I

.field public isExternal:Z

.field public lineNumber:I

.field public literal:Z

.field public mayReadChunks:Z

.field public position:I

.field public reader:Ljava/io/Reader;

.field public startPosition:I

.field public stream:Ljava/io/InputStream;

.field public version:Ljava/lang/String;

.field public xmlDeclChunkRead:Z

.field public xmlVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/io/InputStream;Ljava/io/Reader;Ljava/lang/String;ZZZ)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/xml/internal/stream/Entity;-><init>()V

    const/16 v0, 0x2000

    iput v0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->fBufferSize:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->ch:[C

    const/4 v1, 0x1

    iput v1, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->lineNumber:I

    iput v1, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->columnNumber:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->declaredEncoding:Z

    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->externallySpecifiedEncoding:Z

    const-string v2, "1.0"

    iput-object v2, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->xmlVersion:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->xmlDeclChunkRead:Z

    iput-object p1, p0, Lcom/sun/xml/internal/stream/Entity;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    iput-object p3, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    iput-object p5, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->literal:Z

    iput-boolean p7, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->mayReadChunks:Z

    iput-boolean p8, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->isExternal:Z

    if-eqz p8, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    :goto_0
    new-array p1, v0, [C

    iput-object p1, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->ch:[C

    return-void
.end method


# virtual methods
.method public getEncodingName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method public getEntityInputStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    return-object p0
.end method

.method public getEntityReader()Ljava/io/Reader;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    return-object p0
.end method

.method public getEntityVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->version:Ljava/lang/String;

    return-object p0
.end method

.method public isDeclaredEncoding()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->declaredEncoding:Z

    return p0
.end method

.method public isEncodingExternallySpecified()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->externallySpecifiedEncoding:Z

    return p0
.end method

.method public final isExternal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->isExternal:Z

    return p0
.end method

.method public final isUnparsed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setDeclaredEncoding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->declaredEncoding:Z

    return-void
.end method

.method public setEncodingExternallySpecified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->externallySpecifiedEncoding:Z

    return-void
.end method

.method public setEntityVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/xml/internal/stream/Entity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",ch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->ch:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->count:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
