.class public Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private compressionType:Ljava/lang/String;

.field private csv:Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;

.field private json:Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;

.field private parquet:Lcom/tencent/cos/xml/model/tag/eventstreaming/ParquetInput;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/model/tag/eventstreaming/CompressionType;Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->csv:Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;

    .line 3
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/CompressionType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->compressionType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/model/tag/eventstreaming/CompressionType;Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/CompressionType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->compressionType:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->json:Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->csv:Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;

    .line 9
    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->compressionType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->compressionType:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->json:Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;

    return-void
.end method


# virtual methods
.method public clone()Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Got a CloneNotSupportedException from Object.clone() even though we\'re Cloneable!"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->clone()Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    instance-of v2, p1, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;

    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    check-cast p1, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCsv()Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCsv()Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCsv()Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCsv()Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCsv()Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getJson()Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v0

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getJson()Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v0

    goto :goto_3

    :cond_7
    move v3, v1

    :goto_3
    xor-int/2addr v2, v3

    if-eqz v2, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getJson()Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getJson()Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getJson()Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCompressionType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v0

    goto :goto_4

    :cond_a
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCompressionType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    move v3, v0

    goto :goto_5

    :cond_b
    move v3, v1

    :goto_5
    xor-int/2addr v2, v3

    if-eqz v2, :cond_c

    return v1

    :cond_c
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCompressionType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCompressionType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCompressionType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    return v1

    :cond_d
    return v0

    :cond_e
    :goto_6
    return v1
.end method

.method public getCompressionType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->compressionType:Ljava/lang/String;

    return-object p0
.end method

.method public getCsv()Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->csv:Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;

    return-object p0
.end method

.method public getJson()Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->json:Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;

    return-object p0
.end method

.method public getParquet()Lcom/tencent/cos/xml/model/tag/eventstreaming/ParquetInput;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->parquet:Lcom/tencent/cos/xml/model/tag/eventstreaming/ParquetInput;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCsv()Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCsv()Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getJson()Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getJson()Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCompressionType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCompressionType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setCompressionType(Lcom/tencent/cos/xml/model/tag/eventstreaming/CompressionType;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/CompressionType;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->setCompressionType(Ljava/lang/String;)V

    return-void
.end method

.method public setCompressionType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->compressionType:Ljava/lang/String;

    return-void
.end method

.method public setCsv(Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->csv:Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;

    return-void
.end method

.method public setJson(Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->json:Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;

    return-void
.end method

.method public setParquet(Lcom/tencent/cos/xml/model/tag/eventstreaming/ParquetInput;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->parquet:Lcom/tencent/cos/xml/model/tag/eventstreaming/ParquetInput;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCsv()Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Csv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCsv()Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getJson()Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "Json: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getJson()Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCompressionType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "CompressionType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->getCompressionType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withCompressionType(Lcom/tencent/cos/xml/model/tag/eventstreaming/CompressionType;)Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->setCompressionType(Lcom/tencent/cos/xml/model/tag/eventstreaming/CompressionType;)V

    return-object p0
.end method

.method public withCompressionType(Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->setCompressionType(Ljava/lang/String;)V

    return-object p0
.end method

.method public withCsv(Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;)Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->setCsv(Lcom/tencent/cos/xml/model/tag/eventstreaming/CSVInput;)V

    return-object p0
.end method

.method public withJson(Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;)Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->setJson(Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONInput;)V

    return-object p0
.end method

.method public withParquet(Lcom/tencent/cos/xml/model/tag/eventstreaming/ParquetInput;)Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/InputSerialization;->setParquet(Lcom/tencent/cos/xml/model/tag/eventstreaming/ParquetInput;)V

    return-object p0
.end method
