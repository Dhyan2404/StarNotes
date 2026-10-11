.class public final Lorg/apache/poi/hslf/record/OEPlaceholderAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field public static final PLACEHOLDER_FULLSIZE:I = 0x0

.field public static final PLACEHOLDER_HALFSIZE:I = 0x1

.field public static final PLACEHOLDER_QUARTSIZE:I = 0x2


# instance fields
.field private final _header:[B

.field private placeholderId:I

.field private placeholderSize:I

.field private placementId:I

.field private unusedShort:S


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 2
    iput-object v1, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->_header:[B

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2, v2}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->getRecordType()J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x2

    invoke-static {v1, v4, v3}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/4 v3, 0x4

    .line 5
    invoke-static {v1, v3, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 6
    iput v2, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->placementId:I

    .line 7
    iput v2, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->placeholderId:I

    .line 8
    iput v2, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->placeholderSize:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    add-int/lit8 p3, p2, 0x8

    .line 10
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->_header:[B

    .line 11
    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->placementId:I

    add-int/lit8 p3, p3, 0x4

    .line 12
    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getUByte([BI)S

    move-result p2

    iput p2, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->placeholderId:I

    add-int/lit8 p3, p3, 0x1

    .line 13
    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getUByte([BI)S

    move-result p2

    iput p2, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->placeholderSize:I

    add-int/lit8 p3, p3, 0x1

    .line 14
    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->unusedShort:S

    return-void
.end method


# virtual methods
.method public getGenericProperties()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "placementId"

    new-instance v1, Lcom/sunia/HTREnginev2/o6k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/o6k;-><init>(Lorg/apache/poi/hslf/record/OEPlaceholderAtom;)V

    const-string v2, "placeholderId"

    new-instance v3, Lcom/sunia/HTREnginev2/p6k;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/p6k;-><init>(Lorg/apache/poi/hslf/record/OEPlaceholderAtom;)V

    const-string v4, "placeholderSize"

    new-instance v5, Lcom/sunia/HTREnginev2/q6k;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/q6k;-><init>(Lorg/apache/poi/hslf/record/OEPlaceholderAtom;)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPlaceholderId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->placeholderId:I

    return p0
.end method

.method public getPlaceholderSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->placeholderSize:I

    return p0
.end method

.method public getPlacementId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->placementId:I

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->OEPlaceholderAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public setPlaceholderId(B)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->placeholderId:I

    return-void
.end method

.method public setPlaceholderSize(B)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->placeholderSize:I

    return-void
.end method

.method public setPlacementId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->placementId:I

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->placementId:I

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget v1, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->placeholderId:I

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    iget v1, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->placeholderSize:I

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    const/4 v1, 0x6

    iget-short p0, p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->unusedShort:S

    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
