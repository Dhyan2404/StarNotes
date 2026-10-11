.class public final Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Template"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    }
.end annotation


# static fields
.field public static final CATEGORYID_FIELD_NUMBER:I = 0xa

.field public static final CONTENTPAGEID_FIELD_NUMBER:I = 0xb

.field public static final CREATEDAT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

.field public static final ORDERINDEX_FIELD_NUMBER:I = 0xd

.field public static final ORIENTATION_FIELD_NUMBER:I = 0x6

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOURCELIST_FIELD_NUMBER:I = 0x9

.field public static final SIZEFORMAT_FIELD_NUMBER:I = 0x7

.field public static final SOURCE_FIELD_NUMBER:I = 0xe

.field public static final STATUS_FIELD_NUMBER:I = 0xf

.field public static final TEMPLATEARGS_FIELD_NUMBER:I = 0xc

.field public static final TITLERESNAME_FIELD_NUMBER:I = 0x5

.field public static final TITLE_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x8

.field public static final UNIQUEID_FIELD_NUMBER:I = 0x1

.field public static final UPDATEDAT_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private volatile categoryId_:Ljava/lang/Object;

.field private volatile contentPageId_:Ljava/lang/Object;

.field private createdAt_:J

.field private memoizedIsInitialized:B

.field private orderIndex_:F

.field private orientation_:I

.field private volatile resourceList_:Ljava/lang/Object;

.field private volatile sizeFormat_:Ljava/lang/Object;

.field private source_:I

.field private status_:I

.field private volatile templateArgs_:Ljava/lang/Object;

.field private volatile titleResName_:Ljava/lang/Object;

.field private volatile title_:Ljava/lang/Object;

.field private type_:I

.field private volatile uniqueId_:Ljava/lang/Object;

