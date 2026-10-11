.class public final Lorg/apache/poi/hdgf/chunks/Chunk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hdgf/chunks/Chunk$BlockOffsetCommand;,
        Lorg/apache/poi/hdgf/chunks/Chunk$Command;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private commandDefinitions:[Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;

.field private commands:[Lorg/apache/poi/hdgf/chunks/Chunk$Command;

.field private final contents:[B

.field private final header:Lorg/apache/poi/hdgf/chunks/ChunkHeader;

.field private name:Ljava/lang/String;

.field private final separator:Lorg/apache/poi/hdgf/chunks/ChunkSeparator;

.field private final trailer:Lorg/apache/poi/hdgf/chunks/ChunkTrailer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hdgf/chunks/Chunk;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hdgf/chunks/Chunk;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hdgf/chunks/ChunkHeader;Lorg/apache/poi/hdgf/chunks/ChunkTrailer;Lorg/apache/poi/hdgf/chunks/ChunkSeparator;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->header:Lorg/apache/poi/hdgf/chunks/ChunkHeader;

    iput-object p2, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->trailer:Lorg/apache/poi/hdgf/chunks/ChunkTrailer;

    iput-object p3, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->separator:Lorg/apache/poi/hdgf/chunks/ChunkSeparator;

    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->contents:[B

    return-void
.end method


# virtual methods
.method public _getContents()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->contents:[B

    return-object p0
.end method

.method public getCommandDefinitions()[Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->commandDefinitions:[Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;

    return-object p0
.end method

.method public getCommands()[Lorg/apache/poi/hdgf/chunks/Chunk$Command;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->commands:[Lorg/apache/poi/hdgf/chunks/Chunk$Command;

    return-object p0
.end method

.method public getHeader()Lorg/apache/poi/hdgf/chunks/ChunkHeader;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->header:Lorg/apache/poi/hdgf/chunks/ChunkHeader;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOnDiskSize()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->header:Lorg/apache/poi/hdgf/chunks/ChunkHeader;

    invoke-virtual {v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->getSizeInBytes()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->contents:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->trailer:Lorg/apache/poi/hdgf/chunks/ChunkTrailer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hdgf/chunks/ChunkTrailer;->getTrailerData()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->separator:Lorg/apache/poi/hdgf/chunks/ChunkSeparator;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/hdgf/chunks/ChunkSeparator;->separatorData:[B

    array-length p0, p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public getSeparator()Lorg/apache/poi/hdgf/chunks/ChunkSeparator;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->separator:Lorg/apache/poi/hdgf/chunks/ChunkSeparator;

    return-object p0
.end method

.method public getTrailer()Lorg/apache/poi/hdgf/chunks/ChunkTrailer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->trailer:Lorg/apache/poi/hdgf/chunks/ChunkTrailer;

    return-object p0
.end method

.method public processCommands()V
    .locals 13

    iget-object v0, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->commandDefinitions:[Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;

    if-eqz v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->commandDefinitions:[Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_10

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;->getType()I

    move-result v6

    invoke-virtual {v5}, Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;->getOffset()I

    move-result v7

    const/16 v8, 0xa

    if-ne v6, v8, :cond_0

    invoke-virtual {v5}, Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->name:Ljava/lang/String;

    goto/16 :goto_7

    :cond_0
    const/16 v8, 0x12

    if-ne v6, v8, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 v8, 0x0

    const/16 v9, 0x15

    const/16 v10, 0xb

    if-eq v6, v10, :cond_3

    if-ne v6, v9, :cond_2

    goto :goto_1

    :cond_2
    new-instance v11, Lorg/apache/poi/hdgf/chunks/Chunk$Command;

    invoke-direct {v11, v5, v8}, Lorg/apache/poi/hdgf/chunks/Chunk$Command;-><init>(Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;Lorg/apache/poi/hdgf/chunks/Chunk$1;)V

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v11, Lorg/apache/poi/hdgf/chunks/Chunk$BlockOffsetCommand;

    invoke-direct {v11, v5, v8}, Lorg/apache/poi/hdgf/chunks/Chunk$BlockOffsetCommand;-><init>(Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;Lorg/apache/poi/hdgf/chunks/Chunk$1;)V

    :goto_2
    const/16 v5, 0xc

    if-eq v6, v10, :cond_4

    if-eq v6, v5, :cond_4

    const/16 v8, 0x10

    if-eq v6, v8, :cond_4

    const/16 v8, 0x11

    if-eq v6, v8, :cond_4

    if-eq v6, v9, :cond_4

    const/16 v8, 0x1c

    if-eq v6, v8, :cond_4

    const/16 v8, 0x1d

    if-eq v6, v8, :cond_4

    packed-switch v6, :pswitch_data_0

    const/16 v8, 0x13

    if-lt v7, v8, :cond_4

    add-int/lit8 v7, v7, -0x13

    :cond_4
    :pswitch_0
    iget-object v8, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->contents:[B

    array-length v12, v8

    if-lt v7, v12, :cond_5

    sget-object v5, Lorg/apache/poi/hdgf/chunks/Chunk;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v5}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v5

    invoke-static {v7}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->contents:[B

    array-length v7, v7

    invoke-static {v7}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Command offset {} past end of data at {}"

    invoke-interface {v5, v8, v6, v7}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_5
    if-eq v6, v10, :cond_e

    const/4 v10, 0x1

    if-eq v6, v5, :cond_9

    if-eq v6, v9, :cond_e

    const/16 v5, 0x19

    if-eq v6, v5, :cond_8

    const/16 v5, 0x1a

    if-eq v6, v5, :cond_7

    packed-switch v6, :pswitch_data_1

    :try_start_0
    sget-object v5, Lorg/apache/poi/hdgf/chunks/Chunk;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v5}, Lorg/apache/logging/log4j/Logger;->atInfo()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v5

    const-string v7, "Command of type {} not processed!"

    invoke-static {v6}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_0
    move-exception v5

    goto/16 :goto_5

    :pswitch_1
    invoke-static {v8, v7}, Lorg/apache/poi/util/LittleEndian;->getDouble([BI)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, v11, Lorg/apache/poi/hdgf/chunks/Chunk$Command;->value:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_2
    aget-byte v5, v8, v7

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    iput-object v5, v11, Lorg/apache/poi/hdgf/chunks/Chunk$Command;->value:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_3
    aget-byte v5, v8, v7

    ushr-int/2addr v5, v6

    and-int/2addr v5, v10

    if-ne v5, v10, :cond_6

    goto :goto_3

    :cond_6
    move v10, v3

    :goto_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v11, Lorg/apache/poi/hdgf/chunks/Chunk$Command;->value:Ljava/lang/Object;

    goto/16 :goto_6

    :cond_7
    invoke-static {v8, v7}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v11, Lorg/apache/poi/hdgf/chunks/Chunk$Command;->value:Ljava/lang/Object;

    goto :goto_6

    :cond_8
    invoke-static {v8, v7}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    iput-object v5, v11, Lorg/apache/poi/hdgf/chunks/Chunk$Command;->value:Ljava/lang/Object;

    goto :goto_6

    :cond_9
    array-length v5, v8

    const/16 v6, 0x8

    if-ge v5, v6, :cond_a

    const-string v5, ""

    iput-object v5, v11, Lorg/apache/poi/hdgf/chunks/Chunk$Command;->value:Ljava/lang/Object;

    goto :goto_6

    :cond_a
    move v5, v6

    move v7, v5

    :goto_4
    iget-object v8, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->contents:[B

    array-length v9, v8

    sub-int/2addr v9, v10

    if-ge v5, v9, :cond_c

    if-ne v7, v6, :cond_c

    aget-byte v9, v8, v5

    if-nez v9, :cond_b

    add-int/lit8 v9, v5, 0x1

    aget-byte v8, v8, v9

    if-nez v8, :cond_b

    move v7, v5

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    if-ne v7, v6, :cond_d

    array-length v7, v8

    :cond_d
    sub-int/2addr v7, v6

    new-instance v5, Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->header:Lorg/apache/poi/hdgf/chunks/ChunkHeader;

    invoke-virtual {v9}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->getChunkCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v5, v8, v6, v7, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v5, v11, Lorg/apache/poi/hdgf/chunks/Chunk$Command;->value:Ljava/lang/Object;

    goto :goto_6

    :cond_e
    array-length v5, v8

    add-int/lit8 v5, v5, -0x3

    if-ge v7, v5, :cond_f

    invoke-static {v8, v7}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v5

    long-to-int v5, v5

    move-object v6, v11

    check-cast v6, Lorg/apache/poi/hdgf/chunks/Chunk$BlockOffsetCommand;

    invoke-static {v6, v5}, Lorg/apache/poi/hdgf/chunks/Chunk$BlockOffsetCommand;->access$200(Lorg/apache/poi/hdgf/chunks/Chunk$BlockOffsetCommand;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    sget-object v6, Lorg/apache/poi/hdgf/chunks/Chunk;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v6}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v5

    const-string v6, "Unexpected error processing command, ignoring and continuing. Command: {}"

    invoke-interface {v5, v6, v11}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    :goto_6
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_10
    new-array v1, v3, [Lorg/apache/poi/hdgf/chunks/Chunk$Command;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hdgf/chunks/Chunk$Command;

    iput-object v0, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->commands:[Lorg/apache/poi/hdgf/chunks/Chunk$Command;

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You must supply the command definitions before calling processCommands!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCommandDefinitions([Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hdgf/chunks/Chunk;->commandDefinitions:[Lorg/apache/poi/hdgf/chunks/ChunkFactory$CommandDefinition;

    return-void
.end method
