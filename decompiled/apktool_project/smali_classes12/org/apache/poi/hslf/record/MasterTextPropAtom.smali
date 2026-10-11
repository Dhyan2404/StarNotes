.class public final Lorg/apache/poi/hslf/record/MasterTextPropAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x186a0

.field private static MAX_RECORD_LENGTH:I = 0x186a0


# instance fields
.field private _data:[B

.field private _header:[B

.field private indents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/IndentProp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->_header:[B

    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 3
    iput-object v1, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->_data:[B

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->getRecordType()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-short v1, v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 5
    iget-object v0, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->_header:[B

    iget-object v1, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->_data:[B

    array-length v1, v1

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->indents:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    add-int/lit8 v0, p2, 0x8

    .line 8
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 9
    sget p2, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->MAX_RECORD_LENGTH:I

    invoke-static {p1, v0, p3, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->_data:[B

    .line 10
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->read()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    sget-object p1, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Failed to parse MasterTextPropAtom"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private read()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->_data:[B

    array-length v1, v1

    div-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->indents:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->_data:[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x6

    if-gt v0, v2, :cond_0

    invoke-static {v1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->_data:[B

    add-int/lit8 v3, v0, 0x4

    invoke-static {v2, v3}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->indents:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/hslf/model/textproperties/IndentProp;

    invoke-direct {v4, v1, v2}, Lorg/apache/poi/hslf/model/textproperties/IndentProp;-><init>(IS)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->MAX_RECORD_LENGTH:I

    return-void
.end method

.method private write()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->indents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    sget v2, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->MAX_RECORD_LENGTH:I

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->_data:[B

    iget-object v0, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->indents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/model/textproperties/IndentProp;

    iget-object v3, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->_data:[B

    invoke-virtual {v2}, Lorg/apache/poi/hslf/model/textproperties/IndentProp;->getCharactersCovered()I

    move-result v4

    invoke-static {v3, v1, v4}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object v3, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->_data:[B

    add-int/lit8 v4, v1, 0x4

    invoke-virtual {v2}, Lorg/apache/poi/hslf/model/textproperties/IndentProp;->getIndentLevel()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v3, v4, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getGenericProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/h9j;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/h9j;-><init>(Lorg/apache/poi/hslf/record/MasterTextPropAtom;)V

    const-string p0, "indents"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getIndentAt(I)I
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->indents:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/model/textproperties/IndentProp;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/model/textproperties/IndentProp;->getCharactersCovered()I

    move-result v2

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hslf/model/textproperties/IndentProp;->getIndentLevel()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getIndents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/IndentProp;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->indents:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->MasterTextPropAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->write()V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->_data:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
