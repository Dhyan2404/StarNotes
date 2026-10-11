.class public final Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDocOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VirtualDoc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;
    }
.end annotation


# static fields
.field public static final ACTUALSCALE_FIELD_NUMBER:I = 0x5

.field public static final COVERPAGEID_FIELD_NUMBER:I = 0x8

.field public static final CREATEDAT_FIELD_NUMBER:I = 0x2

.field public static final DEFAULTTEMPLATE_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

.field public static final DOCOPTIONS_FIELD_NUMBER:I = 0xa

.field public static final OFFSETX_FIELD_NUMBER:I = 0x6

.field public static final OFFSETY_FIELD_NUMBER:I = 0x7

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNIQUEID_FIELD_NUMBER:I = 0x1

.field public static final UPDATEDAT_FIELD_NUMBER:I = 0x3

.field public static final VIEWPORTID_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private actualScale_:F

.field private volatile coverPageId_:Ljava/lang/Object;

.field private createdAt_:J

.field private volatile defaultTemplate_:Ljava/lang/Object;

.field private volatile docOptions_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private offsetX_:F

.field private offsetY_:F

.field private volatile uniqueId_:Ljava/lang/Object;

.field private updatedAt_:J

.field private volatile viewportId_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$a;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->uniqueId_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->createdAt_:J

    .line 9
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->updatedAt_:J

    .line 10
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->viewportId_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->actualScale_:F

    .line 12
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->offsetX_:F

    .line 13
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->offsetY_:F

    .line 14
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->coverPageId_:Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->defaultTemplate_:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->docOptions_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;-><init>()V

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 21
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto :goto_2

    .line 22
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->docOptions_:Ljava/lang/Object;

    goto :goto_0

    .line 24
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 25
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->defaultTemplate_:Ljava/lang/Object;

    goto :goto_0

    .line 26
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->coverPageId_:Ljava/lang/Object;

    goto :goto_0

    .line 28
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->offsetY_:F

    goto :goto_0

    .line 29
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->offsetX_:F

    goto :goto_0

    .line 30
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->actualScale_:F

    goto :goto_0

    .line 31
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->viewportId_:Ljava/lang/Object;

    goto :goto_0

    .line 33
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->updatedAt_:J

    goto :goto_0

    .line 34
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->createdAt_:J

    goto :goto_0

    .line 35
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->uniqueId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :sswitch_a
    move v1, v3

    goto :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 37
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 38
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 39
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 42
    throw p1

    .line 43
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x10 -> :sswitch_8
        0x18 -> :sswitch_7
        0x22 -> :sswitch_6
        0x2d -> :sswitch_5
        0x35 -> :sswitch_4
        0x3d -> :sswitch_3
        0x42 -> :sswitch_2
        0x4a -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$5400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$5600(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->uniqueId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5602(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->uniqueId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5702(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;J)J
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->createdAt_:J

    return-wide p1
.end method

.method public static synthetic access$5802(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;J)J
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->updatedAt_:J

    return-wide p1
.end method

.method public static synthetic access$5900(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->viewportId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5902(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->viewportId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$6002(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;F)F
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->actualScale_:F

    return p1
.end method

.method public static synthetic access$6102(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;F)F
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->offsetX_:F

    return p1
.end method

.method public static synthetic access$6202(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;F)F
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->offsetY_:F

    return p1
.end method

.method public static synthetic access$6300(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->coverPageId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$6302(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->coverPageId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$6400(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->defaultTemplate_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$6402(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->defaultTemplate_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$6500(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->docOptions_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$6502(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->docOptions_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$6600(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$6700()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$6800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$6900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$7000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$7100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$7200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->e()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getUniqueId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getCreatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getUpdatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getUpdatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getViewportId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getViewportId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getActualScale()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getActualScale()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_6

    move v1, v0

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getOffsetX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getOffsetX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_7

    move v1, v0

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getOffsetY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getOffsetY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_8

    move v1, v0

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getCoverPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getCoverPageId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getDefaultTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getDefaultTemplate()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getDocOptions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getDocOptions()Ljava/lang/String;

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

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_a

    :cond_c
    move v0, v2

    :goto_a
    return v0
.end method

.method public getActualScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->actualScale_:F

    return p0
.end method

.method public getCoverPageId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->coverPageId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->coverPageId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCoverPageIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->coverPageId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->coverPageId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->createdAt_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;
    .locals 0

    .line 3
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    return-object p0
.end method

.method public getDefaultTemplate()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->defaultTemplate_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->defaultTemplate_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDefaultTemplateBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->defaultTemplate_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->defaultTemplate_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDocOptions()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->docOptions_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->docOptions_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDocOptionsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->docOptions_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->docOptions_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOffsetX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->offsetX_:F

    return p0
.end method

.method public getOffsetY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->offsetY_:F

    return p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 6

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getUniqueIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->uniqueId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->createdAt_:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->updatedAt_:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getViewportIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->viewportId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->actualScale_:F

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->offsetX_:F

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->offsetY_:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getCoverPageIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->coverPageId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getDefaultTemplateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->defaultTemplate_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getDocOptionsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->docOptions_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->uniqueId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->uniqueId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getUniqueIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->uniqueId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->uniqueId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public getUpdatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->updatedAt_:J

    return-wide v0
.end method

.method public getViewportId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->viewportId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->viewportId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getViewportIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->viewportId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->viewportId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getCreatedAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getUpdatedAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getViewportId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getActualScale()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getOffsetX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getOffsetY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getCoverPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getDefaultTemplate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getDocOptions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto;->f()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;
    .locals 0

    .line 4
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;
    .locals 1

    .line 5
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$a;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$a;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getUniqueIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->uniqueId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->createdAt_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_1
    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->updatedAt_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getViewportIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->viewportId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_3
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->actualScale_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_4
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->offsetX_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_5
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->offsetY_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getCoverPageIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->coverPageId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getDefaultTemplateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->defaultTemplate_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getDocOptionsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->docOptions_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_9
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
