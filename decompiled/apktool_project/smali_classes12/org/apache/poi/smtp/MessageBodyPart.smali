.class public Lorg/apache/poi/smtp/MessageBodyPart;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:Ljava/lang/String;

.field private headers:Lorg/apache/poi/smtp/MIMEHeaders;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/smtp/MIMEHeaders;

    invoke-direct {v0}, Lorg/apache/poi/smtp/MIMEHeaders;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/smtp/MessageBodyPart;->headers:Lorg/apache/poi/smtp/MIMEHeaders;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/smtp/MessageBodyPart;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getHeaders()Lorg/apache/poi/smtp/MIMEHeaders;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/smtp/MessageBodyPart;->headers:Lorg/apache/poi/smtp/MIMEHeaders;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/smtp/MessageBodyPart;->size:I

    return p0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/smtp/MessageBodyPart;->content:Ljava/lang/String;

    return-void
.end method

.method public setHeaders(Lorg/apache/poi/smtp/MIMEHeaders;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/smtp/MessageBodyPart;->headers:Lorg/apache/poi/smtp/MIMEHeaders;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/smtp/MessageBodyPart;->size:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageBodyPart{headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/smtp/MessageBodyPart;->headers:Lorg/apache/poi/smtp/MIMEHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/smtp/MessageBodyPart;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/smtp/MessageBodyPart;->size:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
