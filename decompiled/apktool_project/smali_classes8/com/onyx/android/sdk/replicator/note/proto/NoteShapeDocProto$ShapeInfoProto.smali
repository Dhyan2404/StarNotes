.class public final Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShapeInfoProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;
    }
.end annotation


# static fields
.field public static final BOUNDINGRECT_FIELD_NUMBER:I = 0x7

.field public static final COLOR_FIELD_NUMBER:I = 0x4

.field public static final CONNECTIONBEAN_FIELD_NUMBER:I = 0x1a

.field public static final CREATEARGS_FIELD_NUMBER:I = 0xb

.field public static final CREATEDAT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

.field public static final EXTRA_FIELD_NUMBER:I = 0x14

.field public static final FILLCOLOR_FIELD_NUMBER:I = 0x17

.field public static final GROUPID_FIELD_NUMBER:I = 0xd

.field public static final INFOREVISIONID_FIELD_NUMBER:I = 0x12

.field public static final LINESTYLE_FIELD_NUMBER:I = 0x11

.field public static final LINKIDLIST_FIELD_NUMBER:I = 0x15

.field public static final MATRIXVALUES_FIELD_NUMBER:I = 0x8

.field public static final OPTIONS_FIELD_NUMBER:I = 0x18

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final POINTLIST_FIELD_NUMBER:I = 0x19

.field public static final RESOURCE_FIELD_NUMBER:I = 0xe

.field public static final REVISIONID_FIELD_NUMBER:I = 0x10

.field public static final RICHTEXT_FIELD_NUMBER:I = 0x16

.field public static final SHAPESTATUS_FIELD_NUMBER:I = 0xf

.field public static final SHAPETYPE_FIELD_NUMBER:I = 0xc

.field public static final TAGIDLIST_FIELD_NUMBER:I = 0x13

.field public static final TEXTSTYLE_FIELD_NUMBER:I = 0x9

.field public static final TEXT_FIELD_NUMBER:I = 0xa

.field public static final THICKNESS_FIELD_NUMBER:I = 0x5

.field public static final UNIQUEID_FIELD_NUMBER:I = 0x1

.field public static final UPDATEDAT_FIELD_NUMBER:I = 0x3

.field public static final ZORDER_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private volatile boundingRect_:Ljava/lang/Object;

.field private color_:I

.field private volatile connectionBean_:Ljava/lang/Object;

.field private volatile createArgs_:Ljava/lang/Object;

.field private createdAt_:J

.field private volatile extra_:Ljava/lang/Object;

.field private fillColor_:I

.field private volatile groupId_:Ljava/lang/Object;

.field private volatile infoRevisionId_:Ljava/lang/Object;

.field private volatile lineStyle_:Ljava/lang/Object;

.field private volatile linkIdList_:Ljava/lang/Object;

.field private volatile matrixValues_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile options_:Ljava/lang/Object;

.field private pointList_:Lcom/google/protobuf/ByteString;

.field private volatile resource_:Ljava/lang/Object;

.field private volatile revisionId_:Ljava/lang/Object;

.field private volatile richText_:Ljava/lang/Object;

.field private shapeStatus_:I

.field private shapeType_:I

.field private volatile tagIdList_:Ljava/lang/Object;

.field private volatile textStyle_:Ljava/lang/Object;

.field private volatile text_:Ljava/lang/Object;

.field private thickness_:F

.field private volatile uniqueId_:Ljava/lang/Object;

.field private updatedAt_:J

