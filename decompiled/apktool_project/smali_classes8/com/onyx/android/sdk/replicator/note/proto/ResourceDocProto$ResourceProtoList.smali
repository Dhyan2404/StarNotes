.class public final Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceProtoList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTO_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private proto_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$a;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 10
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v3, v1, 0x1

    if-eq v3, v2, :cond_2

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x1

    .line 12
    :cond_2
    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

    .line 13
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    .line 14
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 16
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v1, 0x1

    if-ne p2, v2, :cond_4

    .line 18
    iget-object p2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

    .line 19
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 20
    throw p1

    :cond_5
    and-int/lit8 p1, v1, 0x1

    if-ne p1, v2, :cond_6

    .line 21
    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

    .line 22
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$600(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$800()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->getProtoList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->getProtoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
    .locals 0

    .line 3
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    return-object p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getProto(I)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    return-object p0
.end method

.method public getProtoCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getProtoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

    return-object p0
.end method

.method public getProtoOrBuilder(I)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoOrBuilder;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoOrBuilder;

    return-object p0
.end method

.method public getProtoOrBuilderList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

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

    :goto_0
    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->getProtoCount()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->getProtoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
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

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto;->b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;
    .locals 0

    .line 4
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;
    .locals 1

    .line 5
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$a;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$a;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->proto_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
