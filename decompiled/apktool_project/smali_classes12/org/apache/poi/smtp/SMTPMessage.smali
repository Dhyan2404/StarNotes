.class public Lorg/apache/poi/smtp/SMTPMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bodyParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/smtp/MessageBodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private headers:Lorg/apache/poi/smtp/MIMEHeaders;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/smtp/MIMEHeaders;

    invoke-direct {v0}, Lorg/apache/poi/smtp/MIMEHeaders;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/smtp/SMTPMessage;->headers:Lorg/apache/poi/smtp/MIMEHeaders;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/smtp/SMTPMessage;->bodyParts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPart(Lorg/apache/poi/smtp/MessageBodyPart;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/smtp/SMTPMessage;->bodyParts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBodyParts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/smtp/MessageBodyPart;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/smtp/SMTPMessage;->bodyParts:Ljava/util/List;

    return-object p0
.end method

.method public getHeaders()Lorg/apache/poi/smtp/MIMEHeaders;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/smtp/SMTPMessage;->headers:Lorg/apache/poi/smtp/MIMEHeaders;

    return-object p0
.end method

.method public getPart(I)Lorg/apache/poi/smtp/MessageBodyPart;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/smtp/SMTPMessage;->bodyParts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/smtp/MessageBodyPart;

    return-object p0
.end method

.method public getParts(Lorg/apache/poi/smtp/ContentType;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/smtp/ContentType;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/smtp/MessageBodyPart;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/smtp/SMTPMessage;->bodyParts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/smtp/MessageBodyPart;

    invoke-virtual {v1}, Lorg/apache/poi/smtp/MessageBodyPart;->getHeaders()Lorg/apache/poi/smtp/MIMEHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/smtp/MIMEHeaders;->getContentType()Lorg/apache/poi/smtp/ContentType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public partSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/smtp/SMTPMessage;->bodyParts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public setBodyParts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/smtp/MessageBodyPart;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/smtp/SMTPMessage;->bodyParts:Ljava/util/List;

    return-void
.end method

.method public setHeaders(Lorg/apache/poi/smtp/MIMEHeaders;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/smtp/SMTPMessage;->headers:Lorg/apache/poi/smtp/MIMEHeaders;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleMIMEMessage{headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/smtp/SMTPMessage;->headers:Lorg/apache/poi/smtp/MIMEHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bodyParts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/smtp/SMTPMessage;->bodyParts:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
