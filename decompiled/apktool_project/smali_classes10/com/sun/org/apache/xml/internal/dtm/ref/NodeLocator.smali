.class public Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/SourceLocator;


# instance fields
.field protected m_columnNumber:I

.field protected m_lineNumber:I

.field protected m_publicId:Ljava/lang/String;

.field protected m_systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;->m_publicId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;->m_systemId:Ljava/lang/String;

    iput p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;->m_lineNumber:I

    iput p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;->m_columnNumber:I

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;->m_columnNumber:I

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;->m_lineNumber:I

    return p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;->m_publicId:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;->m_systemId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;->m_systemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;->m_lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", column #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;->m_columnNumber:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