.field private updatedAt_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$a;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->uniqueId_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->createdAt_:J

    .line 9
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->updatedAt_:J

    .line 10
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->title_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->titleResName_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->orientation_:I

    .line 13
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->sizeFormat_:Ljava/lang/Object;

    .line 14
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->type_:I

    .line 15
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->resourceList_:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->categoryId_:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->contentPageId_:Ljava/lang/Object;

    .line 18
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->templateArgs_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->orderIndex_:F

    .line 20
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->source_:I

    .line 21
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->status_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;-><init>()V

    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 25
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 26
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 27
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->status_:I

    goto :goto_0

    .line 28
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->source_:I

    goto :goto_0

    .line 29
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->orderIndex_:F

    goto :goto_0

    .line 30
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 31
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->templateArgs_:Ljava/lang/Object;

    goto :goto_0

    .line 32
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 33
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->contentPageId_:Ljava/lang/Object;

    goto :goto_0

    .line 34
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 35
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->categoryId_:Ljava/lang/Object;

    goto :goto_0

    .line 36
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 37
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->resourceList_:Ljava/lang/Object;

    goto :goto_0

    .line 38
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->type_:I

    goto :goto_0

    .line 39
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 40
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->sizeFormat_:Ljava/lang/Object;

    goto :goto_0

    .line 41
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->orientation_:I

    goto :goto_0

    .line 42
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 43
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->titleResName_:Ljava/lang/Object;

    goto :goto_0

    .line 44
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 45
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 46
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->updatedAt_:J

    goto :goto_0

    .line 47
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->createdAt_:J

    goto :goto_0

    .line 48
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 49
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->uniqueId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :sswitch_f
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

    .line 50
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 51
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 52
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 54
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 55
    throw p1

    .line 56
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 57
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_e
        0x10 -> :sswitch_d
        0x18 -> :sswitch_c
        0x22 -> :sswitch_b
        0x2a -> :sswitch_a
        0x30 -> :sswitch_9
        0x3a -> :sswitch_8
        0x40 -> :sswitch_7
        0x4a -> :sswitch_6
        0x52 -> :sswitch_5
        0x5a -> :sswitch_4
        0x62 -> :sswitch_3
        0x6d -> :sswitch_2
        0x70 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1700(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->uniqueId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1702(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->uniqueId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1802(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;J)J
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->createdAt_:J

    return-wide p1
.end method

.method public static synthetic access$1902(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;J)J
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->updatedAt_:J

    return-wide p1
.end method

.method public static synthetic access$2000(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->title_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2002(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2100(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->titleResName_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2102(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->titleResName_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2202(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->orientation_:I

    return p1
.end method

.method public static synthetic access$2300(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->sizeFormat_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2302(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->sizeFormat_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2402(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->type_:I

    return p1
.end method

.method public static synthetic access$2500(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->resourceList_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2502(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->resourceList_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2600(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->categoryId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2602(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->categoryId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2700(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->contentPageId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2702(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->contentPageId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2800(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->templateArgs_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2802(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->templateArgs_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2902(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;F)F
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->orderIndex_:F

    return p1
.end method

.method public static synthetic access$3002(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->source_:I

    return p1
.end method

.method public static synthetic access$3102(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->status_:I

    return p1
.end method

.method public static synthetic access$3200(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$3300()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
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

.method public static synthetic access$3800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$4000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$4100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getUniqueId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getCreatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getUpdatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getUpdatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTitle()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTitleResName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTitleResName()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getOrientation()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getOrientation()I

    move-result v3

    if-ne v1, v3, :cond_7

    move v1, v0

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getSizeFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getSizeFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v0

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getType()I

    move-result v3

    if-ne v1, v3, :cond_9

    move v1, v0

    goto :goto_7

    :cond_9
    move v1, v2

    :goto_7
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getResourceList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getResourceList()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getCategoryId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getContentPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getContentPageId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTemplateArgs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTemplateArgs()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getOrderIndex()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getOrderIndex()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_e

    move v1, v0

    goto :goto_c

    :cond_e
    move v1, v2

    :goto_c
    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getSource()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getSource()I

    move-result v3

    if-ne v1, v3, :cond_f

    move v1, v0

    goto :goto_d

    :cond_f
    move v1, v2

    :goto_d
    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getStatus()I

    move-result v3

    if-ne v1, v3, :cond_10

    move v1, v0

    goto :goto_e

    :cond_10
    move v1, v2

    :goto_e
    if-eqz v1, :cond_11

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_f

    :cond_11
    move v0, v2

    :goto_f
    return v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->categoryId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->categoryId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCategoryIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->categoryId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->categoryId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContentPageId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->contentPageId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->contentPageId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getContentPageIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->contentPageId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->contentPageId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->createdAt_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    .locals 0

    .line 3
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    return-object p0
.end method

.method public getOrderIndex()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->orderIndex_:F

    return p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->orientation_:I

    return p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getResourceList()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->resourceList_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->resourceList_:Ljava/lang/Object;

    return-object v0
.end method

.method public getResourceListBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->resourceList_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->resourceList_:Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getUniqueIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->uniqueId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->createdAt_:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->updatedAt_:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->title_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTitleResNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->titleResName_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->orientation_:I

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getSizeFormatBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->sizeFormat_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->type_:I

    if-eqz v0, :cond_8

    const/16 v2, 0x8

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getResourceListBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->resourceList_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getCategoryIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->categoryId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getContentPageIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xb

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->contentPageId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_b
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTemplateArgsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xc

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->templateArgs_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_c
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->orderIndex_:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_d

    const/16 v2, 0xd

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v1, v0

    :cond_d
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->source_:I

    if-eqz v0, :cond_e

    const/16 v2, 0xe

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_e
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->status_:I

    if-eqz v0, :cond_f

    const/16 v2, 0xf

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_f
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public getSizeFormat()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->sizeFormat_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->sizeFormat_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSizeFormatBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->sizeFormat_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->sizeFormat_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSource()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->source_:I

    return p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->status_:I

    return p0
.end method

.method public getTemplateArgs()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->templateArgs_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->templateArgs_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTemplateArgsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->templateArgs_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->templateArgs_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->title_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->title_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->title_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->title_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTitleResName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->titleResName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->titleResName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitleResNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->titleResName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->titleResName_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->type_:I

    return p0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->uniqueId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->uniqueId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getUniqueIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->uniqueId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->uniqueId_:Ljava/lang/Object;

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

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->updatedAt_:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getCreatedAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getUpdatedAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTitleResName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getOrientation()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getSizeFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getType()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getResourceList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getContentPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTemplateArgs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getOrderIndex()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getSource()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getStatus()I

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

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    .line 4
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 1

    .line 5
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$a;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$a;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getUniqueIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->uniqueId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->createdAt_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_1
    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->updatedAt_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->title_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTitleResNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->titleResName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_4
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->orientation_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getSizeFormatBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->sizeFormat_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_6
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->type_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getResourceListBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->resourceList_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getCategoryIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->categoryId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getContentPageIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->contentPageId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_a
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTemplateArgsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->templateArgs_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_b
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->orderIndex_:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_c

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_c
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->source_:I

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_d
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->status_:I

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_e
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
