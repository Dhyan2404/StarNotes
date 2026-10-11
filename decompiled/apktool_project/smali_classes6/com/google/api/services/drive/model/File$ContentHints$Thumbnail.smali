.class public final Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/File$ContentHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Thumbnail"
.end annotation


# instance fields
.field private image:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->clone()Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->clone()Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    .locals 0

    .line 4
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object p0

    check-cast p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->clone()Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    move-result-object p0

    return-object p0
.end method

.method public decodeImage()[B
    .locals 0

    iget-object p0, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->image:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public encodeImage([B)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    .locals 0

    invoke-static {p1}, Lcom/google/api/client/util/Base64;->encodeBase64URLSafeString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->image:Ljava/lang/String;

    return-object p0
.end method

.method public getImage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->image:Ljava/lang/String;

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p0

    check-cast p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    return-object p0
.end method

.method public setImage(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->image:Ljava/lang/String;

    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->mimeType:Ljava/lang/String;

    return-object p0
.end method
