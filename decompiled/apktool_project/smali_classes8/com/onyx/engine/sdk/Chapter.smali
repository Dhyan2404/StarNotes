.class public Lcom/onyx/engine/sdk/Chapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/engine/sdk/Chapter$ChapterList;
    }
.end annotation


# instance fields
.field private allChapterSizeInBytes:I

.field private basePath:Ljava/lang/String;

.field private buy:Z

.field private chapterId:Ljava/lang/String;

.field private chapterName:Ljava/lang/String;

.field private chapterReady:Z

.field private charsetName:Ljava/lang/String;

.field private endPos:I

.field private fileName:Ljava/lang/String;

.field private firstChapter:Z

.field private href:Ljava/lang/String;

.field private lastChapter:Z

.field private linear:Z

.field private nextSiblingId:I

.field private playOrder:I

.field private prevSiblingID:I

.field private startPos:I

.field private uncompressedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lcom/onyx/engine/sdk/Chapter;->prevSiblingID:I

    .line 3
    iput v0, p0, Lcom/onyx/engine/sdk/Chapter;->nextSiblingId:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/onyx/engine/sdk/Chapter;->buy:Z

    .line 5
    iput-boolean v0, p0, Lcom/onyx/engine/sdk/Chapter;->chapterReady:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZZZZ)V
    .locals 2

    move-object v0, p0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 7
    iput-object v1, v0, Lcom/onyx/engine/sdk/Chapter;->chapterId:Ljava/lang/String;

    move-object v1, p2

    .line 8
    iput-object v1, v0, Lcom/onyx/engine/sdk/Chapter;->chapterName:Ljava/lang/String;

    move-object v1, p3

    .line 9
    iput-object v1, v0, Lcom/onyx/engine/sdk/Chapter;->charsetName:Ljava/lang/String;

    move-object v1, p4

    .line 10
    iput-object v1, v0, Lcom/onyx/engine/sdk/Chapter;->fileName:Ljava/lang/String;

    move-object v1, p5

    .line 11
    iput-object v1, v0, Lcom/onyx/engine/sdk/Chapter;->basePath:Ljava/lang/String;

    move-object v1, p6

    .line 12
    iput-object v1, v0, Lcom/onyx/engine/sdk/Chapter;->href:Ljava/lang/String;

    move v1, p7

    .line 13
    iput v1, v0, Lcom/onyx/engine/sdk/Chapter;->playOrder:I

    move v1, p8

    .line 14
    iput v1, v0, Lcom/onyx/engine/sdk/Chapter;->prevSiblingID:I

    move v1, p9

    .line 15
    iput v1, v0, Lcom/onyx/engine/sdk/Chapter;->nextSiblingId:I

    move v1, p10

    .line 16
    iput v1, v0, Lcom/onyx/engine/sdk/Chapter;->uncompressedSize:I

    move v1, p11

    .line 17
    iput v1, v0, Lcom/onyx/engine/sdk/Chapter;->allChapterSizeInBytes:I

    move v1, p12

    .line 18
    iput v1, v0, Lcom/onyx/engine/sdk/Chapter;->startPos:I

    move v1, p13

    .line 19
    iput v1, v0, Lcom/onyx/engine/sdk/Chapter;->endPos:I

    move/from16 v1, p14

    .line 20
    iput-boolean v1, v0, Lcom/onyx/engine/sdk/Chapter;->firstChapter:Z

    move/from16 v1, p15

    .line 21
    iput-boolean v1, v0, Lcom/onyx/engine/sdk/Chapter;->lastChapter:Z

    move/from16 v1, p16

    .line 22
    iput-boolean v1, v0, Lcom/onyx/engine/sdk/Chapter;->linear:Z

    move/from16 v1, p17

    .line 23
    iput-boolean v1, v0, Lcom/onyx/engine/sdk/Chapter;->buy:Z

    move/from16 v1, p18

    .line 24
    iput-boolean v1, v0, Lcom/onyx/engine/sdk/Chapter;->chapterReady:Z

    return-void
.end method