.field private zorder_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$a;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->createdAt_:J

    .line 9
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->updatedAt_:J

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->color_:I

    const/4 v2, 0x0

    .line 11
    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->thickness_:F

    .line 12
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->zorder_:I

    .line 13
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    .line 18
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->shapeType_:I

    .line 19
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->groupId_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    .line 21
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->shapeStatus_:I

    .line 22
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    .line 23
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->tagIdList_:Ljava/lang/Object;

    .line 26
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->extra_:Ljava/lang/Object;

    .line 27
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->linkIdList_:Ljava/lang/Object;

    .line 28
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    .line 29
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->fillColor_:I

    .line 30
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->options_:Ljava/lang/Object;

    .line 31
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->pointList_:Lcom/google/protobuf/ByteString;

    .line 32
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->connectionBean_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;-><init>()V

    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 36
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 37
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 38
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 39
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->connectionBean_:Ljava/lang/Object;

    goto :goto_0

    .line 40
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->pointList_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 41
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 42
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->options_:Ljava/lang/Object;

    goto :goto_0

    .line 43
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->fillColor_:I

    goto :goto_0

    .line 44
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 45
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    goto :goto_0

    .line 46
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 47
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->linkIdList_:Ljava/lang/Object;

    goto :goto_0

    .line 48
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 49
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->extra_:Ljava/lang/Object;

    goto :goto_0

    .line 50
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 51
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->tagIdList_:Ljava/lang/Object;

    goto :goto_0

    .line 52
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 53
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    goto :goto_0

    .line 54
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 55
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    goto :goto_0

    .line 56
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 57
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    goto :goto_0

    .line 58
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->shapeStatus_:I

    goto :goto_0

    .line 59
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 60
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    goto :goto_0

    .line 61
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 62
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->groupId_:Ljava/lang/Object;

    goto :goto_0

    .line 63
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->shapeType_:I

    goto :goto_0

    .line 64
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 65
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    goto :goto_0

    .line 66
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 67
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 68
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 69
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 70
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 71
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 72
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 73
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 74
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->zorder_:I

    goto/16 :goto_0

    .line 75
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->thickness_:F

    goto/16 :goto_0

    .line 76
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->color_:I

    goto/16 :goto_0

    .line 77
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->updatedAt_:J

    goto/16 :goto_0

    .line 78
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->createdAt_:J

    goto/16 :goto_0

    .line 79
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 80
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_1a
    move v1, v3

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 81
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 82
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 83
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 85
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 86
    throw p1

    .line 87
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 88
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1a
        0xa -> :sswitch_19
        0x10 -> :sswitch_18
        0x18 -> :sswitch_17
        0x20 -> :sswitch_16
        0x2d -> :sswitch_15
        0x30 -> :sswitch_14
        0x3a -> :sswitch_13
        0x42 -> :sswitch_12
        0x4a -> :sswitch_11
        0x52 -> :sswitch_10
        0x5a -> :sswitch_f
        0x60 -> :sswitch_e
        0x6a -> :sswitch_d
        0x72 -> :sswitch_c
        0x78 -> :sswitch_b
        0x82 -> :sswitch_a
        0x8a -> :sswitch_9
        0x92 -> :sswitch_8
        0x9a -> :sswitch_7
        0xa2 -> :sswitch_6
        0xaa -> :sswitch_5
        0xb2 -> :sswitch_4
        0xb8 -> :sswitch_3
        0xc2 -> :sswitch_2
        0xca -> :sswitch_1
        0xd2 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1700(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1702(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1802(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;J)J
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->createdAt_:J

    return-wide p1
.end method

.method public static synthetic access$1902(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;J)J
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->updatedAt_:J

    return-wide p1
.end method

.method public static synthetic access$2002(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->color_:I

    return p1
.end method

.method public static synthetic access$2102(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;F)F
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->thickness_:F

    return p1
.end method

.method public static synthetic access$2202(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->zorder_:I

    return p1
.end method

.method public static synthetic access$2300(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2302(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2400(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2402(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2500(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2502(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2600(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2602(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2700(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2702(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2802(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->shapeType_:I

    return p1
.end method

.method public static synthetic access$2900(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->groupId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2902(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->groupId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3000(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3002(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3102(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->shapeStatus_:I

    return p1
.end method

.method public static synthetic access$3200(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3202(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3300(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3302(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3400(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3402(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3500(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->tagIdList_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3502(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->tagIdList_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3600(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->extra_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3602(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->extra_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3700(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->linkIdList_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3702(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->linkIdList_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3800(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3802(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3902(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->fillColor_:I

    return p1
.end method

.method public static synthetic access$4000(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->options_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4002(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->options_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4102(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->pointList_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static synthetic access$4200(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->connectionBean_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4202(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->connectionBean_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4300(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$4400()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$4500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$4600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$4700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$4800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$4900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$5000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$5100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$5200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$5300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$5400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$5500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$5600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$5700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$5800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$5900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$6000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$6100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getUniqueId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getCreatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getUpdatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getUpdatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getColor()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getColor()I

    move-result v3

    if-ne v1, v3, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getThickness()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getThickness()F

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getZorder()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getZorder()I

    move-result v3

    if-ne v1, v3, :cond_7

    move v1, v0

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getBoundingRect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getBoundingRect()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getMatrixValues()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getMatrixValues()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getTextStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getTextStyle()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getText()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getCreateArgs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getCreateArgs()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getShapeType()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getShapeType()I

    move-result v3

    if-ne v1, v3, :cond_d

    move v1, v0

    goto :goto_b

    :cond_d
    move v1, v2

    :goto_b
    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v0

    goto :goto_c

    :cond_e
    move v1, v2

    :goto_c
    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getResource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getResource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v0

    goto :goto_d

    :cond_f
    move v1, v2

    :goto_d
    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getShapeStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getShapeStatus()I

    move-result v3

    if-ne v1, v3, :cond_10

    move v1, v0

    goto :goto_e

    :cond_10
    move v1, v2

    :goto_e
    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getRevisionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getRevisionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v0

    goto :goto_f

    :cond_11
    move v1, v2

    :goto_f
    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getLineStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getLineStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v0

    goto :goto_10

    :cond_12
    move v1, v2

    :goto_10
    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getInfoRevisionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getInfoRevisionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v0

    goto :goto_11

    :cond_13
    move v1, v2

    :goto_11
    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getTagIdList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getTagIdList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v0

    goto :goto_12

    :cond_14
    move v1, v2

    :goto_12
    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v0

    goto :goto_13

    :cond_15
    move v1, v2

    :goto_13
    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getLinkIdList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getLinkIdList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v0

    goto :goto_14

    :cond_16
    move v1, v2

    :goto_14
    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getRichText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getRichText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v0

    goto :goto_15

    :cond_17
    move v1, v2

    :goto_15
    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getFillColor()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getFillColor()I

    move-result v3

    if-ne v1, v3, :cond_18

    move v1, v0

    goto :goto_16

    :cond_18
    move v1, v2

    :goto_16
    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getOptions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getOptions()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    move v1, v0

    goto :goto_17

    :cond_19
    move v1, v2

    :goto_17
    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getPointList()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getPointList()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move v1, v0

    goto :goto_18

    :cond_1a
    move v1, v2

    :goto_18
    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getConnectionBean()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getConnectionBean()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v0

    goto :goto_19

    :cond_1b
    move v1, v2

    :goto_19
    if-eqz v1, :cond_1c

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1a

    :cond_1c
    move v0, v2

    :goto_1a
    return v0
.end method

.method public getBoundingRect()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBoundingRectBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->color_:I

    return p0
.end method

.method public getConnectionBean()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->connectionBean_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->connectionBean_:Ljava/lang/Object;

    return-object v0
.end method

.method public getConnectionBeanBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->connectionBean_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->connectionBean_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCreateArgs()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCreateArgsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->createdAt_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;
    .locals 0

    .line 3
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->extra_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->extra_:Ljava/lang/Object;

    return-object v0
.end method

.method public getExtraBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->extra_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->extra_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFillColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->fillColor_:I

    return p0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->groupId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->groupId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getGroupIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->groupId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->groupId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getInfoRevisionId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getInfoRevisionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLineStyle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLineStyleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLinkIdList()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->linkIdList_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->linkIdList_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLinkIdListBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->linkIdList_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->linkIdList_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMatrixValues()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    return-object v0
.end method

.method public getMatrixValuesBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOptions()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->options_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->options_:Ljava/lang/Object;

    return-object v0
.end method

.method public getOptionsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->options_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->options_:Ljava/lang/Object;

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
            "Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getPointList()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->pointList_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getResource()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    return-object v0
.end method

.method public getResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRevisionId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRevisionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRichText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRichTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getUniqueIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->createdAt_:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->updatedAt_:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->color_:I

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->thickness_:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->zorder_:I

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getBoundingRectBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getMatrixValuesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getTextStyleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getCreateArgsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xb

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_b
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->shapeType_:I

    if-eqz v0, :cond_c

    const/16 v2, 0xc

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_c
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getGroupIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xd

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->groupId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_d
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getResourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_e
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->shapeStatus_:I

    if-eqz v0, :cond_f

    const/16 v2, 0xf

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_f
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getRevisionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x10

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_10
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getLineStyleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x11

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_11
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getInfoRevisionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x12

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_12
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getTagIdListBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x13

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->tagIdList_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_13
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getExtraBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0x14

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->extra_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_14
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getLinkIdListBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x15

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->linkIdList_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_15
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getRichTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0x16

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_16
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->fillColor_:I

    if-eqz v0, :cond_17

    const/16 v2, 0x17

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_17
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getOptionsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x18

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->options_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_18
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->pointList_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0x19

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->pointList_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_19
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getConnectionBeanBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const/16 v0, 0x1a

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->connectionBean_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1a
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public getShapeStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->shapeStatus_:I

    return p0
.end method

.method public getShapeType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->shapeType_:I

    return p0
.end method

.method public getTagIdList()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->tagIdList_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->tagIdList_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTagIdListBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->tagIdList_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->tagIdList_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTextStyle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTextStyleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getThickness()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->thickness_:F

    return p0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getUniqueIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

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

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->updatedAt_:J

    return-wide v0
.end method

.method public getZorder()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->zorder_:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getCreatedAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getUpdatedAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getColor()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getThickness()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getZorder()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getBoundingRect()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getMatrixValues()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getTextStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getCreateArgs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getShapeType()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getResource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getShapeStatus()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getRevisionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getLineStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getInfoRevisionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x13

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getTagIdList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x14

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x15

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getLinkIdList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x16

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getRichText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x17

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getFillColor()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getOptions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x19

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getPointList()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1a

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getConnectionBean()Ljava/lang/String;

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

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto;->d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;
    .locals 0

    .line 4
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;
    .locals 1

    .line 5
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$a;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$a;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getUniqueIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->createdAt_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_1
    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->updatedAt_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_2
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->color_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_3
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->thickness_:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_4
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->zorder_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getBoundingRectBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getMatrixValuesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getTextStyleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getCreateArgsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_a
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->shapeType_:I

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_b
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getGroupIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->groupId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getResourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_d
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->shapeStatus_:I

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_e
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getRevisionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_f
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getLineStyleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_10
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getInfoRevisionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_11
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getTagIdListBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x13

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->tagIdList_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_12
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getExtraBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->extra_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_13
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getLinkIdListBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0x15

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->linkIdList_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_14
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getRichTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x16

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_15
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->fillColor_:I

    if-eqz v0, :cond_16

    const/16 v1, 0x17

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_16
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getOptionsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->options_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_17
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->pointList_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x19

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->pointList_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_18
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->getConnectionBeanBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;->connectionBean_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_19
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
