.class public final Lorg/apache/poi/hslf/record/StyleTextPropAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field public static final _type:J


# instance fields
.field private final _header:[B

.field private charStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;",
            ">;"
        }
    .end annotation
.end field

.field private initialised:Z

.field private paragraphStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;",
            ">;"
        }
    .end annotation
.end field

.field private rawContents:[B

.field private reserved:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->StyleTextPropAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->_type:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 9
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 10
    iput-object v0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->_header:[B

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 11
    iput-object v2, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B

    new-array v1, v1, [B

    .line 12
    iput-object v1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->reserved:[B

    .line 13
    sget-wide v1, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->_type:J

    long-to-int v1, v1

    int-to-short v1, v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const/4 v1, 0x4

    const/16 v2, 0xa

    .line 14
    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->paragraphStyles:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->charStyles:Ljava/util/List;

    .line 17
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->addParagraphTextPropCollection(I)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    .line 18
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->addCharacterTextPropCollection(I)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->initialised:Z

    .line 20
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->updateRawContents()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 21
    new-instance p1, Lorg/apache/poi/hslf/exceptions/HSLFException;

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x12

    if-ge p3, v0, :cond_1

    .line 2
    array-length p3, p1

    sub-int/2addr p3, p2

    if-lt p3, v0, :cond_0

    move p3, v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not enough data to form a StyleTextPropAtom (min size 18 bytes long) - found "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    add-int/lit8 v0, p2, 0x8

    .line 4
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 5
    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result p2

    invoke-static {p1, v0, p3, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B

    const/4 p1, 0x0

    new-array p1, p1, [B

    .line 6
    iput-object p1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->reserved:[B

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->paragraphStyles:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->charStyles:Ljava/util/List;

    return-void
.end method

.method private checkTextLength(III)I
    .locals 3

    add-int p0, p1, p2

    add-int/lit8 v0, p3, 0x1

    if-le p0, v0, :cond_0

    sget-object p0, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, "Style length of {} at {} larger than stated size of {}, truncating"

    invoke-interface {p0, v2, p1, v1, p3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sub-int/2addr v0, p2

    return v0

    :cond_0
    return p1
.end method

.method private getCharactersCovered(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/j3n;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/j3n;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->sum()I

    move-result p0

    return p0
.end method

.method private updateRawContents()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->initialised:Z

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->paragraphStyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->writeOut(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->charStyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->writeOut(Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    :cond_2
    :goto_3
    iget-object v0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->reserved:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->_header:[B

    const/4 v1, 0x4

    invoke-static {p0, v1, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method


# virtual methods
.method public addCharacterTextPropCollection(I)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    sget-object v1, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;->character:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;-><init>(ILorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;)V

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->charStyles:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addCharacterTextPropCollection(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->charStyles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addParagraphTextPropCollection(I)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    sget-object v1, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;->paragraph:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;-><init>(ILorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;)V

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->paragraphStyles:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addParagraphTextPropCollection(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->paragraphStyles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearStyles()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->paragraphStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->charStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->reserved:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->initialised:Z

    return-void
.end method

.method public getCharacterStyles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->charStyles:Ljava/util/List;

    return-object p0
.end method

.method public getCharacterTextLengthCovered()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->charStyles:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->getCharactersCovered(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->initialised:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/k3n;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/k3n;-><init>(Lorg/apache/poi/hslf/record/StyleTextPropAtom;)V

    new-instance v1, Lcom/sunia/HTREnginev2/l3n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/l3n;-><init>(Lorg/apache/poi/hslf/record/StyleTextPropAtom;)V

    const-string p0, "paragraphStyles"

    const-string v2, "characterStyles"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getParagraphStyles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->paragraphStyles:Ljava/util/List;

    return-object p0
.end method

.method public getParagraphTextLengthCovered()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->paragraphStyles:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->getCharactersCovered(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->_type:J

    return-wide v0
.end method

.method public setCharacterStyles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->charStyles:Ljava/util/List;

    return-void
.end method

.method public setParagraphStyles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->paragraphStyles:Ljava/util/List;

    return-void
.end method

.method public setParentTextSize(I)V
    .locals 9

    iget-boolean v0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->initialised:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->paragraphStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->charStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v3, p1

    move v1, v0

    move v2, v1

    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B

    array-length v5, v4

    if-ge v1, v5, :cond_2

    if-ge v2, v3, :cond_2

    invoke-static {v4, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v4

    invoke-direct {p0, v4, v2, p1}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->checkTextLength(III)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B

    invoke-static {v5, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v5

    add-int/lit8 v1, v1, 0x2

    iget-object v6, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B

    invoke-static {v6, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v6

    add-int/lit8 v1, v1, 0x4

    new-instance v7, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    sget-object v8, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;->paragraph:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    invoke-direct {v7, v4, v8}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;-><init>(ILorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;)V

    invoke-virtual {v7, v5}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->setIndentLevel(S)V

    iget-object v4, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B

    invoke-virtual {v7, v6, v4, v1}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->buildTextPropList(I[BI)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->paragraphStyles:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B

    array-length v4, v4

    if-ge v1, v4, :cond_1

    if-ne v2, p1, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    array-length v3, v4

    if-lez v3, :cond_3

    add-int/lit8 v3, p1, 0x1

    if-eq v2, v3, :cond_3

    sget-object v4, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v4

    invoke-static {v2}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Problem reading paragraph style runs: textHandled = {}, text.size+1 = {}"

    invoke-interface {v4, v5, v2, v3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    move v2, p1

    :cond_4
    :goto_1
    iget-object v3, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B

    array-length v4, v3

    if-ge v1, v4, :cond_5

    if-ge v0, v2, :cond_5

    invoke-static {v3, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    invoke-direct {p0, v3, v0, p1}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->checkTextLength(III)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x4

    iget-object v4, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B

    invoke-static {v4, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v4

    add-int/lit8 v1, v1, 0x4

    new-instance v5, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    sget-object v6, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;->character:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    invoke-direct {v5, v3, v6}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;-><init>(ILorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;)V

    iget-object v3, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B

    invoke-virtual {v5, v4, v3, v1}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->buildTextPropList(I[BI)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->charStyles:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B

    array-length v3, v3

    if-ge v1, v3, :cond_4

    if-ne v0, p1, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    array-length v2, v3

    const/4 v3, 0x1

    if-lez v2, :cond_6

    add-int/2addr p1, v3

    if-eq v0, p1, :cond_6

    sget-object v2, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "Problem reading character style runs: textHandled = {}, text.size+1 = {}"

    invoke-interface {v2, v4, v0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    iget-object p1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B

    array-length v0, p1

    if-ge v1, v0, :cond_7

    array-length v0, p1

    sub-int/2addr v0, v1

    array-length v2, p1

    invoke-static {p1, v1, v0, v2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->reserved:[B

    :cond_7
    iput-boolean v3, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->initialised:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StyleTextPropAtom:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->initialised:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    const-string v1, "Uninitialised, dumping Raw Style Data\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v1, "Paragraph properties\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->getParagraphStyles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "Character properties\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->getCharacterStyles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "Reserved bytes\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->reserved:[B

    invoke-static {v1, v2, v3, v4}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, "  original byte stream \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B

    array-length v1, v1

    int-to-long v5, v1

    iget-object v1, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->reserved:[B

    array-length v1, v1

    int-to-long v7, v1

    add-long/2addr v5, v7

    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result v1

    invoke-static {v5, v6, v1}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v1

    iget-object v5, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B

    array-length v6, v5

    invoke-static {v5, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->reserved:[B

    iget-object p0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B

    array-length p0, p0

    array-length v6, v5

    invoke-static {v5, v4, v1, p0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v2, v3, v4}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->updateRawContents()V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->rawContents:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->reserved:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
