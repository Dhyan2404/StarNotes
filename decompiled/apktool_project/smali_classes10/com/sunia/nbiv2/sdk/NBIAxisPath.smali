.class public Lcom/sunia/nbiv2/sdk/NBIAxisPath;
.super Lcom/sunia/HTREnginev2/sdk/RecognizePath;
.source "SourceFile"


# instance fields
.field private addIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private ext:Ljava/lang/String;

.field private nbiAxisPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/nbiv2/sdk/NBIAxisPoint;",
            ">;"
        }
    .end annotation
.end field

.field private validate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->nbiAxisPointList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->addIdList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAddIdList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->addIdList:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAddIdListLong()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->addIdList:Ljava/util/List;

    return-object p0
.end method

.method public getExt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->ext:Ljava/lang/String;

    return-object p0
.end method

.method public getNbiAxisPointList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/nbiv2/sdk/NBIAxisPoint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->nbiAxisPointList:Ljava/util/List;

    return-object p0
.end method

.method public isValidate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->validate:Z

    return p0
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->ext:Ljava/lang/String;

    return-void
.end method

.method public setValidate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->validate:Z

    return-void
.end method
