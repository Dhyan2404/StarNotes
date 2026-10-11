.class public Lcom/onyx/engine/sdk/PinPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static INVALID_POSITION_INT:I

.field public static format:Ljava/text/DecimalFormat;


# instance fields
.field chapterEndPosition:I

.field chapterID:Ljava/lang/String;

.field chapterIndex:I

.field chapterStartPosition:I

.field nodePosition:I

.field textOffset:I
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "textEndOffset"
        }
    .end annotation
.end field

.field xpath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    const-string v2, "0000000000"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/onyx/engine/sdk/PinPosition;->format:Ljava/text/DecimalFormat;

    const/4 v0, -0x1

    sput v0, Lcom/onyx/engine/sdk/PinPosition;->INVALID_POSITION_INT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/engine/sdk/Chapter;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterID:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/Chapter;->getPlayOrder()I

    move-result v0

    iput v0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterIndex:I

    .line 5
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/Chapter;->getStartPos()I

    move-result v0

    iput v0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterStartPosition:I

    .line 6
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/Chapter;->getEndPos()I

    move-result p1

    iput p1, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterEndPosition:I

    :cond_0
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/PinPosition;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/c4l;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/c4l;-><init>()V

    const-class v1, Lcom/onyx/engine/sdk/PinPosition;

    invoke-static {p0, v1, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public static parseList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/PinPosition;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/engine/sdk/PinPosition$1;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/PinPosition$1;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const-class v0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse Position list failed, json: "

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
.method public compare(Lcom/onyx/engine/sdk/PinPosition;)I
    .locals 2

    iget v0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterIndex:I

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getChapterIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->getDocumentPositionInt()I

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getDocumentPositionInt()I

    move-result p1

    :goto_0
    sub-int/2addr p0, p1

    return p0

    :cond_0
    iget p0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterIndex:I

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getChapterIndex()I

    move-result p1

    goto :goto_0
.end method

.method public copy()Lcom/onyx/engine/sdk/PinPosition;
    .locals 1

    .line 5
    new-instance v0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/PinPosition;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Lcom/onyx/engine/sdk/PinPosition;->copy(Lcom/onyx/engine/sdk/PinPosition;)V

    return-object v0
.end method

.method public copy(Lcom/onyx/engine/sdk/PinPosition;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/PinPosition;->copyChapterPosition(Lcom/onyx/engine/sdk/PinPosition;)V

    .line 2
    iget v0, p1, Lcom/onyx/engine/sdk/PinPosition;->nodePosition:I

    iput v0, p0, Lcom/onyx/engine/sdk/PinPosition;->nodePosition:I

    .line 3
    iget v0, p1, Lcom/onyx/engine/sdk/PinPosition;->textOffset:I

    iput v0, p0, Lcom/onyx/engine/sdk/PinPosition;->textOffset:I

    .line 4
    iget-object p1, p1, Lcom/onyx/engine/sdk/PinPosition;->xpath:Ljava/util/List;

    invoke-static {p1}, Lcom/onyx/engine/sdk/Utils;->copyXpath(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/PinPosition;->xpath:Ljava/util/List;

    return-void
.end method

.method public copyChapterPosition()Lcom/onyx/engine/sdk/PinPosition;
    .locals 1

    .line 5
    new-instance v0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/PinPosition;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Lcom/onyx/engine/sdk/PinPosition;->copyChapterPosition(Lcom/onyx/engine/sdk/PinPosition;)V

    return-object v0
.end method

.method public copyChapterPosition(Lcom/onyx/engine/sdk/PinPosition;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/onyx/engine/sdk/PinPosition;->chapterID:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterID:Ljava/lang/String;

    .line 2
    iget v0, p1, Lcom/onyx/engine/sdk/PinPosition;->chapterIndex:I

    iput v0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterIndex:I

    .line 3
    iget v0, p1, Lcom/onyx/engine/sdk/PinPosition;->chapterStartPosition:I

    iput v0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterStartPosition:I

    .line 4
    iget p1, p1, Lcom/onyx/engine/sdk/PinPosition;->chapterEndPosition:I

    iput p1, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterEndPosition:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/engine/sdk/PinPosition;

    iget v2, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterIndex:I

    iget v3, p1, Lcom/onyx/engine/sdk/PinPosition;->chapterIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterStartPosition:I

    iget v3, p1, Lcom/onyx/engine/sdk/PinPosition;->chapterStartPosition:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterEndPosition:I

    iget v3, p1, Lcom/onyx/engine/sdk/PinPosition;->chapterEndPosition:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/PinPosition;->nodePosition:I

    iget v3, p1, Lcom/onyx/engine/sdk/PinPosition;->nodePosition:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/PinPosition;->textOffset:I

    iget v3, p1, Lcom/onyx/engine/sdk/PinPosition;->textOffset:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterID:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/engine/sdk/PinPosition;->chapterID:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/onyx/engine/sdk/PinPosition;->xpath:Ljava/util/List;

    iget-object p1, p1, Lcom/onyx/engine/sdk/PinPosition;->xpath:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getChapterEndPosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterEndPosition:I

    return p0
.end method

.method public getChapterID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterID:Ljava/lang/String;

    return-object p0
.end method

.method public getChapterIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterIndex:I

    return p0
.end method

.method public getChapterLength()I
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget v0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterEndPosition:I

    iget p0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterStartPosition:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getChapterStartPosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterStartPosition:I

    return p0
.end method

.method public getDocumentPositionInt()I
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/onyx/engine/sdk/PinPosition;->INVALID_POSITION_INT:I

    return p0

    :cond_0
    iget v0, p0, Lcom/onyx/engine/sdk/PinPosition;->nodePosition:I

    iget v1, p0, Lcom/onyx/engine/sdk/PinPosition;->textOffset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterEndPosition:I

    iget p0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterStartPosition:I

    sub-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getNodePosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PinPosition;->nodePosition:I

    return p0
.end method

.method public getPositionInt()I
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/onyx/engine/sdk/PinPosition;->INVALID_POSITION_INT:I

    return p0

    :cond_0
    iget v0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterStartPosition:I

    iget v1, p0, Lcom/onyx/engine/sdk/PinPosition;->nodePosition:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/onyx/engine/sdk/PinPosition;->textOffset:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterEndPosition:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getPositionIntWithoutOffset()I
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/onyx/engine/sdk/PinPosition;->INVALID_POSITION_INT:I

    return p0

    :cond_0
    iget v0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterStartPosition:I

    iget p0, p0, Lcom/onyx/engine/sdk/PinPosition;->nodePosition:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getTextOffset()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PinPosition;->textOffset:I

    return p0
.end method

.method public getXpath()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PinPosition;->xpath:Ljava/util/List;

    return-object p0
.end method

.method public getXpathString()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PinPosition;->xpath:Ljava/util/List;

    invoke-static {p0}, Lcom/onyx/engine/sdk/Utils;->toXpathString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterID:Ljava/lang/String;

    iget v1, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterStartPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterEndPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/onyx/engine/sdk/PinPosition;->nodePosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/onyx/engine/sdk/PinPosition;->textOffset:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/onyx/engine/sdk/PinPosition;->xpath:Ljava/util/List;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isChapterEnd()Z
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget v0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterEndPosition:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/onyx/engine/sdk/PinPosition;->nodePosition:I

    iget v1, p0, Lcom/onyx/engine/sdk/PinPosition;->textOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->getChapterLength()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChapterStart()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget v0, p0, Lcom/onyx/engine/sdk/PinPosition;->nodePosition:I

    if-nez v0, :cond_0

    iget p0, p0, Lcom/onyx/engine/sdk/PinPosition;->textOffset:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInvalid()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget v0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterIndex:I

    if-ltz v0, :cond_1

    iget p0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterEndPosition:I

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setChapterEndPosition(I)Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterEndPosition:I

    return-object p0
.end method

.method public setChapterID(Ljava/lang/String;)Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterID:Ljava/lang/String;

    return-object p0
.end method

.method public setChapterIndex(I)Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterIndex:I

    return-object p0
.end method

.method public setChapterStartPosition(I)Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterStartPosition:I

    return-object p0
.end method

.method public setNodePosition(I)Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PinPosition;->nodePosition:I

    return-object p0
.end method

.method public setTextOffset(I)Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PinPosition;->textOffset:I

    return-object p0
.end method

.method public setXpath(Ljava/lang/String;)Lcom/onyx/engine/sdk/PinPosition;
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/onyx/engine/sdk/Utils;->toIntXpath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/PinPosition;->xpath:Ljava/util/List;

    return-object p0
.end method

.method public setXpath(Ljava/util/List;)Lcom/onyx/engine/sdk/PinPosition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/onyx/engine/sdk/PinPosition;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/onyx/engine/sdk/PinPosition;->xpath:Ljava/util/List;

    return-object p0
.end method

.method public toCompareJson()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"chapterIndex\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/engine/sdk/PinPosition;->format:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterIndex:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"nodePosition\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/engine/sdk/PinPosition;->format:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/onyx/engine/sdk/PinPosition;->nodePosition:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"textOffset\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/engine/sdk/PinPosition;->format:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/onyx/engine/sdk/PinPosition;->textOffset:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"chapterStartPosition\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/engine/sdk/PinPosition;->format:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterStartPosition:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"chapterEndPosition\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/engine/sdk/PinPosition;->format:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterEndPosition:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"chapterID\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"xpath\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/engine/sdk/PinPosition;->xpath:Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    const-string v1, "Position{chapterID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", chapterIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chapterStartPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterStartPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chapterEndPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterEndPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nodePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/PinPosition;->nodePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/PinPosition;->textOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", xpath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/engine/sdk/PinPosition;->xpath:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
