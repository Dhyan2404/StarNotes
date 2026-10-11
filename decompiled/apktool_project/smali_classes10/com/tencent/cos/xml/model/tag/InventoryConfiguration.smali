.class public Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Frequency;,
        Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$IncludedObjectVersions;,
        Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Field;,
        Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Encryption;,
        Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$COSBucketDestination;,
        Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;,
        Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Schedule;,
        Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$OptionalFields;,
        Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Filter;
    }
.end annotation


# static fields
.field public static final SCHEDULE_FREQUENCY_DAILY:Ljava/lang/String; = "Daily"

.field public static final SCHEDULE_FREQUENCY_WEEKLY:Ljava/lang/String; = "Weekly"


# instance fields
.field public destination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;

.field public filter:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Filter;

.field public id:Ljava/lang/String;

.field public includedObjectVersions:Ljava/lang/String;

.field public isEnabled:Z

.field public optionalFields:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$OptionalFields;

.field public schedule:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Schedule;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{InventoryConfiguration:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "IsEnabled:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->isEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->destination:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Destination;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->schedule:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Schedule;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Schedule;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->filter:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Filter;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$Filter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, "IncludedObjectVersions:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->includedObjectVersions:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration;->optionalFields:Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$OptionalFields;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/InventoryConfiguration$OptionalFields;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
