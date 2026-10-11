.class public final Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;
    }
.end annotation


# static fields
.field public static final AUDIODURATION_FIELD_NUMBER:I = 0x6

.field public static final CLOUDPATH_FIELD_NUMBER:I = 0x9

.field public static final CREATEDAT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

.field public static final DOCUMENTID_FIELD_NUMBER:I = 0x2

.field public static final EXTRAATTRIBUTES_FIELD_NUMBER:I = 0xa

.field public static final ORIGINPATH_FIELD_NUMBER:I = 0xc

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final RELATIVEPATH_FIELD_NUMBER:I = 0x8

.field public static final REVISIONID_FIELD_NUMBER:I = 0xb

.field public static final STATUS_FIELD_NUMBER:I = 0xd

.field public static final TITLE_FIELD_NUMBER:I = 0x5

.field public static final TYPE_FIELD_NUMBER:I = 0x7

.field public static final UNIQUEID_FIELD_NUMBER:I = 0x1

.field public static final UPDATEDAT_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private audioDuration_:J

.field private volatile cloudPath_:Ljava/lang/Object;

.field private createdAt_:J

.field private volatile documentId_:Ljava/lang/Object;

.field private volatile extraAttributes_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile originPath_:Ljava/lang/Object;

.field private volatile relativePath_:Ljava/lang/Object;

.field private volatile revisionId_:Ljava/lang/Object;

.field private status_:I

.field private volatile title_:Ljava/lang/Object;

.field private type_:I

.field private volatile uniqueId_:Ljava/lang/Object;

