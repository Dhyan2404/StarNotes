.class public Lcom/onyx/engine/sdk/Metadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/engine/sdk/Metadata$Series;
    }
.end annotation


# instance fields
.field private authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contributor:Ljava/lang/String;

.field private coverMetaID:Ljava/lang/String;

.field private coverage:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private isbn:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private publisher:Ljava/lang/String;

.field private relation:Ljava/lang/String;

.field private rights:Ljava/lang/String;

.field private series:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/Metadata$Series;",
            ">;"
        }
    .end annotation
.end field

.field private source:Ljava/lang/String;

.field private subjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/hnj;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/hnj;-><init>()V

    const-class v1, Lcom/onyx/engine/sdk/Metadata;

    invoke-static {p0, v1, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/Metadata;

    return-object p0
.end method


# virtual methods
.method public getAuthors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->authors:Ljava/util/List;

    return-object p0
.end method

.method public getContributor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->contributor:Ljava/lang/String;

    return-object p0
.end method

.method public getCoverMetaID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->coverMetaID:Ljava/lang/String;

    return-object p0
.end method

.method public getCoverage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->coverage:Ljava/lang/String;

    return-object p0
.end method

.method public getDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->date:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->format:Ljava/lang/String;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public getIsbn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->isbn:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->language:Ljava/lang/String;

    return-object p0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->publisher:Ljava/lang/String;

    return-object p0
.end method

.method public getRelation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->relation:Ljava/lang/String;

    return-object p0
.end method

.method public getRights()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->rights:Ljava/lang/String;

    return-object p0
.end method

.method public getSeries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/Metadata$Series;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->series:Ljava/util/List;

    return-object p0
.end method

.method public getSeriesJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->series:Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->source:Ljava/lang/String;

    return-object p0
.end method

.method public getSubjects()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->subjects:Ljava/util/List;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->subtitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Metadata;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthors(Ljava/util/List;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/onyx/engine/sdk/Metadata;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->authors:Ljava/util/List;

    return-object p0
.end method

.method public setContributor(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->contributor:Ljava/lang/String;

    return-object p0
.end method

.method public setCoverMetaID(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->coverMetaID:Ljava/lang/String;

    return-object p0
.end method

.method public setCoverage(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->coverage:Ljava/lang/String;

    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->date:Ljava/lang/String;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setFormat(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->format:Ljava/lang/String;

    return-object p0
.end method

.method public setIdentifier(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public setIsbn(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->isbn:Ljava/lang/String;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->language:Ljava/lang/String;

    return-object p0
.end method

.method public setPublisher(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->publisher:Ljava/lang/String;

    return-object p0
.end method

.method public setRelation(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->relation:Ljava/lang/String;

    return-object p0
.end method

.method public setRights(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->rights:Ljava/lang/String;

    return-object p0
.end method

.method public setSeries(Ljava/util/List;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/Metadata$Series;",
            ">;)",
            "Lcom/onyx/engine/sdk/Metadata;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->series:Ljava/util/List;

    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->source:Ljava/lang/String;

    return-object p0
.end method

.method public setSubjects(Ljava/util/List;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/onyx/engine/sdk/Metadata;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->subjects:Ljava/util/List;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->subtitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/onyx/engine/sdk/Metadata;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Metadata;->type:Ljava/lang/String;

    return-object p0
.end method
