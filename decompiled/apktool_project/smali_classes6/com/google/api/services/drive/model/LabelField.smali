.class public final Lcom/google/api/services/drive/model/LabelField;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private dateString:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/client/util/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private integer__:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
        value = "integer"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private selection:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private user:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private valueType:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/LabelField;->clone()Lcom/google/api/services/drive/model/LabelField;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/LabelField;->clone()Lcom/google/api/services/drive/model/LabelField;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/google/api/services/drive/model/LabelField;
    .locals 0

    .line 4
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object p0

    check-cast p0, Lcom/google/api/services/drive/model/LabelField;

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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/LabelField;->clone()Lcom/google/api/services/drive/model/LabelField;

    move-result-object p0

    return-object p0
.end method

.method public getDateString()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/client/util/DateTime;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelField;->dateString:Ljava/util/List;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelField;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getInteger()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelField;->integer__:Ljava/util/List;

    return-object p0
.end method

.method public getKind()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelField;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public getSelection()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelField;->selection:Ljava/util/List;

    return-object p0
.end method

.method public getText()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelField;->text:Ljava/util/List;

    return-object p0
.end method

.method public getUser()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/User;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelField;->user:Ljava/util/List;

    return-object p0
.end method

.method public getValueType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelField;->valueType:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/LabelField;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/LabelField;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/LabelField;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/LabelField;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/LabelField;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p0

    check-cast p0, Lcom/google/api/services/drive/model/LabelField;

    return-object p0
.end method

.method public setDateString(Ljava/util/List;)Lcom/google/api/services/drive/model/LabelField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/client/util/DateTime;",
            ">;)",
            "Lcom/google/api/services/drive/model/LabelField;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelField;->dateString:Ljava/util/List;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/LabelField;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelField;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setInteger(Ljava/util/List;)Lcom/google/api/services/drive/model/LabelField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/api/services/drive/model/LabelField;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelField;->integer__:Ljava/util/List;

    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/LabelField;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelField;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public setSelection(Ljava/util/List;)Lcom/google/api/services/drive/model/LabelField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/LabelField;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelField;->selection:Ljava/util/List;

    return-object p0
.end method

.method public setText(Ljava/util/List;)Lcom/google/api/services/drive/model/LabelField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/LabelField;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelField;->text:Ljava/util/List;

    return-object p0
.end method

.method public setUser(Ljava/util/List;)Lcom/google/api/services/drive/model/LabelField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/User;",
            ">;)",
            "Lcom/google/api/services/drive/model/LabelField;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelField;->user:Ljava/util/List;

    return-object p0
.end method

.method public setValueType(Ljava/lang/String;)Lcom/google/api/services/drive/model/LabelField;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelField;->valueType:Ljava/lang/String;

    return-object p0
.end method
