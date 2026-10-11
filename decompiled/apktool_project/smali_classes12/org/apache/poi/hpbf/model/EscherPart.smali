.class public abstract Lorg/apache/poi/hpbf/model/EscherPart;
.super Lorg/apache/poi/hpbf/model/HPBFPart;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0xf4240

.field private static MAX_RECORD_LENGTH:I = 0xf4240


# instance fields
.field private records:[Lorg/apache/poi/ddf/EscherRecord;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hpbf/model/HPBFPart;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;[Ljava/lang/String;)V

    new-instance p1, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {p1}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hpbf/model/HPBFPart;->getData()[B

    move-result-object v0

    array-length v1, v0

    :goto_0
    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {p1, v0, v2}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v3

    invoke-virtual {v3, v0, v2, p1}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p1, v2, [Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/ddf/EscherRecord;

    iput-object p1, p0, Lorg/apache/poi/hpbf/model/EscherPart;->records:[Lorg/apache/poi/ddf/EscherRecord;

    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hpbf/model/EscherPart;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hpbf/model/EscherPart;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public generateData()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/hpbf/model/EscherPart;->records:[Lorg/apache/poi/ddf/EscherRecord;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    int-to-long v0, v4

    sget v3, Lorg/apache/poi/hpbf/model/EscherPart;->MAX_RECORD_LENGTH:I

    invoke-static {v0, v1, v3}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hpbf/model/EscherPart;->records:[Lorg/apache/poi/ddf/EscherRecord;

    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    invoke-virtual {v5, v4, v0}, Lorg/apache/poi/ddf/EscherRecord;->serialize(I[B)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/poi/hpbf/model/HPBFPart;->setData([B)V

    return-void
.end method

.method public getEscherRecords()[Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpbf/model/EscherPart;->records:[Lorg/apache/poi/ddf/EscherRecord;

    return-object p0
.end method
