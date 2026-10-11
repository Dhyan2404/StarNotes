.class public Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hwpf/usermodel/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private claimed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/poi/hwpf/usermodel/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hwpf/usermodel/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private nonU1based:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hwpf/usermodel/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private picturesTable:Lorg/apache/poi/hwpf/model/PicturesTable;

.field private pn:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hwpf/HWPFDocument;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->claimed:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/HWPFDocument;->getPicturesTable()Lorg/apache/poi/hwpf/model/PicturesTable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->picturesTable:Lorg/apache/poi/hwpf/model/PicturesTable;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/PicturesTable;->getAllPictures()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->all:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->lookup:Ljava/util/Map;

    iget-object v0, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwpf/usermodel/Picture;

    iget-object v2, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->lookup:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/Picture;->getStartOffset()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->nonU1based:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->all:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/HWPFDocument;->getRange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/Range;->numCharacterRuns()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwpf/usermodel/Range;->getCharacterRun(I)Lorg/apache/poi/hwpf/usermodel/CharacterRun;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->picturesTable:Lorg/apache/poi/hwpf/model/PicturesTable;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hwpf/model/PicturesTable;->hasPicture(Lorg/apache/poi/hwpf/usermodel/CharacterRun;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->getFor(Lorg/apache/poi/hwpf/usermodel/CharacterRun;)Lorg/apache/poi/hwpf/usermodel/Picture;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->nonU1based:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->nonU1based:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getFor(Lorg/apache/poi/hwpf/usermodel/CharacterRun;)Lorg/apache/poi/hwpf/usermodel/Picture;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->lookup:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getPicOffset()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwpf/usermodel/Picture;

    return-object p0
.end method

.method public hasBeenClaimed(Lorg/apache/poi/hwpf/usermodel/Picture;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->claimed:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasPicture(Lorg/apache/poi/hwpf/usermodel/CharacterRun;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->picturesTable:Lorg/apache/poi/hwpf/model/PicturesTable;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwpf/model/PicturesTable;->hasPicture(Lorg/apache/poi/hwpf/usermodel/CharacterRun;)Z

    move-result p0

    return p0
.end method

.method public markAsClaimed(Lorg/apache/poi/hwpf/usermodel/Picture;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->claimed:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public nextUnclaimed()Lorg/apache/poi/hwpf/usermodel/Picture;
    .locals 2

    :cond_0
    iget v0, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->pn:I

    iget-object v1, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->nonU1based:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->nonU1based:Ljava/util/List;

    iget v1, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->pn:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hwpf/usermodel/Picture;

    iget v1, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->pn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->pn:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->claimed:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public pictureNumber(Lorg/apache/poi/hwpf/usermodel/Picture;)I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/PictureRunMapper;->all:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