.method public static addChapter(Ljava/util/List;Lcom/onyx/engine/sdk/Chapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/Chapter;",
            ">;",
            "Lcom/onyx/engine/sdk/Chapter;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addChapter(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZZZZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/Chapter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIIIZZZZZ)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    .line 2
    new-instance v0, Lcom/onyx/engine/sdk/Chapter;

    move-object/from16 p1, v0

    invoke-direct/range {v0 .. v18}, Lcom/onyx/engine/sdk/Chapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZZZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getChapter(Ljava/util/List;Ljava/lang/String;)Lcom/onyx/engine/sdk/Chapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/Chapter;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/engine/sdk/Chapter;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/engine/sdk/Chapter;

    iget-object v1, v0, Lcom/onyx/engine/sdk/Chapter;->chapterId:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/engine/sdk/Chapter$2;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/Chapter$2;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const-class v0, Lcom/onyx/engine/sdk/Chapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse chapter id list failed, json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static parseList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/Chapter;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/engine/sdk/Chapter$1;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/Chapter$1;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const-class v0, Lcom/onyx/engine/sdk/Chapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse chapter list failed, json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    iget v0, p0, Lcom/onyx/engine/sdk/Chapter;->startPos:I

    if-gt v0, p1, :cond_0

    iget p0, p0, Lcom/onyx/engine/sdk/Chapter;->endPos:I

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAllChapterSizeInBytes()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/Chapter;->allChapterSizeInBytes:I

    return p0
.end method

.method public getBasePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Chapter;->basePath:Ljava/lang/String;

    return-object p0
.end method

.method public getChapterId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Chapter;->chapterId:Ljava/lang/String;

    return-object p0
.end method

.method public getChapterName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Chapter;->chapterName:Ljava/lang/String;

    return-object p0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Chapter;->charsetName:Ljava/lang/String;

    return-object p0
.end method

.method public getEndPos()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/Chapter;->endPos:I

    return p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Chapter;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public getHref()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Chapter;->href:Ljava/lang/String;

    return-object p0
.end method

.method public getNextSiblingId()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/Chapter;->nextSiblingId:I

    return p0
.end method

.method public getPlayOrder()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/Chapter;->playOrder:I

    return p0
.end method

.method public getPrevSiblingID()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/Chapter;->prevSiblingID:I

    return p0
.end method

.method public getStartPos()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/Chapter;->startPos:I

    return p0
.end method

.method public getUncompressedSize()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/Chapter;->uncompressedSize:I

    return p0
.end method

.method public isBuy()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/Chapter;->buy:Z

    return p0
.end method

.method public isChapterReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/Chapter;->chapterReady:Z

    return p0
.end method

.method public isFirstChapter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/Chapter;->firstChapter:Z

    return p0
.end method

.method public isLastChapter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/Chapter;->lastChapter:Z

    return p0
.end method

.method public isLinear()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/Chapter;->linear:Z

    return p0
.end method

.method public setAllChapterSizeInBytes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/Chapter;->allChapterSizeInBytes:I

    return-void
.end method

.method public setBasePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Chapter;->basePath:Ljava/lang/String;

    return-void
.end method

.method public setBuy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/Chapter;->buy:Z

    return-void
.end method

.method public setChapterId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Chapter;->chapterId:Ljava/lang/String;

    return-void
.end method

.method public setChapterName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Chapter;->chapterName:Ljava/lang/String;

    return-void
.end method

.method public setChapterReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/Chapter;->chapterReady:Z

    return-void
.end method

.method public setCharsetName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Chapter;->charsetName:Ljava/lang/String;

    return-void
.end method

.method public setEndPos(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/Chapter;->endPos:I

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Chapter;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFirstChapter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/Chapter;->firstChapter:Z

    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Chapter;->href:Ljava/lang/String;

    return-void
.end method

.method public setLastChapter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/Chapter;->lastChapter:Z

    return-void
.end method

.method public setLinear(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/Chapter;->linear:Z

    return-void
.end method

.method public setNextSiblingId(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/Chapter;->nextSiblingId:I

    return-void
.end method

.method public setPlayOrder(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/Chapter;->playOrder:I

    return-void
.end method

.method public setPrevSiblingID(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/Chapter;->prevSiblingID:I

    return-void
.end method

.method public setStartPos(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/Chapter;->startPos:I

    return-void
.end method

.method public setUncompressedSize(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/Chapter;->uncompressedSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chapter{chapterId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/Chapter;->chapterId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", chapterName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/Chapter;->chapterName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", charsetName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/Chapter;->charsetName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fileName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/Chapter;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", basePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/Chapter;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", href=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/Chapter;->href:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", playOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/Chapter;->playOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", prevSiblingID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/Chapter;->prevSiblingID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nextSiblingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/Chapter;->nextSiblingId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uncompressedSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/Chapter;->uncompressedSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allChapterSizeInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/Chapter;->allChapterSizeInBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/Chapter;->startPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/Chapter;->endPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstChapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/Chapter;->firstChapter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastChapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/Chapter;->lastChapter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", linear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/Chapter;->linear:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", buy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/Chapter;->buy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", chapterReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/Chapter;->chapterReady:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
