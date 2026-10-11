.class public abstract Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;
.super Lorg/apache/poi/hsmf/datatypes/Chunk;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0xf4240

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static MAX_RECORD_LENGTH:I = 0xf4240

.field public static final NAME:Ljava/lang/String; = "__properties_version1.0"

.field public static final PROPERTIES_FLAG_READABLE:I = 0x2

.field public static final PROPERTIES_FLAG_WRITEABLE:I = 0x4

.field public static final VARIABLE_LENGTH_PROPERTY_PREFIX:Ljava/lang/String; = "__substg1.0_"


# instance fields
.field private final parentGroup:Lorg/apache/poi/hsmf/datatypes/ChunkGroup;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/hsmf/datatypes/MAPIProperty;",
            "Lorg/apache/poi/hsmf/datatypes/PropertyValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hsmf/datatypes/ChunkGroup;)V
    .locals 3

    const/4 v0, -0x1

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/Types;->UNKNOWN:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    const-string v2, "__properties_version1.0"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/hsmf/datatypes/Chunk;-><init>(Ljava/lang/String;ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->properties:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->parentGroup:Lorg/apache/poi/hsmf/datatypes/ChunkGroup;

    return-void
.end method

.method private getActualTypeTag(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    const-string v0, "0"

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;->asFileEnding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFileName(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x4

    if-lez p1, :cond_0

    const/16 v1, 0x30

    invoke-static {v1, p1}, Lorg/apache/poi/util/StringUtil;->repeat(CI)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->getTypeMapping(Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;)Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;->asFileEnding()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private getTypeMapping(Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;)Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hsmf/datatypes/Types;->ASCII_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne p1, p0, :cond_0

    sget-object p1, Lorg/apache/poi/hsmf/datatypes/Types;->UNICODE_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    :cond_0
    return-object p1
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->MAX_RECORD_LENGTH:I

    return-void
.end method

.method private writeFixedLengthValueHeader(Ljava/io/OutputStream;Lorg/apache/poi/hsmf/datatypes/MAPIProperty;Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;Lorg/apache/poi/hsmf/datatypes/PropertyValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p4}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->getRawValue()[B

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p2, p0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    rsub-int/lit8 p0, p2, 0x8

    new-array p0, p0, [B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeVariableLengthPreCalculatedValue(Ljava/io/OutputStream;Lorg/apache/poi/hsmf/datatypes/PropertyValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->getRawValue()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeVariableLengthValueHeader(Ljava/io/OutputStream;Lorg/apache/poi/hsmf/datatypes/MAPIProperty;Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;Lorg/apache/poi/hsmf/datatypes/PropertyValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p4}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->getRawValue()[B

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object p2, Lorg/apache/poi/hsmf/datatypes/Types;->UNICODE_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne p3, p2, :cond_1

    add-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_1
    sget-object p2, Lorg/apache/poi/hsmf/datatypes/Types;->ASCII_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne p3, p2, :cond_2

    add-int/lit8 p0, p0, 0x1

    :cond_2
    :goto_1
    int-to-long p2, p0

    invoke-static {p2, p3, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    const-wide/16 p2, 0x0

    invoke-static {p2, p3, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public getEntryName()Ljava/lang/String;
    .locals 0

    const-string p0, "__properties_version1.0"

    return-object p0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/hsmf/datatypes/MAPIProperty;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hsmf/datatypes/PropertyValue;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    invoke-virtual {p0, v2}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->getValues(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRawProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/hsmf/datatypes/MAPIProperty;",
            "Lorg/apache/poi/hsmf/datatypes/PropertyValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->properties:Ljava/util/Map;

    return-object p0
.end method

.method public getRawValue(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;)Lorg/apache/poi/hsmf/datatypes/PropertyValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->properties:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;

    return-object p0
.end method

.method public getValues(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hsmf/datatypes/MAPIProperty;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/hsmf/datatypes/PropertyValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->properties:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of p1, p0, Lorg/apache/poi/hsmf/datatypes/ChunkBasedPropertyValue;

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public matchVariableSizedPropertiesToChunks()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->parentGroup:Lorg/apache/poi/hsmf/datatypes/ChunkGroup;

    invoke-interface {v1}, Lorg/apache/poi/hsmf/datatypes/ChunkGroup;->getChunks()[Lorg/apache/poi/hsmf/datatypes/Chunk;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->properties:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/PropertyValue;

    instance-of v2, v1, Lorg/apache/poi/hsmf/datatypes/ChunkBasedPropertyValue;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/hsmf/datatypes/ChunkBasedPropertyValue;

    invoke-virtual {v1}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->getProperty()Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    move-result-object v2

    iget v2, v2, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hsmf/datatypes/Chunk;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hsmf/datatypes/ChunkBasedPropertyValue;->setValue(Lorg/apache/poi/hsmf/datatypes/Chunk;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    const-string v3, "No chunk found matching Property {}"

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public readProperties(Ljava/io/InputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_13

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readUShort(Ljava/io/InputStream;)I

    move-result v2

    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readUShort(Ljava/io/InputStream;)I

    move-result v3

    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readUInt(Ljava/io/InputStream;)J

    move-result-wide v6

    invoke-static {v2}, Lorg/apache/poi/hsmf/datatypes/Types;->getById(I)Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v9

    invoke-static {v3}, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->get(I)Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->UNKNOWN:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    if-ne v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v9, v4}, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->createCustom(ILorg/apache/poi/hsmf/datatypes/Types$MAPIType;Ljava/lang/String;)Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    move-result-object v4

    :cond_0
    move-object v3, v4

    if-nez v9, :cond_1

    sget-object v0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v4, "Invalid type found, expected {} but got {} for property {}"

    iget-object v5, v3, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->usualType:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    invoke-static {v2}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0, v4, v5, v2, v3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    iget-object v2, v3, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->usualType:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-eq v2, v9, :cond_5

    sget-object v4, Lorg/apache/poi/hsmf/datatypes/Types;->ASCII_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v9, v4, :cond_2

    sget-object v5, Lorg/apache/poi/hsmf/datatypes/Types;->UNICODE_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-eq v2, v5, :cond_5

    :cond_2
    sget-object v5, Lorg/apache/poi/hsmf/datatypes/Types;->UNICODE_STRING:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v9, v5, :cond_3

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    sget-object v4, Lorg/apache/poi/hsmf/datatypes/Types;->UNKNOWN:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v2, v4, :cond_4

    sget-object v2, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atInfo()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    const-string v4, "Property definition for {} is missing a type definition, found a value with type {}"

    invoke-interface {v2, v4, v3, v9}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v2, "Type mismatch, expected {} but got {} for property {}"

    iget-object v4, v3, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->usualType:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    invoke-interface {v0, v2, v4, v9, v3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_5
    :goto_1
    invoke-virtual {v9}, Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;->getLength()I

    move-result v2

    invoke-virtual {v9}, Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;->isPointer()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_6

    move v2, v5

    :cond_6
    int-to-long v10, v2

    sget v8, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->MAX_RECORD_LENGTH:I

    invoke-static {v10, v11, v8}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v8

    invoke-static {p1, v8}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    if-ge v2, v5, :cond_7

    rsub-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    invoke-static {p1, v2}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    :cond_7
    if-eqz v4, :cond_8

    new-instance v2, Lorg/apache/poi/hsmf/datatypes/ChunkBasedPropertyValue;

    move-object v4, v2

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lorg/apache/poi/hsmf/datatypes/ChunkBasedPropertyValue;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[BLorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    goto/16 :goto_2

    :cond_8
    sget-object v2, Lorg/apache/poi/hsmf/datatypes/Types;->NULL:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v9, v2, :cond_9

    new-instance v2, Lorg/apache/poi/hsmf/datatypes/PropertyValue$NullPropertyValue;

    invoke-direct {v2, v3, v6, v7, v8}, Lorg/apache/poi/hsmf/datatypes/PropertyValue$NullPropertyValue;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[B)V

    goto :goto_2

    :cond_9
    sget-object v2, Lorg/apache/poi/hsmf/datatypes/Types;->BOOLEAN:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v9, v2, :cond_a

    new-instance v2, Lorg/apache/poi/hsmf/datatypes/PropertyValue$BooleanPropertyValue;

    invoke-direct {v2, v3, v6, v7, v8}, Lorg/apache/poi/hsmf/datatypes/PropertyValue$BooleanPropertyValue;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[B)V

    goto :goto_2

    :cond_a
    sget-object v2, Lorg/apache/poi/hsmf/datatypes/Types;->SHORT:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v9, v2, :cond_b

    new-instance v2, Lorg/apache/poi/hsmf/datatypes/PropertyValue$ShortPropertyValue;

    invoke-direct {v2, v3, v6, v7, v8}, Lorg/apache/poi/hsmf/datatypes/PropertyValue$ShortPropertyValue;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[B)V

    goto :goto_2

    :cond_b
    sget-object v2, Lorg/apache/poi/hsmf/datatypes/Types;->LONG:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v9, v2, :cond_c

    new-instance v2, Lorg/apache/poi/hsmf/datatypes/PropertyValue$LongPropertyValue;

    invoke-direct {v2, v3, v6, v7, v8}, Lorg/apache/poi/hsmf/datatypes/PropertyValue$LongPropertyValue;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[B)V

    goto :goto_2

    :cond_c
    sget-object v2, Lorg/apache/poi/hsmf/datatypes/Types;->LONG_LONG:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v9, v2, :cond_d

    new-instance v2, Lorg/apache/poi/hsmf/datatypes/PropertyValue$LongLongPropertyValue;

    invoke-direct {v2, v3, v6, v7, v8}, Lorg/apache/poi/hsmf/datatypes/PropertyValue$LongLongPropertyValue;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[B)V

    goto :goto_2

    :cond_d
    sget-object v2, Lorg/apache/poi/hsmf/datatypes/Types;->FLOAT:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v9, v2, :cond_e

    new-instance v2, Lorg/apache/poi/hsmf/datatypes/PropertyValue$FloatPropertyValue;

    invoke-direct {v2, v3, v6, v7, v8}, Lorg/apache/poi/hsmf/datatypes/PropertyValue$FloatPropertyValue;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[B)V

    goto :goto_2

    :cond_e
    sget-object v2, Lorg/apache/poi/hsmf/datatypes/Types;->DOUBLE:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v9, v2, :cond_f

    new-instance v2, Lorg/apache/poi/hsmf/datatypes/PropertyValue$DoublePropertyValue;

    invoke-direct {v2, v3, v6, v7, v8}, Lorg/apache/poi/hsmf/datatypes/PropertyValue$DoublePropertyValue;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[B)V

    goto :goto_2

    :cond_f
    sget-object v2, Lorg/apache/poi/hsmf/datatypes/Types;->CURRENCY:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v9, v2, :cond_10

    new-instance v2, Lorg/apache/poi/hsmf/datatypes/PropertyValue$CurrencyPropertyValue;

    invoke-direct {v2, v3, v6, v7, v8}, Lorg/apache/poi/hsmf/datatypes/PropertyValue$CurrencyPropertyValue;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[B)V

    goto :goto_2

    :cond_10
    sget-object v2, Lorg/apache/poi/hsmf/datatypes/Types;->TIME:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v9, v2, :cond_11

    new-instance v2, Lorg/apache/poi/hsmf/datatypes/PropertyValue$TimePropertyValue;

    invoke-direct {v2, v3, v6, v7, v8}, Lorg/apache/poi/hsmf/datatypes/PropertyValue$TimePropertyValue;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[B)V

    goto :goto_2

    :cond_11
    new-instance v2, Lorg/apache/poi/hsmf/datatypes/PropertyValue;

    move-object v4, v2

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[BLorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    :goto_2
    iget-object v4, p0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->properties:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_12

    sget-object v4, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v4

    const-string v5, "Duplicate values found for {}"

    invoke-interface {v4, v5, v3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    iget-object v4, p0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->properties:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/util/LittleEndian$BufferUnderrunException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move v0, v1

    goto/16 :goto_0

    :cond_13
    :goto_3
    return-void
.end method

.method public setProperty(Lorg/apache/poi/hsmf/datatypes/PropertyValue;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->properties:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->getProperty()Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeNodeData(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/DirectoryEntry;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hsmf/datatypes/PropertyValue;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/PropertyValue;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->getRawValue()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__substg1.0_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->getProperty()Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->getActualType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->getFileName(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writePreCalculatedProperties(Ljava/io/OutputStream;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/hsmf/datatypes/PropertyValue;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hsmf/datatypes/PropertyValue;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v4, v3, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->getActualType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->getActualTypeTag(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    invoke-virtual {v2}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->getFlags()J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    invoke-virtual {v2}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->getActualType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;->isFixedLength()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p1, v3, v4, v2}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->writeFixedLengthValueHeader(Ljava/io/OutputStream;Lorg/apache/poi/hsmf/datatypes/MAPIProperty;Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;Lorg/apache/poi/hsmf/datatypes/PropertyValue;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v2}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->writeVariableLengthPreCalculatedValue(Ljava/io/OutputStream;Lorg/apache/poi/hsmf/datatypes/PropertyValue;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public writeProperties(Ljava/io/OutputStream;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/hsmf/datatypes/PropertyValue;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v1, p0, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    .line 15
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hsmf/datatypes/PropertyValue;

    if-nez v2, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget v4, v3, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-gez v4, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->getActualType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->getFileName(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    .line 18
    invoke-static {v4, v5, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 19
    invoke-virtual {v2}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->getFlags()J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 20
    invoke-virtual {v2}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;->getActualType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->getTypeMapping(Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;)Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v4

    .line 21
    invoke-virtual {v4}, Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;->isFixedLength()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;->isPointer()Z

    move-result v5

    if-nez v5, :cond_2

    .line 22
    invoke-direct {p0, p1, v3, v4, v2}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->writeFixedLengthValueHeader(Ljava/io/OutputStream;Lorg/apache/poi/hsmf/datatypes/MAPIProperty;Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;Lorg/apache/poi/hsmf/datatypes/PropertyValue;)V

    goto :goto_0

    .line 23
    :cond_2
    invoke-direct {p0, p1, v3, v4, v2}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->writeVariableLengthValueHeader(Ljava/io/OutputStream;Lorg/apache/poi/hsmf/datatypes/MAPIProperty;Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;Lorg/apache/poi/hsmf/datatypes/PropertyValue;)V

    .line 24
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public writeProperties(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->writeProperties(Ljava/io/OutputStream;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v3, "__properties_version1.0"

    .line 4
    invoke-interface {p1, v3, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 5
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 6
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->writeNodeData(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 7
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v2, :cond_1

    .line 9
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    .line 10
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    .line 11
    :try_start_7
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method
