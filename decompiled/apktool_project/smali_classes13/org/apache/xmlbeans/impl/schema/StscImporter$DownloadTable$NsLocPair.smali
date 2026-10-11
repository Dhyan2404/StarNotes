.class Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NsLocPair"
.end annotation


# instance fields
.field private final locationURL:Ljava/lang/String;

.field private final namespaceURI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;->namespaceURI:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;->locationURL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;->locationURL:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;->locationURL:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;->namespaceURI:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;->namespaceURI:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getLocationURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;->locationURL:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;->namespaceURI:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;->namespaceURI:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1d

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;->locationURL:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
