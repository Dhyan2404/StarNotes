.class public Lorg/apache/poi/smtp/MIMEHeaders;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_BOUNDARY:Ljava/lang/String; = "boundary"

.field public static final KEY_CHARSET:Ljava/lang/String; = "charset"

.field public static final KEY_CONTENT:Ljava/lang/String; = "Content"

.field public static final KEY_CONTENT_BASE:Ljava/lang/String; = "Content-Base"

.field public static final KEY_CONTENT_DESCRIPTION:Ljava/lang/String; = "Content-Description"

.field public static final KEY_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final KEY_CONTENT_ID:Ljava/lang/String; = "Content-ID"

.field public static final KEY_CONTENT_LOCATION:Ljava/lang/String; = "Content-Location"

.field public static final KEY_CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding"

.field public static final KEY_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final KEY_MIME_VERSION:Ljava/lang/String; = "MIME-Version"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private contentBase:Ljava/lang/String;

.field private contentDescription:Ljava/lang/String;

.field private contentDisposition:Ljava/lang/String;

.field private contentID:Ljava/lang/String;

.field private contentLocation:Ljava/lang/String;

.field private contentType:Lorg/apache/poi/smtp/ContentType;

.field private encoding:Lorg/apache/poi/smtp/ContentTransferEncoding;

.field private mimeVersion:Ljava/lang/String;

.field private subHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/smtp/ContentType;->UNKNOWN:Lorg/apache/poi/smtp/ContentType;

    iput-object v0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentType:Lorg/apache/poi/smtp/ContentType;

    sget-object v0, Lorg/apache/poi/smtp/ContentTransferEncoding;->NONE:Lorg/apache/poi/smtp/ContentTransferEncoding;

    iput-object v0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->encoding:Lorg/apache/poi/smtp/ContentTransferEncoding;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->subHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentType:Lorg/apache/poi/smtp/ContentType;

    const-string v1, "boundary"

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/smtp/MIMEHeaders;->getSubHeader(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentType:Lorg/apache/poi/smtp/ContentType;

    const-string v1, "charset"

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/smtp/MIMEHeaders;->getSubHeader(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentBase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentBase:Ljava/lang/String;

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentDisposition:Ljava/lang/String;

    return-object p0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentID:Ljava/lang/String;

    return-object p0
.end method

.method public getContentLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentLocation:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Lorg/apache/poi/smtp/ContentType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentType:Lorg/apache/poi/smtp/ContentType;

    return-object p0
.end method

.method public getContentTypeSubHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->subHeaders:Ljava/util/Map;

    iget-object p0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentType:Lorg/apache/poi/smtp/ContentType;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public getEncoding()Lorg/apache/poi/smtp/ContentTransferEncoding;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->encoding:Lorg/apache/poi/smtp/ContentTransferEncoding;

    return-object p0
.end method

.method public getMimeVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->mimeVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getSubHeader(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->subHeaders:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lorg/apache/poi/util/CollectionUtils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSubHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->subHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentType:Lorg/apache/poi/smtp/ContentType;

    const-string v1, "type"

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/smtp/MIMEHeaders;->getSubHeader(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setContentBase(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentBase:Ljava/lang/String;

    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentDescription:Ljava/lang/String;

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentDisposition:Ljava/lang/String;

    return-void
.end method

.method public setContentID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentID:Ljava/lang/String;

    return-void
.end method

.method public setContentLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentLocation:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Lorg/apache/poi/smtp/ContentType;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentType:Lorg/apache/poi/smtp/ContentType;

    return-void
.end method

.method public setEncoding(Lorg/apache/poi/smtp/ContentTransferEncoding;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/smtp/MIMEHeaders;->encoding:Lorg/apache/poi/smtp/ContentTransferEncoding;

    return-void
.end method

.method public setMimeVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/smtp/MIMEHeaders;->mimeVersion:Ljava/lang/String;

    return-void
.end method

.method public setSubHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/smtp/MIMEHeaders;->subHeaders:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMEHeaders{contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentType:Lorg/apache/poi/smtp/ContentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/smtp/MIMEHeaders;->encoding:Lorg/apache/poi/smtp/ContentTransferEncoding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mimeVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/smtp/MIMEHeaders;->mimeVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentDisposition=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentDisposition:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentLocation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentLocation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentBase=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/smtp/MIMEHeaders;->contentBase:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", subHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/smtp/MIMEHeaders;->subHeaders:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
