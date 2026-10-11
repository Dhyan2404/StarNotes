.class public Lorg/apache/poi/hwpf/model/TextPieceTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwpf/model/CharIndexTranslator;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x5f5e100

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static MAX_RECORD_LENGTH:I


# instance fields
.field _cpMin:I

.field protected _textPieces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/hwpf/model/TextPiece;",
            ">;"
        }
    .end annotation
.end field

.field protected _textPiecesFCOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/hwpf/model/TextPiece;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hwpf/model/TextPieceTable;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/model/TextPieceTable;->LOG:Lorg/apache/logging/log4j/Logger;

    const v0, 0x5f5e100

    sput v0, Lorg/apache/poi/hwpf/model/TextPieceTable;->MAX_RECORD_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPiecesFCOrder:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>([B[BIII)V
    .locals 5

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPiecesFCOrder:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Lorg/apache/poi/hwpf/model/PlexOfCps;

    .line 8
    invoke-static {}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getSizeInBytes()I

    move-result v1

    invoke-direct {v0, p2, p3, p4, v1}, Lorg/apache/poi/hwpf/model/PlexOfCps;-><init>([BIII)V

    .line 9
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/PlexOfCps;->length()I

    move-result p2

    .line 10
    new-array p3, p2, [Lorg/apache/poi/hwpf/model/PieceDescriptor;

    const/4 p4, 0x0

    move v1, p4

    :goto_0
    if-ge v1, p2, :cond_0

    .line 11
    invoke-virtual {v0, v1}, Lorg/apache/poi/hwpf/model/PlexOfCps;->getProperty(I)Lorg/apache/poi/hwpf/model/GenericPropertyNode;

    move-result-object v2

    .line 12
    new-instance v3, Lorg/apache/poi/hwpf/model/PieceDescriptor;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/GenericPropertyNode;->getBytes()[B

    move-result-object v2

    invoke-direct {v3, v2, p4}, Lorg/apache/poi/hwpf/model/PieceDescriptor;-><init>([BI)V

    aput-object v3, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    aget-object v1, p3, p4

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result v1

    sub-int/2addr v1, p5

    iput v1, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_cpMin:I

    move v1, p4

    :goto_1
    if-ge v1, p2, :cond_2

    .line 14
    aget-object v2, p3, v1

    .line 15
    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result v2

    sub-int/2addr v2, p5

    .line 16
    iget v3, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_cpMin:I

    if-ge v2, v3, :cond_1

    .line 17
    iput v2, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_cpMin:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge p4, p2, :cond_4

    .line 18
    aget-object p5, p3, p4

    invoke-virtual {p5}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result p5

    .line 19
    invoke-virtual {v0, p4}, Lorg/apache/poi/hwpf/model/PlexOfCps;->getProperty(I)Lorg/apache/poi/hwpf/model/GenericPropertyNode;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v2

    .line 21
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v1

    .line 22
    aget-object v3, p3, p4

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->isUnicode()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_3

    :cond_3
    const/4 v3, 0x1

    :goto_3
    sub-int v4, v1, v2

    mul-int/2addr v4, v3

    .line 23
    sget v3, Lorg/apache/poi/hwpf/model/TextPieceTable;->MAX_RECORD_LENGTH:I

    invoke-static {p1, p5, v4, v3}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p5

    .line 24
    aget-object v3, p3, p4

    invoke-virtual {p0, v2, v1, p5, v3}, Lorg/apache/poi/hwpf/model/TextPieceTable;->newTextPiece(II[BLorg/apache/poi/hwpf/model/PieceDescriptor;)Lorg/apache/poi/hwpf/model/TextPiece;

    move-result-object p5

    .line 25
    iget-object v1, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 26
    :cond_4
    iget-object p1, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPiecesFCOrder:Ljava/util/ArrayList;

    .line 28
    invoke-static {}, Lorg/apache/poi/hwpf/model/TextPieceTable;->byFilePosition()Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hwpf/model/TextPiece;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hwpf/model/TextPieceTable;->lambda$byFilePosition$0(Lorg/apache/poi/hwpf/model/TextPiece;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static byFilePosition()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lorg/apache/poi/hwpf/model/TextPiece;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/ydn;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ydn;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hwpf/model/TextPieceTable;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private static synthetic lambda$byFilePosition$0(Lorg/apache/poi/hwpf/model/TextPiece;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/poi/hwpf/model/TextPiece;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPiecesFCOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPiecesFCOrder:Ljava/util/ArrayList;

    invoke-static {}, Lorg/apache/poi/hwpf/model/TextPieceTable;->byFilePosition()Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public adjustForInsert(II)I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwpf/model/TextPiece;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setEnd(I)V

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwpf/model/TextPiece;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setStart(I)V

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setEnd(I)V

    goto :goto_0

    :cond_0
    return p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lorg/apache/poi/hwpf/model/TextPieceTable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/hwpf/model/TextPieceTable;

    iget-object v0, p1, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_3

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p1, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hwpf/model/TextPiece;

    iget-object v4, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/hwpf/model/TextPiece;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public getByteIndex(I)I
    .locals 6

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwpf/model/TextPiece;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lt p1, v2, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result v0

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/TextPiece;->isUnicode()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result p0

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/TextPiece;->isUnicode()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    mul-int/2addr p1, v3

    add-int v0, p0, p1

    :cond_4
    :goto_2
    return v0
.end method

.method public getCharIndex(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hwpf/model/TextPieceTable;->getCharIndex(II)I

    move-result p0

    return p0
.end method

.method public getCharIndex(II)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hwpf/model/TextPieceTable;->lookIndexForward(I)I

    move-result p1

    .line 3
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwpf/model/TextPiece;

    .line 4
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result v2

    .line 5
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/TextPiece;->bytesLength()I

    move-result v3

    add-int v4, v2, v3

    if-lt p1, v2, :cond_3

    if-le p1, v4, :cond_1

    goto :goto_0

    :cond_1
    if-le p1, v2, :cond_2

    if-ge p1, v4, :cond_2

    sub-int v3, p1, v2

    goto :goto_0

    :cond_2
    sub-int v5, v4, p1

    sub-int/2addr v3, v5

    .line 6
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/TextPiece;->isUnicode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    div-int/lit8 v3, v3, 0x2

    :cond_4
    add-int/2addr v0, v3

    if-lt p1, v2, :cond_0

    if-gt p1, v4, :cond_0

    if-lt v0, p2, :cond_0

    :cond_5
    return v0
.end method

.method public getCharIndexRanges(II)[[I
    .locals 7

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPiecesFCOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hwpf/model/TextPiece;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result v3

    if-gt p2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result v4

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/TextPiece;->bytesLength()I

    move-result v5

    add-int/2addr v4, v5

    if-le p1, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v5, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lorg/apache/poi/hwpf/model/TextPieceTable;->getEncodingMultiplier(Lorg/apache/poi/hwpf/model/TextPiece;)I

    move-result v6

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v2

    sub-int v3, v5, v3

    div-int/2addr v3, v6

    add-int/2addr v2, v3

    sub-int/2addr v4, v5

    div-int/2addr v4, v6

    add-int/2addr v4, v2

    filled-new-array {v2, v4}, [I

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [[I

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    return-object p0
.end method

.method public getCpMin()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_cpMin:I

    return p0
.end method

.method public getEncodingMultiplier(Lorg/apache/poi/hwpf/model/TextPiece;)I
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/TextPiece;->isUnicode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getText()Ljava/lang/StringBuilder;
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hwpf/model/TextPiece;

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/TextPiece;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v6

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v7

    sub-int/2addr v6, v7

    if-eq v5, v6, :cond_0

    sget-object v6, Lorg/apache/poi/hwpf/model/TextPieceTable;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v6}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v7

    invoke-static {v7}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v8

    invoke-static {v8}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v9

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Text piece has boundaries [{}; {}) but length {}"

    invoke-interface {v6, v10, v7, v8, v9}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v6

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v2, v6, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Lorg/apache/logging/log4j/util/Unbox;->box(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-static {v1}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Document text were rebuilt in {} ms ({} chars)"

    invoke-interface {p0, v3, v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public getTextPieces()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hwpf/model/TextPiece;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    return p0
.end method

.method public isIndexInTable(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPiecesFCOrder:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hwpf/model/TextPiece;

    .line 2
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result v2

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/TextPiece;->bytesLength()I

    move-result v0

    add-int/2addr v0, v2

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-gt v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isIndexInTable(II)Z
    .locals 4

    .line 4
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPiecesFCOrder:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hwpf/model/TextPiece;

    .line 5
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result v2

    .line 6
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/TextPiece;->bytesLength()I

    move-result v3

    add-int/2addr v3, v2

    if-lt p1, v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 8
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/TextPiece;->bytesLength()I

    move-result p1

    add-int/2addr v2, p1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public lookIndexBackward(I)I
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPiecesFCOrder:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwpf/model/TextPiece;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/TextPiece;->bytesLength()I

    move-result v3

    add-int/2addr v3, v2

    if-le p1, v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/TextPiece;->bytesLength()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    if-le v2, p1, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method public lookIndexForward(I)I
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPiecesFCOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPiecesFCOrder:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hwpf/model/TextPiece;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPiecesFCOrder:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwpf/model/TextPiece;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPiecesFCOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hwpf/model/TextPiece;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result v0

    if-gt v0, p1, :cond_1

    return p1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPiecesFCOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt v1, v0, :cond_4

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPiecesFCOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hwpf/model/TextPiece;

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result v4

    if-ge v4, p1, :cond_2

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_2
    if-le v4, p1, :cond_3

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result p0

    return p0

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPiecesFCOrder:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwpf/model/TextPiece;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result p0

    return p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Text pieces table is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public newTextPiece(II[BLorg/apache/poi/hwpf/model/PieceDescriptor;)Lorg/apache/poi/hwpf/model/TextPiece;
    .locals 0

    new-instance p0, Lorg/apache/poi/hwpf/model/TextPiece;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/hwpf/model/TextPiece;-><init>(II[BLorg/apache/poi/hwpf/model/PieceDescriptor;)V

    return-object p0
.end method

.method public writeTo(Ljava/io/ByteArrayOutputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hwpf/model/PlexOfCps;

    invoke-static {}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getSizeInBytes()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hwpf/model/PlexOfCps;-><init>(I)V

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwpf/model/TextPiece;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    rem-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_0

    rsub-int v3, v3, 0x200

    int-to-long v3, v3

    sget v5, Lorg/apache/poi/hwpf/model/TextPieceTable;->MAX_RECORD_LENGTH:I

    invoke-static {v3, v4, v5}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->setFilePosition(I)V

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/TextPiece;->getRawBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v1

    new-instance v4, Lorg/apache/poi/hwpf/model/GenericPropertyNode;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->toByteArray()[B

    move-result-object v2

    invoke-direct {v4, v3, v1, v2}, Lorg/apache/poi/hwpf/model/GenericPropertyNode;-><init>(II[B)V

    invoke-virtual {v0, v4}, Lorg/apache/poi/hwpf/model/PlexOfCps;->addProperty(Lorg/apache/poi/hwpf/model/GenericPropertyNode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/PlexOfCps;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
