.class public final Lcom/google/api/services/drive/model/LabelModification;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private fieldModifications:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/LabelFieldModification;",
            ">;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private labelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private removeLabel:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/api/services/drive/model/LabelFieldModification;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/LabelModification;->clone()Lcom/google/api/services/drive/model/LabelModification;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/LabelModification;->clone()Lcom/google/api/services/drive/model/LabelModification;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/google/api/services/drive/model/LabelModification;
    .locals 0

    .line 4
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object p0

    check-cast p0, Lcom/google/api/services/drive/model/LabelModification;

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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/LabelModification;->clone()Lcom/google/api/services/drive/model/LabelModification;

    move-result-object p0

    return-object p0
.end method

.method public getFieldModifications()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/LabelFieldModification;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelModification;->fieldModifications:Ljava/util/List;

    return-object p0
.end method

.method public getKind()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelModification;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public getLabelId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelModification;->labelId:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoveLabel()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/api/services/drive/model/LabelModification;->removeLabel:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/LabelModification;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/LabelModification;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/LabelModification;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/LabelModification;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/LabelModification;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p0

    check-cast p0, Lcom/google/api/services/drive/model/LabelModification;

    return-object p0
.end method

.method public setFieldModifications(Ljava/util/List;)Lcom/google/api/services/drive/model/LabelModification;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/LabelFieldModification;",
            ">;)",
            "Lcom/google/api/services/drive/model/LabelModification;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelModification;->fieldModifications:Ljava/util/List;

    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/LabelModification;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelModification;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public setLabelId(Ljava/lang/String;)Lcom/google/api/services/drive/model/LabelModification;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelModification;->labelId:Ljava/lang/String;

    return-object p0
.end method

.method public setRemoveLabel(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/LabelModification;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/LabelModification;->removeLabel:Ljava/lang/Boolean;

    return-object p0
.end method