.field private updatedAt_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$a;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->uniqueId_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->documentId_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->createdAt_:J

    .line 10
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->updatedAt_:J

    .line 11
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->title_:Ljava/lang/Object;

    .line 12
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->audioDuration_:J

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->type_:I

    .line 14
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->relativePath_:Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->cloudPath_:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->extraAttributes_:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->revisionId_:Ljava/lang/Object;

    .line 18
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->originPath_:Ljava/lang/Object;

    .line 19
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->status_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;-><init>()V

    const/4 p2, 0x0

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    goto :goto_2

    .line 23
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->status_:I

    goto :goto_0

    .line 24
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->originPath_:Ljava/lang/Object;

    goto :goto_0

    .line 26
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->revisionId_:Ljava/lang/Object;

    goto :goto_0

    .line 28
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->extraAttributes_:Ljava/lang/Object;

    goto :goto_0

    .line 30
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->cloudPath_:Ljava/lang/Object;

    goto :goto_0

    .line 32
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->relativePath_:Ljava/lang/Object;

    goto :goto_0

    .line 34
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->type_:I

    goto :goto_0

    .line 35
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->audioDuration_:J

    goto :goto_0

    .line 36
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 38
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->updatedAt_:J

    goto :goto_0

    .line 39
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->createdAt_:J

    goto :goto_0

    .line 40
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->documentId_:Ljava/lang/Object;

    goto :goto_0

    .line 42
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->uniqueId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :sswitch_d
    move p2, v1

    goto :goto_0

    :goto_2
    if-nez v0, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 44
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 45
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 46
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 48
    throw p1

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_c
        0x12 -> :sswitch_b
        0x18 -> :sswitch_a
        0x20 -> :sswitch_9
        0x2a -> :sswitch_8
        0x30 -> :sswitch_7
        0x38 -> :sswitch_6
        0x42 -> :sswitch_5
        0x4a -> :sswitch_4
        0x52 -> :sswitch_3
        0x5a -> :sswitch_2
        0x62 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1600(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->uniqueId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1602(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->uniqueId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1700(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->documentId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1702(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->documentId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1802(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;J)J
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->createdAt_:J

    return-wide p1
.end method

.method public static synthetic access$1902(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;J)J
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->updatedAt_:J

    return-wide p1
.end method

.method public static synthetic access$2000(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->title_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2002(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2102(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;J)J
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->audioDuration_:J

    return-wide p1
.end method

.method public static synthetic access$2202(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->type_:I

    return p1
.end method

.method public static synthetic access$2300(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->relativePath_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2302(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->relativePath_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2400(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->cloudPath_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2402(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->cloudPath_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2500(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->extraAttributes_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2502(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->extraAttributes_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2600(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->revisionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2602(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->revisionId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2700(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->originPath_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2702(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->originPath_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2802(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->status_:I

    return p1
.end method

.method public static synthetic access$2900()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$3000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getCreatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getUpdatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getUpdatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getAudioDuration()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getAudioDuration()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    move v1, v0

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getType()I

    move-result v3

    if-ne v1, v3, :cond_8

    move v1, v0

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getRelativePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getRelativePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v0

    goto :goto_7

    :cond_9
    move v1, v2

    :goto_7
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getCloudPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getCloudPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v0

    goto :goto_8

    :cond_a
    move v1, v2

    :goto_8
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getExtraAttributes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getExtraAttributes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v0

    goto :goto_9

    :cond_b
    move v1, v2

    :goto_9
    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getRevisionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getRevisionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v0

    goto :goto_a

    :cond_c
    move v1, v2

    :goto_a
    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getOriginPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getOriginPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v0

    goto :goto_b

    :cond_d
    move v1, v2

    :goto_b
    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getStatus()I

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getStatus()I

    move-result p1

    if-ne p0, p1, :cond_e

    goto :goto_c

    :cond_e
    move v0, v2

    :goto_c
    return v0
.end method

.method public getAudioDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->audioDuration_:J

    return-wide v0
.end method

.method public getCloudPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->cloudPath_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->cloudPath_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCloudPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->cloudPath_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->cloudPath_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->createdAt_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;
    .locals 0

    .line 3
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    return-object p0
.end method

.method public getDocumentId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->documentId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->documentId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDocumentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->documentId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->documentId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getExtraAttributes()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->extraAttributes_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->extraAttributes_:Ljava/lang/Object;

    return-object v0
.end method

.method public getExtraAttributesBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->extraAttributes_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->extraAttributes_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOriginPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->originPath_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->originPath_:Ljava/lang/Object;

    return-object v0
.end method

.method public getOriginPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->originPath_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->originPath_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getRelativePath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->relativePath_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->relativePath_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRelativePathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->relativePath_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->relativePath_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRevisionId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->revisionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->revisionId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRevisionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->revisionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->revisionId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getUniqueIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->uniqueId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getDocumentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->documentId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->createdAt_:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->updatedAt_:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->title_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->audioDuration_:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->type_:I

    if-eqz v0, :cond_7

    const/4 v2, 0x7

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getRelativePathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->relativePath_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getCloudPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->cloudPath_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getExtraAttributesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->extraAttributes_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getRevisionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xb

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->revisionId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_b
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getOriginPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xc

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->originPath_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_c
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->status_:I

    if-eqz v0, :cond_d

    const/16 v2, 0xd

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_d
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->status_:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->title_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->title_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->title_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->title_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->type_:I

    return p0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->uniqueId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->uniqueId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getUniqueIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->uniqueId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->uniqueId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    return-object p0
.end method

.method public getUpdatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->updatedAt_:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getCreatedAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getUpdatedAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getAudioDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getType()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getRelativePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getCloudPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getExtraAttributes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getRevisionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getOriginPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getStatus()I

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

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto;->d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;
    .locals 0

    .line 4
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;
    .locals 1

    .line 5
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$a;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$a;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getUniqueIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->uniqueId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getDocumentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->documentId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->createdAt_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_2
    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->updatedAt_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->title_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_4
    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->audioDuration_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_5
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->type_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getRelativePathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->relativePath_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getCloudPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->cloudPath_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getExtraAttributesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->extraAttributes_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getRevisionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->revisionId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_a
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->getOriginPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->originPath_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_b
    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProto;->status_:I

    if-eqz p0, :cond_c

    const/16 v0, 0xd

    invoke-virtual {p1, v0, p0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_c
    return-void
.end method
