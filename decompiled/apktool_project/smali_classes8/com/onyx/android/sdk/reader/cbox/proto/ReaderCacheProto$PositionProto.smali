.class public final Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

.field public static final NODEPOSITION_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEXTENDOFFSET_FIELD_NUMBER:I = 0x4

.field public static final TEXTSTARTOFFSET_FIELD_NUMBER:I = 0x3

.field public static final XPATH_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private nodePosition_:I

.field private textEndOffset_:I

.field private textStartOffset_:I

.field private xpathMemoizedSerializedSize:I

.field private xpath_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$a;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpathMemoizedSerializedSize:I

    .line 8
    iput-byte v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->memoizedIsInitialized:B

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->nodePosition_:I

    .line 11
    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->textStartOffset_:I

    .line 12
    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->textEndOffset_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;-><init>()V

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_b

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v5, 0x8

    if-eq v4, v5, :cond_7

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    const/16 v5, 0x10

    if-eq v4, v5, :cond_3

    const/16 v5, 0x18

    if-eq v4, v5, :cond_2

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    .line 17
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->textEndOffset_:I

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->textStartOffset_:I

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->nodePosition_:I

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 22
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    and-int/lit8 v5, v2, 0x1

    if-eq v5, v3, :cond_5

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_5

    .line 24
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 25
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_6

    .line 26
    iget-object v5, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_6
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    :cond_7
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_8

    .line 28
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 29
    :cond_8
    iget-object v4, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_2
    move v1, v3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 30
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 31
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 32
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v3, :cond_a

    .line 33
    iget-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    .line 34
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 36
    throw p1

    :cond_b
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v3, :cond_c

    .line 37
    iget-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    .line 38
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpathMemoizedSerializedSize:I

    .line 5
    iput-byte p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$4100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$4300(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$4302(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$4402(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->nodePosition_:I

    return p1
.end method

.method public static synthetic access$4502(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->textStartOffset_:I

    return p1
.end method

.method public static synthetic access$4602(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->textEndOffset_:I

    return p1
.end method

.method public static synthetic access$4702(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->bitField0_:I

    return p1
.end method

.method public static synthetic access$4800(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$4900()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto;->g()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->toBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->toBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeFrom(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getXpathList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getXpathList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getNodePosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getNodePosition()I

    move-result v3

    if-ne v1, v3, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getTextStartOffset()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getTextStartOffset()I

    move-result v3

    if-ne v1, v3, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getTextEndOffset()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getTextEndOffset()I

    move-result v3

    if-ne v1, v3, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getDefaultInstanceForType()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getDefaultInstanceForType()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 0

    .line 3
    sget-object p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    return-object p0
.end method

.method public getNodePosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->nodePosition_:I

    return p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getXpathList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v2, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpathMemoizedSerializedSize:I

    iget v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->nodePosition_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->textStartOffset_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->textEndOffset_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getTextEndOffset()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->textEndOffset_:I

    return p0
.end method

.method public getTextStartOffset()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->textStartOffset_:I

    return p0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public getXpath(I)I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getXpathCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getXpathList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getXpathCount()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getXpathList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getNodePosition()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getTextStartOffset()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getTextEndOffset()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto;->h()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    const-class v1, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->newBuilderForType()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->newBuilderForType()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 0

    .line 4
    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->newBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 1

    .line 5
    new-instance p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$a;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->toBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->toBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;-><init>(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;-><init>(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$a;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeFrom(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getSerializedSize()I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getXpathList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpathMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->xpath_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->nodePosition_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->textStartOffset_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_3
    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->textEndOffset_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_4
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
