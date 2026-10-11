.class public final Lorg/apache/poi/hwpf/model/ListTables;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final _listMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hwpf/model/ListData;",
            ">;"
        }
    .end annotation
.end field

.field private _plfLfo:Lorg/apache/poi/hwpf/model/PlfLfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hwpf/model/ListTables;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/model/ListTables;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/ListTables;->_listMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 9

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/ListTables;->_listMap:Ljava/util/LinkedHashMap;

    .line 5
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    add-int/lit8 p2, p2, 0x2

    .line 6
    invoke-static {}, Lorg/apache/poi/hwpf/model/types/LSTFAbstractType;->getSize()I

    move-result v1

    mul-int/2addr v1, v0

    add-int/2addr v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 7
    new-instance v4, Lorg/apache/poi/hwpf/model/ListData;

    invoke-direct {v4, p1, p2}, Lorg/apache/poi/hwpf/model/ListData;-><init>([BI)V

    .line 8
    iget-object v5, p0, Lorg/apache/poi/hwpf/model/ListTables;->_listMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Lorg/apache/poi/hwpf/model/ListData;->getLsid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lorg/apache/poi/hwpf/model/types/LSTFAbstractType;->getSize()I

    move-result v5

    add-int/2addr p2, v5

    .line 10
    invoke-virtual {v4}, Lorg/apache/poi/hwpf/model/ListData;->numLevels()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    .line 11
    new-instance v7, Lorg/apache/poi/hwpf/model/ListLevel;

    invoke-direct {v7}, Lorg/apache/poi/hwpf/model/ListLevel;-><init>()V

    .line 12
    invoke-virtual {v7, p1, v1}, Lorg/apache/poi/hwpf/model/ListLevel;->read([BI)I

    move-result v8

    add-int/2addr v1, v8

    .line 13
    invoke-virtual {v4, v6, v7}, Lorg/apache/poi/hwpf/model/ListData;->setLevel(ILorg/apache/poi/hwpf/model/ListLevel;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p2, Lorg/apache/poi/hwpf/model/PlfLfo;

    invoke-direct {p2, p1, p3, p4}, Lorg/apache/poi/hwpf/model/PlfLfo;-><init>([BII)V

    iput-object p2, p0, Lorg/apache/poi/hwpf/model/ListTables;->_plfLfo:Lorg/apache/poi/hwpf/model/PlfLfo;

    return-void
.end method


# virtual methods
.method public addList(Lorg/apache/poi/hwpf/model/ListData;Lorg/apache/poi/hwpf/model/LFO;Lorg/apache/poi/hwpf/model/LFOData;)I
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/ListData;->getLsid()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hwpf/model/ListTables;->_listMap:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/ListData;->resetListID()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/apache/poi/hwpf/model/types/LFOAbstractType;->setLsid(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hwpf/model/ListTables;->_listMap:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_2

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "LFO and LFOData should be specified both or noone"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/ListTables;->_plfLfo:Lorg/apache/poi/hwpf/model/PlfLfo;

    invoke-virtual {p0, p2, p3}, Lorg/apache/poi/hwpf/model/PlfLfo;->add(Lorg/apache/poi/hwpf/model/LFO;Lorg/apache/poi/hwpf/model/LFOData;)V

    :cond_3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-class v1, Lorg/apache/poi/hwpf/model/ListTables;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/apache/poi/hwpf/model/ListTables;

    iget-object v1, p0, Lorg/apache/poi/hwpf/model/ListTables;->_listMap:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lorg/apache/poi/hwpf/model/ListTables;->_listMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/ListTables;->_plfLfo:Lorg/apache/poi/hwpf/model/PlfLfo;

    iget-object p1, p1, Lorg/apache/poi/hwpf/model/ListTables;->_plfLfo:Lorg/apache/poi/hwpf/model/PlfLfo;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getLevel(II)Lorg/apache/poi/hwpf/model/ListLevel;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/ListTables;->_listMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwpf/model/ListData;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/hwpf/model/ListTables;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p2, "ListData for {} was null."

    invoke-static {p1}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/ListData;->numLevels()I

    move-result p1

    if-ge p2, p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/ListData;->getLevels()[Lorg/apache/poi/hwpf/model/ListLevel;

    move-result-object p0

    aget-object p0, p0, p2

    return-object p0

    :cond_1
    sget-object p1, Lorg/apache/poi/hwpf/model/ListTables;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    invoke-static {p2}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/ListData;->numLevels()I

    move-result p0

    invoke-static {p0}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "Requested level {} which was greater than the maximum defined ({})"

    invoke-interface {p1, v1, p2, p0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLfo(I)Lorg/apache/poi/hwpf/model/LFO;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/ListTables;->_plfLfo:Lorg/apache/poi/hwpf/model/PlfLfo;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwpf/model/PlfLfo;->getLfo(I)Lorg/apache/poi/hwpf/model/LFO;

    move-result-object p0

    return-object p0
.end method

.method public getLfoData(I)Lorg/apache/poi/hwpf/model/LFOData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/ListTables;->_plfLfo:Lorg/apache/poi/hwpf/model/PlfLfo;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwpf/model/PlfLfo;->getLfoData(I)Lorg/apache/poi/hwpf/model/LFOData;

    move-result-object p0

    return-object p0
.end method

.method public getListData(I)Lorg/apache/poi/hwpf/model/ListData;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/ListTables;->_listMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwpf/model/ListData;

    return-object p0
.end method

.method public getOverrideIndexFromListID(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/ListTables;->_plfLfo:Lorg/apache/poi/hwpf/model/PlfLfo;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwpf/model/PlfLfo;->getIlfoByLsid(I)I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hwpf/model/ListTables;->_listMap:Ljava/util/LinkedHashMap;

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/ListTables;->_plfLfo:Lorg/apache/poi/hwpf/model/PlfLfo;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public writeListDataTo(Lorg/apache/poi/hwpf/model/FileInformationBlock;Ljava/io/ByteArrayOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setFcPlfLst(I)V

    iget-object v1, p0, Lorg/apache/poi/hwpf/model/ListTables;->_listMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [B

    int-to-short v1, v1

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/ListTables;->_listMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwpf/model/ListData;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/ListData;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/ListData;->getLevels()[Lorg/apache/poi/hwpf/model/ListLevel;

    move-result-object v1

    array-length v3, v1

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v1, v5

    invoke-virtual {v6}, Lorg/apache/poi/hwpf/model/ListLevel;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwpf/model/FileInformationBlock;->setLcbPlfLst(I)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeListOverridesTo(Lorg/apache/poi/hwpf/model/FileInformationBlock;Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/ListTables;->_plfLfo:Lorg/apache/poi/hwpf/model/PlfLfo;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hwpf/model/PlfLfo;->writeTo(Lorg/apache/poi/hwpf/model/FileInformationBlock;Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
