.class public Lcom/onyx/engine/sdk/ScreenData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private linkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/LinkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pageRange:Lcom/onyx/engine/sdk/PageRange;

.field private textRunList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/TextRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/ScreenData;
    .locals 2

    const-class v0, Lcom/onyx/engine/sdk/ScreenData;

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/ScreenData;

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/engine/sdk/ScreenData;

    invoke-direct {p0}, Lcom/onyx/engine/sdk/ScreenData;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/engine/sdk/ScreenData;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/onyx/engine/sdk/ScreenData;->textRunList:Ljava/util/List;

    iget-object v0, v0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    invoke-static {v1, v0}, Lcom/onyx/engine/sdk/TextRun;->setTextRunPosition(Ljava/util/List;Lcom/onyx/engine/sdk/PinPosition;)V

    iget-object v0, p0, Lcom/onyx/engine/sdk/ScreenData;->imageList:Ljava/util/List;

    iget-object v1, p0, Lcom/onyx/engine/sdk/ScreenData;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    iget-object v1, v1, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    invoke-static {v0, v1}, Lcom/onyx/engine/sdk/ImageInfo;->setImagePosition(Ljava/util/List;Lcom/onyx/engine/sdk/PinPosition;)V

    iget-object v0, p0, Lcom/onyx/engine/sdk/ScreenData;->linkList:Ljava/util/List;

    iget-object v1, p0, Lcom/onyx/engine/sdk/ScreenData;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    iget-object v1, v1, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    invoke-static {v0, v1}, Lcom/onyx/engine/sdk/LinkInfo;->setLinkPosition(Ljava/util/List;Lcom/onyx/engine/sdk/PinPosition;)V

    return-object p0
.end method


# virtual methods
.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/ImageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/engine/sdk/ScreenData;->imageList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/engine/sdk/ScreenData;->imageList:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/onyx/engine/sdk/ScreenData;->imageList:Ljava/util/List;

    return-object p0
.end method

.method public getLinkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/LinkInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/engine/sdk/ScreenData;->linkList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/engine/sdk/ScreenData;->linkList:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/onyx/engine/sdk/ScreenData;->linkList:Ljava/util/List;

    return-object p0
.end method

.method public getPageRange()Lcom/onyx/engine/sdk/PageRange;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ScreenData;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    return-object p0
.end method

.method public getTextRunList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/TextRun;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/engine/sdk/ScreenData;->textRunList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/engine/sdk/ScreenData;->textRunList:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/onyx/engine/sdk/ScreenData;->textRunList:Ljava/util/List;

    return-object p0
.end method

.method public setImageList(Ljava/util/List;)Lcom/onyx/engine/sdk/ScreenData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/ImageInfo;",
            ">;)",
            "Lcom/onyx/engine/sdk/ScreenData;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/ScreenData;->imageList:Ljava/util/List;

    return-object p0
.end method

.method public setLinkList(Ljava/util/List;)Lcom/onyx/engine/sdk/ScreenData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/LinkInfo;",
            ">;)",
            "Lcom/onyx/engine/sdk/ScreenData;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/ScreenData;->linkList:Ljava/util/List;

    return-object p0
.end method

.method public setPageRange(Lcom/onyx/engine/sdk/PageRange;)Lcom/onyx/engine/sdk/ScreenData;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/ScreenData;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    return-object p0
.end method

.method public setTextRunList(Ljava/util/List;)Lcom/onyx/engine/sdk/ScreenData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/TextRun;",
            ">;)",
            "Lcom/onyx/engine/sdk/ScreenData;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/ScreenData;->textRunList:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenData{pageRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/ScreenData;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textRunList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/ScreenData;->textRunList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/ScreenData;->imageList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", linkList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/engine/sdk/ScreenData;->linkList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
