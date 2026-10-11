.class public Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;
.super Lcom/tencent/cos/xml/model/bucket/BucketRequest;
.source "SourceFile"


# static fields
.field private static pattern:Ljava/util/regex/Pattern;


# instance fields
.field private inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-zA-Z0-9-_.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->isEnabled:Z

    const-string v0, "None"

    iput-object v0, p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->id:Ljava/lang/String;

    new-instance v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Schedule;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Schedule;-><init>()V

    iput-object v0, p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->schedule:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Schedule;

    iget-object p1, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    new-instance v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;-><init>()V

    iput-object v0, p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->destination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->destination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;

    new-instance p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;->cosBucketDestination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;

    return-void
.end method


# virtual methods
.method public checkParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-super {p0}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;->checkParameters()V

    sget-object v0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->pattern:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    iget-object v1, v1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->includedObjectVersions:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->schedule:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Schedule;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Schedule;->frequency:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->destination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;->cosBucketDestination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;->bucket:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;->format:Ljava/lang/String;

    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "PUT"

    return-object p0
.end method

.method public getQueryString()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    const-string v1, "inventory"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    iget-object v1, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    iget-object v1, v1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getQueryString()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public isEnable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    iput-boolean p1, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->isEnabled:Z

    return-void
.end method

.method public isNeedMD5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->destination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;->cosBucketDestination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;

    iput-object p1, v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;->format:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->destination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;->cosBucketDestination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;

    iput-object p2, p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;->accountId:Ljava/lang/String;

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    iget-object p1, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->destination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;->cosBucketDestination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "qcs::cos:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "::"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;->bucket:Ljava/lang/String;

    :cond_2
    if-eqz p5, :cond_3

    iget-object p1, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->destination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;->cosBucketDestination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;

    iput-object p5, p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;->prefix:Ljava/lang/String;

    :cond_3
    iget-object p1, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->destination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;->cosBucketDestination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;

    new-instance p2, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Encryption;

    invoke-direct {p2}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Encryption;-><init>()V

    iput-object p2, p1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;->encryption:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Encryption;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->destination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;->cosBucketDestination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;->encryption:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Encryption;

    const-string p1, ""

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Encryption;->sSECOS:Ljava/lang/String;

    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Filter;

    invoke-direct {v1}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Filter;-><init>()V

    iput-object v1, v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->filter:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Filter;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->filter:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Filter;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Filter;->prefix:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setIncludedObjectVersions(Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;->getDesc()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->includedObjectVersions:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setInventoryId(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->id:Ljava/lang/String;

    return-void
.end method

.method public setOptionalFields(Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    iget-object v1, v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->optionalFields:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$OptionalFields;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$OptionalFields;

    invoke-direct {v1}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$OptionalFields;-><init>()V

    iput-object v1, v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->optionalFields:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$OptionalFields;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->optionalFields:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$OptionalFields;

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, v0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$OptionalFields;->fields:Ljava/util/Set;

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->optionalFields:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$OptionalFields;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$OptionalFields;->fields:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setScheduleFrequency(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->schedule:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Schedule;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Schedule;->frequency:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public xmlBuilder()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;->inventoryConfiguration:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/XmlBuilder;->buildInventoryConfiguration(Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/xml"

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->string(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0
.end method
