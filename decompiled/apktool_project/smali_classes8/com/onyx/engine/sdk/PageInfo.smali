.class public Lcom/onyx/engine/sdk/PageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field canNextChapter:Z
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field canNextScreen:Z
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field canPrevChapter:Z
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field canPrevScreen:Z
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field letterSpacing:F
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field lineHeight:F
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field marginBottom:F
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field marginLeft:F
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field marginRight:F
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field marginTop:F
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field pageNumber:I
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field pageRange:Lcom/onyx/engine/sdk/PageRange;

.field paragraphSpacing:F
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field totalPage:I
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/onyx/engine/sdk/PageRange;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/PageRange;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/engine/sdk/Chapter;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/onyx/engine/sdk/PageRange;

    invoke-direct {v0, p1}, Lcom/onyx/engine/sdk/PageRange;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    iput-object v0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/engine/sdk/PageRange;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 1

    const-class v0, Lcom/onyx/engine/sdk/PageInfo;

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/PageInfo;

    return-object p0
.end method


# virtual methods
.method public compare(Lcom/onyx/engine/sdk/PinPosition;)I
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/PageRange;->compare(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    return p0
.end method

.method public contains(Lcom/onyx/engine/sdk/PinPosition;)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/PageRange;->contains(Lcom/onyx/engine/sdk/PinPosition;)Z

    move-result p0

    return p0
.end method

.method public copy()Lcom/onyx/engine/sdk/PageInfo;
    .locals 1

    .line 15
    new-instance v0, Lcom/onyx/engine/sdk/PageInfo;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/PageInfo;-><init>()V

    .line 16
    invoke-virtual {v0, p0}, Lcom/onyx/engine/sdk/PageInfo;->copy(Lcom/onyx/engine/sdk/PageInfo;)V

    return-object v0
.end method

.method public copy(Lcom/onyx/engine/sdk/PageInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    iget-object v1, p1, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/PageRange;->copy(Lcom/onyx/engine/sdk/PageRange;)V

    .line 2
    iget-boolean v0, p1, Lcom/onyx/engine/sdk/PageInfo;->canPrevScreen:Z

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/PageInfo;->canPrevScreen:Z

    .line 3
    iget-boolean v0, p1, Lcom/onyx/engine/sdk/PageInfo;->canNextScreen:Z

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/PageInfo;->canNextScreen:Z

    .line 4
    iget-boolean v0, p1, Lcom/onyx/engine/sdk/PageInfo;->canPrevChapter:Z

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/PageInfo;->canPrevChapter:Z

    .line 5
    iget-boolean v0, p1, Lcom/onyx/engine/sdk/PageInfo;->canNextChapter:Z

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/PageInfo;->canNextChapter:Z

    .line 6
    iget v0, p1, Lcom/onyx/engine/sdk/PageInfo;->pageNumber:I

    iput v0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageNumber:I

    .line 7
    iget v0, p1, Lcom/onyx/engine/sdk/PageInfo;->totalPage:I

    iput v0, p0, Lcom/onyx/engine/sdk/PageInfo;->totalPage:I

    .line 8
    iget v0, p1, Lcom/onyx/engine/sdk/PageInfo;->marginLeft:F

    iput v0, p0, Lcom/onyx/engine/sdk/PageInfo;->marginLeft:F

    .line 9
    iget v0, p1, Lcom/onyx/engine/sdk/PageInfo;->marginTop:F

    iput v0, p0, Lcom/onyx/engine/sdk/PageInfo;->marginTop:F

    .line 10
    iget v0, p1, Lcom/onyx/engine/sdk/PageInfo;->marginRight:F

    iput v0, p0, Lcom/onyx/engine/sdk/PageInfo;->marginRight:F

    .line 11
    iget v0, p1, Lcom/onyx/engine/sdk/PageInfo;->marginBottom:F

    iput v0, p0, Lcom/onyx/engine/sdk/PageInfo;->marginBottom:F

    .line 12
    iget v0, p1, Lcom/onyx/engine/sdk/PageInfo;->paragraphSpacing:F

    iput v0, p0, Lcom/onyx/engine/sdk/PageInfo;->paragraphSpacing:F

    .line 13
    iget v0, p1, Lcom/onyx/engine/sdk/PageInfo;->lineHeight:F

    iput v0, p0, Lcom/onyx/engine/sdk/PageInfo;->lineHeight:F

    .line 14
    iget p1, p1, Lcom/onyx/engine/sdk/PageInfo;->letterSpacing:F

    iput p1, p0, Lcom/onyx/engine/sdk/PageInfo;->letterSpacing:F

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/onyx/engine/sdk/PageInfo;->equals(Ljava/lang/Object;Z)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;Z)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    check-cast p1, Lcom/onyx/engine/sdk/PageInfo;

    .line 4
    iget-object v2, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    iget-object v3, p1, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/onyx/engine/sdk/PageInfo;->canPrevScreen:Z

    iget-boolean v3, p1, Lcom/onyx/engine/sdk/PageInfo;->canPrevScreen:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/onyx/engine/sdk/PageInfo;->canNextScreen:Z

    iget-boolean v3, p1, Lcom/onyx/engine/sdk/PageInfo;->canNextScreen:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/onyx/engine/sdk/PageInfo;->canPrevChapter:Z

    iget-boolean v3, p1, Lcom/onyx/engine/sdk/PageInfo;->canPrevChapter:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/onyx/engine/sdk/PageInfo;->canNextChapter:Z

    iget-boolean v3, p1, Lcom/onyx/engine/sdk/PageInfo;->canNextChapter:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/PageInfo;->totalPage:I

    iget v3, p1, Lcom/onyx/engine/sdk/PageInfo;->totalPage:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/PageInfo;->marginLeft:F

    iget v3, p0, Lcom/onyx/engine/sdk/PageInfo;->marginLeft:F

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/PageInfo;->marginTop:F

    iget v3, p0, Lcom/onyx/engine/sdk/PageInfo;->marginTop:F

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/PageInfo;->marginRight:F

    iget v3, p0, Lcom/onyx/engine/sdk/PageInfo;->marginRight:F

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/PageInfo;->marginBottom:F

    iget v3, p0, Lcom/onyx/engine/sdk/PageInfo;->marginBottom:F

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/PageInfo;->paragraphSpacing:F

    iget v3, p0, Lcom/onyx/engine/sdk/PageInfo;->paragraphSpacing:F

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/PageInfo;->lineHeight:F

    iget v3, p0, Lcom/onyx/engine/sdk/PageInfo;->lineHeight:F

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/PageInfo;->letterSpacing:F

    iget v3, p0, Lcom/onyx/engine/sdk/PageInfo;->letterSpacing:F

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    if-nez p2, :cond_3

    iget p0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageNumber:I

    iget p1, p1, Lcom/onyx/engine/sdk/PageInfo;->pageNumber:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public equalsIgnorePageNum(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/engine/sdk/PageInfo;->equals(Ljava/lang/Object;Z)Z

    move-result p0

    return p0
.end method

.method public getEndChapterID()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageRange;->getEndChapterID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEndChapterIndex()I
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageRange;->getEndChapterIndex()I

    move-result p0

    return p0
.end method

.method public getEndChapterLength()I
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageRange;->getEndChapterLength()I

    move-result p0

    return p0
.end method

.method public getEndPositionInt()I
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageRange;->getEndPositionInt()I

    move-result p0

    return p0
.end method

.method public getLetterSpacing()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PageInfo;->letterSpacing:F

    return p0
.end method

.method public getLineHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PageInfo;->lineHeight:F

    return p0
.end method

.method public getMarginBottom()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PageInfo;->marginBottom:F

    return p0
.end method

.method public getMarginLeft()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PageInfo;->marginLeft:F

    return p0
.end method

.method public getMarginRight()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PageInfo;->marginRight:F

    return p0
.end method

.method public getMarginTop()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PageInfo;->marginTop:F

    return p0
.end method

.method public getPageNumber()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageNumber:I

    return p0
.end method

.method public getPageRange()Lcom/onyx/engine/sdk/PageRange;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    return-object p0
.end method

.method public getParagraphSpacing()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PageInfo;->paragraphSpacing:F

    return p0
.end method

.method public getStartChapterID()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageRange;->getStartChapterID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStartChapterIndex()I
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageRange;->getStartChapterIndex()I

    move-result p0

    return p0
.end method

.method public getStartChapterLength()I
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageRange;->getStartChapterLength()I

    move-result p0

    return p0
.end method

.method public getStartPositionInt()I
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageRange;->getStartPositionInt()I

    move-result p0

    return p0
.end method

.method public getTotalPage()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PageInfo;->totalPage:I

    return p0
.end method

.method public hashCode()I
    .locals 14

    iget-object v0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/PageInfo;->canPrevScreen:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/onyx/engine/sdk/PageInfo;->canNextScreen:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/onyx/engine/sdk/PageInfo;->canPrevChapter:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/onyx/engine/sdk/PageInfo;->canNextChapter:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v5, p0, Lcom/onyx/engine/sdk/PageInfo;->pageNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/onyx/engine/sdk/PageInfo;->totalPage:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/onyx/engine/sdk/PageInfo;->marginLeft:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v8, p0, Lcom/onyx/engine/sdk/PageInfo;->marginTop:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget v9, p0, Lcom/onyx/engine/sdk/PageInfo;->marginRight:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget v10, p0, Lcom/onyx/engine/sdk/PageInfo;->marginBottom:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget v11, p0, Lcom/onyx/engine/sdk/PageInfo;->paragraphSpacing:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget v12, p0, Lcom/onyx/engine/sdk/PageInfo;->lineHeight:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget p0, p0, Lcom/onyx/engine/sdk/PageInfo;->letterSpacing:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    filled-new-array/range {v0 .. v13}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isCanNextChapter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/PageInfo;->canNextChapter:Z

    return p0
.end method

.method public isCanNextScreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/PageInfo;->canNextScreen:Z

    return p0
.end method

.method public isCanPrevChapter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/PageInfo;->canPrevChapter:Z

    return p0
.end method

.method public isCanPrevScreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/PageInfo;->canPrevScreen:Z

    return p0
.end method

.method public isChapterFirstPage()Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageRange;->isChapterFirstPage()Z

    move-result p0

    return p0
.end method

.method public isChapterLastPage()Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageRange;->isChapterLastPage()Z

    move-result p0

    return p0
.end method

.method public setCanNextChapter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/PageInfo;->canNextChapter:Z

    return-void
.end method

.method public setCanNextScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/PageInfo;->canNextScreen:Z

    return-void
.end method

.method public setCanPrevChapter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/PageInfo;->canPrevChapter:Z

    return-void
.end method

.method public setCanPrevScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/PageInfo;->canPrevScreen:Z

    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PageInfo;->letterSpacing:F

    return-void
.end method

.method public setLineHeight(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PageInfo;->lineHeight:F

    return-void
.end method

.method public setMarginBottom(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PageInfo;->marginBottom:F

    return-void
.end method

.method public setMarginLeft(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PageInfo;->marginLeft:F

    return-void
.end method

.method public setMarginRight(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PageInfo;->marginRight:F

    return-void
.end method

.method public setMarginTop(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PageInfo;->marginTop:F

    return-void
.end method

.method public setPageNumber(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PageInfo;->pageNumber:I

    return-void
.end method

.method public setPageRange(Lcom/onyx/engine/sdk/PageRange;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    return-object p0
.end method

.method public setParagraphSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PageInfo;->paragraphSpacing:F

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PageInfo;->totalPage:I

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageInfo{pageRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/PageInfo;->pageRange:Lcom/onyx/engine/sdk/PageRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \ncanPrevScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/PageInfo;->canPrevScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canNextScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/PageInfo;->canNextScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canPrevChapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/PageInfo;->canPrevChapter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canNextChapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/PageInfo;->canNextChapter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pageNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/PageInfo;->pageNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/PageInfo;->totalPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", marginLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/PageInfo;->marginLeft:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", marginTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/PageInfo;->marginTop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", marginRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/PageInfo;->marginRight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", marginBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/PageInfo;->marginBottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", paragraphSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/PageInfo;->paragraphSpacing:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", lineHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/PageInfo;->lineHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", letterSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/engine/sdk/PageInfo;->letterSpacing:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
