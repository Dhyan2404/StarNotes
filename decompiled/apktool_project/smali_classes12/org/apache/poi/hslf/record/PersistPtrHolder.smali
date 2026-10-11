.class public final Lorg/apache/poi/hslf/record/PersistPtrHolder;
.super Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;
.source "SourceFile"


# static fields
.field private static final cntPersistFld:Lorg/apache/poi/util/BitField;

.field private static final persistIdFld:Lorg/apache/poi/util/BitField;


# instance fields
.field private final _header:[B

.field private _ptrData:[B

.field private final _slideLocations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _type:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0xfffff

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->persistIdFld:Lorg/apache/poi/util/BitField;

    const/high16 v0, -0x100000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->cntPersistFld:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 5

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;-><init>()V

    const/16 v0, 0x8

    if-ge p3, v0, :cond_0

    move p3, v0

    :cond_0
    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_header:[B

    const/4 v2, 0x2

    invoke-static {p2, v2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p2

    int-to-long v2, p2

    iput-wide v2, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_type:J

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_slideLocations:Ljava/util/Map;

    sub-int/2addr p3, v0

    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result p2

    invoke-static {p1, v1, p3, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_ptrData:[B

    const/4 p1, 0x0

    move p2, p1

    :cond_1
    iget-object p3, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_ptrData:[B

    array-length v0, p3

    if-ge p2, v0, :cond_2

    invoke-static {p3, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p3

    sget-object v0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->persistIdFld:Lorg/apache/poi/util/BitField;

    invoke-virtual {v0, p3}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    sget-object v1, Lorg/apache/poi/hslf/record/PersistPtrHolder;->cntPersistFld:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, p3}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p3

    add-int/lit8 p2, p2, 0x4

    move v1, p1

    :goto_0
    if-ge v1, p3, :cond_1

    add-int v2, v0, v1

    iget-object v3, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_ptrData:[B

    invoke-static {v3, p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_slideLocations:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private normalizePersistDirectory()V
    .locals 11

    iget-object v0, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_slideLocations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_slideLocations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/m3l;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/m3l;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/n3l;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/n3l;-><init>(Ljava/util/stream/Stream;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    move v6, v3

    move v7, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v9, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v6, v2

    move v7, v3

    move v5, v9

    :cond_0
    sget-object v4, Lorg/apache/poi/hslf/record/PersistPtrHolder;->persistIdFld:Lorg/apache/poi/util/BitField;

    invoke-virtual {v4, v3, v5}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v4

    sget-object v10, Lorg/apache/poi/hslf/record/PersistPtrHolder;->cntPersistFld:Lorg/apache/poi/util/BitField;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v10, v4, v7}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v4

    aput v4, v0, v6

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    move v4, v9

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v2, 0x1

    const/4 v4, 0x4

    mul-int/2addr v1, v4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_ptrData:[B

    :goto_1
    if-gt v3, v2, :cond_2

    iget-object v1, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_ptrData:[B

    mul-int/lit8 v5, v3, 0x4

    aget v6, v0, v3

    invoke-static {v1, v5, v6}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_header:[B

    iget-object p0, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_ptrData:[B

    array-length p0, p0

    invoke-static {v0, v4, p0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method


# virtual methods
.method public addSlideLookup(II)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_slideLocations:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_slideLocations:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A record with persistId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already exists."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_slideLocations:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

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

    new-instance v0, Lcom/sunia/HTREnginev2/l3l;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/l3l;-><init>(Lorg/apache/poi/hslf/record/PersistPtrHolder;)V

    const-string p0, "slideLocations"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getKnownSlideIDs()[I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_slideLocations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-object p0, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_slideLocations:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRecordType()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_type:J

    return-wide v0
.end method

.method public getSlideLocationsLookup()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_slideLocations:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public updateOtherRecordReferences(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_slideLocations:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v2, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    const-string v3, "Couldn\'t find the new location of the \"slide\" with id {} that used to be at {}. Not updating the position of it, you probably won\'t be able to find it any more (if you ever could!)"

    invoke-interface {v2, v3, v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/PersistPtrHolder;->normalizePersistDirectory()V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/PersistPtrHolder;->_ptrData:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
