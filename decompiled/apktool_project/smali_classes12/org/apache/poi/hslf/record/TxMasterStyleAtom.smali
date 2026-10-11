.class public final Lorg/apache/poi/hslf/record/TxMasterStyleAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field public static final MAX_INDENT:I = 0x5

.field private static final _type:J


# instance fields
.field private _data:[B

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

.field private paragraphStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->LOG:Lorg/apache/logging/log4j/Logger;

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->TxMasterStyleAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->_type:J

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->_header:[B

    add-int/lit8 p3, p3, -0x8

    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result p2

    invoke-static {p1, v0, p3, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->_data:[B

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Exception when reading available styles"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
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

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->charStyles:Ljava/util/List;

    return-object p0
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

    new-instance v0, Lcom/sunia/HTREnginev2/qon;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/qon;-><init>(Lorg/apache/poi/hslf/record/TxMasterStyleAtom;)V

    new-instance v1, Lcom/sunia/HTREnginev2/ron;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ron;-><init>(Lorg/apache/poi/hslf/record/TxMasterStyleAtom;)V

    const-string p0, "paragraphStyles"

    const-string v2, "charStyles"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

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

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->paragraphStyles:Ljava/util/List;

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->_type:J

    return-wide v0
.end method

.method public getTextType()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->_header:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p0

    shr-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public init()V
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->getTextType()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->_data:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->paragraphStyles:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->charStyles:Ljava/util/List;

    const/4 v3, 0x2

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    new-instance v5, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    sget-object v6, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;->paragraph:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    invoke-direct {v5, v2, v6}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;-><init>(ILorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;)V

    sget-object v6, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->CENTER_BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget v6, v6, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    if-lt v0, v6, :cond_0

    iget-object v6, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->_data:[B

    invoke-static {v6, v3}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->setIndentLevel(S)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_0
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->setIndentLevel(S)V

    :goto_1
    iget-object v6, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->_data:[B

    invoke-static {v6, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v6

    add-int/lit8 v3, v3, 0x4

    iget-object v7, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->_data:[B

    invoke-virtual {v5, v6, v7, v3}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->buildTextPropList(I[BI)I

    move-result v6

    add-int/2addr v3, v6

    iget-object v6, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->paragraphStyles:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->_data:[B

    invoke-static {v5, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v5

    add-int/lit8 v3, v3, 0x4

    new-instance v6, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    sget-object v7, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;->character:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    invoke-direct {v6, v2, v7}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;-><init>(ILorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;)V

    iget-object v7, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->_data:[B

    invoke-virtual {v6, v5, v7, v3}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->buildTextPropList(I[BI)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->charStyles:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateStyles()V
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->getTextType()I

    move-result v0

    :try_start_0
    new-instance v1, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V

    new-instance v2, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v2, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v3, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->paragraphStyles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->paragraphStyles:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    invoke-virtual {v5}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->copy()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->charStyles:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    invoke-virtual {v6}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->copy()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object v6

    sget-object v7, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->CENTER_BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget v7, v7, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    if-lt v0, v7, :cond_0

    invoke-virtual {v5}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getIndentLevel()S

    move-result v7

    invoke-virtual {v2, v7}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    :cond_0
    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->setIndentLevel(S)V

    const/4 v7, 0x1

    invoke-virtual {v5, v1, v7}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->writeOut(Ljava/io/OutputStream;Z)V

    invoke-virtual {v6, v1, v7}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->writeOut(Ljava/io/OutputStream;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->_data:[B

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->_header:[B

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->_data:[B

    array-length p0, p0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    const-string v1, "error in updating master style properties"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->_data:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
