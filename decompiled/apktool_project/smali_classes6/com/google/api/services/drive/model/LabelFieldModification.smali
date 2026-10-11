.class public final Lcom/google/api/services/drive/model/LabelFieldModification;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private fieldId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private setDateValues:Ljava/util/List;
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

.field private setIntegerValues:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private setSelectionValues:Ljava/util/List;
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

.field private setTextValues:Ljava/util/List;
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

.field private setUserValues:Ljava/util/List;
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

.field private unsetValues:Ljava/lang/Boolean;
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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/LabelFieldModification;->clone()Lcom/google/api/services/drive/model/LabelFieldModification;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/LabelFieldModification;->clone()Lcom/google/api/services/drive/model/LabelFieldModification;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0

    .line 4
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object p0

    check-cast p0, Lcom/google/api/services/drive/model/LabelFieldModification;

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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/LabelFieldModification;->clone()Lcom/google/api/services/drive/model/LabelFieldModification;

    move-result-object p0

    return-object p0
.end method

.method public getFieldId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->fieldId:Ljava/lang/String;

    return-object p0
.end method

.method public getKind()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public getSetDateValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/client/util/DateTime;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setDateValues:Ljava/util/List;

    return-object p0
.end method

.method public getSetIntegerValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setIntegerValues:Ljava/util/List;

    return-object p0
.end method

.method public getSetSelectionValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setSelectionValues:Ljava/util/List;

    return-object p0
.end method

.method public getSetTextValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setTextValues:Ljava/util/List;

    return-object p0
.end method

.method public getSetUserValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setUserValues:Ljava/util/List;

    return-object p0
.end method

.method public getUnsetValues()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->unsetValues:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/LabelFieldModification;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/LabelFieldModification;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/LabelFieldModification;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/LabelFieldModification;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p0

    check-cast p0, Lcom/google/api/services/drive/model/LabelFieldModification;

    return-object p0
.end method

.method public setFieldId(Ljava/lang/String;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->fieldId:Ljava/lang/String;

    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public setSetDateValues(Ljava/util/List;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/client/util/DateTime;",
            ">;)",
            "Lcom/google/api/services/drive/model/LabelFieldModification;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setDateValues:Ljava/util/List;

    return-object p0
.end method

.method public setSetIntegerValues(Ljava/util/List;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/api/services/drive/model/LabelFieldModification;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setIntegerValues:Ljava/util/List;

    return-object p0
.end method

.method public setSetSelectionValues(Ljava/util/List;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/LabelFieldModification;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setSelectionValues:Ljava/util/List;

    return-object p0
.end method

.method public setSetTextValues(Ljava/util/List;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/LabelFieldModification;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setTextValues:Ljava/util/List;

    return-object p0
.end method

.method public setSetUserValues(Ljava/util/List;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/LabelFieldModification;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->setUserValues:Ljava/util/List;

    return-object p0
.end method

.method public setUnsetValues(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/LabelFieldModification;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelFieldModification;->unsetValues:Ljava/lang/Boolean;

    return-object p0
.end method
