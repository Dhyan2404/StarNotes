.class public final Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShapeInfoProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;
    }
.end annotation


# static fields
.field public static final ANCHOR_FIELD_NUMBER:I = 0x12

.field public static final APPID_FIELD_NUMBER:I = 0x6

.field public static final BOOKPOSITION_FIELD_NUMBER:I = 0x11

.field public static final BOUNDINGRECT_FIELD_NUMBER:I = 0xe

.field public static final COLOR_FIELD_NUMBER:I = 0x9

.field public static final CREATEARGS_FIELD_NUMBER:I = 0xb

.field public static final CREATEDAT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

.field public static final EXTRAATTRIBUTES_FIELD_NUMBER:I = 0x10

.field public static final FILLCOLOR_FIELD_NUMBER:I = 0x1d

.field public static final INFOREVISIONID_FIELD_NUMBER:I = 0x1c

.field public static final LINESTYLE_FIELD_NUMBER:I = 0x18

.field public static final MATRIXVALUES_FIELD_NUMBER:I = 0x14

.field public static final OBJECTID_FIELD_NUMBER:I = 0x2

.field public static final PAGEORIGINHEIGHT_FIELD_NUMBER:I = 0x8

.field public static final PAGEORIGINWIDTH_FIELD_NUMBER:I = 0x7

.field public static final PAGEPOSITIONV2_FIELD_NUMBER:I = 0x1f

.field public static final PAGEUNIQUEIDV2_FIELD_NUMBER:I = 0x20

.field public static final PAINTSTYLE_FIELD_NUMBER:I = 0xa

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITION_FIELD_NUMBER:I = 0x17

.field public static final RESOURCE_FIELD_NUMBER:I = 0x1a

.field public static final REVISIONID_FIELD_NUMBER:I = 0x19

.field public static final RICHTEXT_FIELD_NUMBER:I = 0x1e

.field public static final SCRIBBLETYPE_FIELD_NUMBER:I = 0x13

.field public static final SHAPETYPE_FIELD_NUMBER:I = 0xf

.field public static final STATUS_FIELD_NUMBER:I = 0x1b

.field public static final SUBPAGEUNIQUEID_FIELD_NUMBER:I = 0x5

.field public static final TEXTSTYLE_FIELD_NUMBER:I = 0x15

.field public static final TEXT_FIELD_NUMBER:I = 0x16

.field public static final THICKNESS_FIELD_NUMBER:I = 0xc

.field public static final UNIQUEID_FIELD_NUMBER:I = 0x1

.field public static final UPDATEDAT_FIELD_NUMBER:I = 0x4

.field public static final ZORDER_FIELD_NUMBER:I = 0xd

.field private static final serialVersionUID:J


# instance fields
.field private volatile anchor_:Ljava/lang/Object;

.field private volatile appId_:Ljava/lang/Object;

.field private bookPosition_:I

.field private volatile boundingRect_:Ljava/lang/Object;

.field private color_:I

.field private volatile createArgs_:Ljava/lang/Object;

.field private createdAt_:J

.field private volatile extraAttributes_:Ljava/lang/Object;

.field private fillColor_:I

.field private volatile infoRevisionId_:Ljava/lang/Object;

.field private volatile lineStyle_:Ljava/lang/Object;

.field private volatile matrixValues_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile objectId_:Ljava/lang/Object;

.field private pageOriginHeight_:I

.field private pageOriginWidth_:I

.field private volatile pagePositionV2_:Ljava/lang/Object;

.field private volatile pageUniqueIdV2_:Ljava/lang/Object;

.field private paintStyle_:I

.field private volatile position_:Ljava/lang/Object;

.field private volatile resource_:Ljava/lang/Object;

.field private volatile revisionId_:Ljava/lang/Object;

.field private volatile richText_:Ljava/lang/Object;

.field private scribbleType_:I

.field private shapeType_:I

.field private status_:I

.field private volatile subPageUniqueId_:Ljava/lang/Object;

.field private volatile textStyle_:Ljava/lang/Object;

.field private volatile text_:Ljava/lang/Object;

.field private thickness_:F

.field private volatile uniqueId_:Ljava/lang/Object;

.field private updatedAt_:J

.field private zorder_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$a;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->objectId_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->createdAt_:J

    .line 10
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->updatedAt_:J

    .line 11
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->subPageUniqueId_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->appId_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageOriginWidth_:I

    .line 14
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageOriginHeight_:I

    .line 15
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->color_:I

    .line 16
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->paintStyle_:I

    .line 17
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 18
    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->thickness_:F

    .line 19
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->zorder_:I

    .line 20
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    .line 21
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->shapeType_:I

    .line 22
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->extraAttributes_:Ljava/lang/Object;

    .line 23
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->bookPosition_:I

    .line 24
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->anchor_:Ljava/lang/Object;

    .line 25
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->scribbleType_:I

    .line 26
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    .line 27
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    .line 28
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    .line 29
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->position_:Ljava/lang/Object;

    .line 30
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    .line 31
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    .line 32
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    .line 33
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->status_:I

    .line 34
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    .line 35
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->fillColor_:I

    .line 36
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    .line 37
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pagePositionV2_:Ljava/lang/Object;

    .line 38
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageUniqueIdV2_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;-><init>()V

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 42
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 43
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 44
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 45
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageUniqueIdV2_:Ljava/lang/Object;

    goto :goto_0

    .line 46
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 47
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pagePositionV2_:Ljava/lang/Object;

    goto :goto_0

    .line 48
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 49
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    goto :goto_0

    .line 50
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->fillColor_:I

    goto :goto_0

    .line 51
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 52
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    goto :goto_0

    .line 53
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->status_:I

    goto :goto_0

    .line 54
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 55
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    goto :goto_0

    .line 56
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 57
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    goto :goto_0

    .line 58
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 59
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    goto :goto_0

    .line 60
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 61
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->position_:Ljava/lang/Object;

    goto :goto_0

    .line 62
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 63
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    goto :goto_0

    .line 64
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 65
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    goto :goto_0

    .line 66
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 67
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    goto :goto_0

    .line 68
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->scribbleType_:I

    goto :goto_0

    .line 69
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 70
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->anchor_:Ljava/lang/Object;

    goto :goto_0

    .line 71
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->bookPosition_:I

    goto :goto_0

    .line 72
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 73
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->extraAttributes_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 74
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->shapeType_:I

    goto/16 :goto_0

    .line 75
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 76
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 77
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->zorder_:I

    goto/16 :goto_0

    .line 78
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->thickness_:F

    goto/16 :goto_0

    .line 79
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 80
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 81
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->paintStyle_:I

    goto/16 :goto_0

    .line 82
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->color_:I

    goto/16 :goto_0

    .line 83
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageOriginHeight_:I

    goto/16 :goto_0

    .line 84
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageOriginWidth_:I

    goto/16 :goto_0

    .line 85
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 86
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->appId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 87
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 88
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->subPageUniqueId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 89
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->updatedAt_:J

    goto/16 :goto_0

    .line 90
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->createdAt_:J

    goto/16 :goto_0

    .line 91
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 92
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->objectId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 93
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 94
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_20
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

    .line 95
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 96
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 97
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 99
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 100
    throw p1

    .line 101
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 102
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_20
        0xa -> :sswitch_1f
        0x12 -> :sswitch_1e
        0x18 -> :sswitch_1d
        0x20 -> :sswitch_1c
        0x2a -> :sswitch_1b
        0x32 -> :sswitch_1a
        0x38 -> :sswitch_19
        0x40 -> :sswitch_18
        0x48 -> :sswitch_17
        0x50 -> :sswitch_16
        0x5a -> :sswitch_15
        0x65 -> :sswitch_14
        0x68 -> :sswitch_13
        0x72 -> :sswitch_12
        0x78 -> :sswitch_11
        0x82 -> :sswitch_10
        0x88 -> :sswitch_f
        0x92 -> :sswitch_e
        0x98 -> :sswitch_d
        0xa2 -> :sswitch_c
        0xaa -> :sswitch_b
        0xb2 -> :sswitch_a
        0xba -> :sswitch_9
        0xc2 -> :sswitch_8
        0xca -> :sswitch_7
        0xd2 -> :sswitch_6
        0xd8 -> :sswitch_5
        0xe2 -> :sswitch_4
        0xe8 -> :sswitch_3
        0xf2 -> :sswitch_2
        0xfa -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1700(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1702(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1800(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->objectId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1802(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->objectId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1902(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;J)J
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->createdAt_:J

    return-wide p1
.end method

.method public static synthetic access$2002(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;J)J
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->updatedAt_:J

    return-wide p1
.end method

.method public static synthetic access$2100(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->subPageUniqueId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2102(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->subPageUniqueId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2200(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->appId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2202(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->appId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2302(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageOriginWidth_:I

    return p1
.end method

.method public static synthetic access$2402(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageOriginHeight_:I

    return p1
.end method

.method public static synthetic access$2502(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->color_:I

    return p1
.end method

.method public static synthetic access$2602(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->paintStyle_:I

    return p1
.end method

.method public static synthetic access$2700(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2702(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2802(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;F)F
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->thickness_:F

    return p1
.end method

.method public static synthetic access$2902(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->zorder_:I

    return p1
.end method

.method public static synthetic access$3000(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3002(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3102(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->shapeType_:I

    return p1
.end method

.method public static synthetic access$3200(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->extraAttributes_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3202(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->extraAttributes_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3302(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->bookPosition_:I

    return p1
.end method

.method public static synthetic access$3400(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->anchor_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3402(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->anchor_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3502(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->scribbleType_:I

    return p1
.end method

.method public static synthetic access$3600(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3602(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3700(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3702(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3800(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3802(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3900(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->position_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3902(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->position_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4000(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4002(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4100(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4102(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4200(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4202(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4302(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->status_:I

    return p1
.end method

.method public static synthetic access$4400(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4402(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4502(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->fillColor_:I

    return p1
.end method

.method public static synthetic access$4600(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4602(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4700(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pagePositionV2_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4702(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pagePositionV2_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4800(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageUniqueIdV2_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4802(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageUniqueIdV2_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4900(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$5000()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
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

.method public static synthetic access$6200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$6300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$6400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$6500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$6600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$6700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
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

.method public static getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getUniqueId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getObjectId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getCreatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getUpdatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getUpdatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getSubPageUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getSubPageUniqueId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v0

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPageOriginWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPageOriginWidth()I

    move-result v3

    if-ne v1, v3, :cond_8

    move v1, v0

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPageOriginHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPageOriginHeight()I

    move-result v3

    if-ne v1, v3, :cond_9

    move v1, v0

    goto :goto_7

    :cond_9
    move v1, v2

    :goto_7
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getColor()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getColor()I

    move-result v3

    if-ne v1, v3, :cond_a

    move v1, v0

    goto :goto_8

    :cond_a
    move v1, v2

    :goto_8
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPaintStyle()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPaintStyle()I

    move-result v3

    if-ne v1, v3, :cond_b

    move v1, v0

    goto :goto_9

    :cond_b
    move v1, v2

    :goto_9
    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getCreateArgs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getCreateArgs()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getThickness()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getThickness()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_d

    move v1, v0

    goto :goto_b

    :cond_d
    move v1, v2

    :goto_b
    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getZorder()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getZorder()I

    move-result v3

    if-ne v1, v3, :cond_e

    move v1, v0

    goto :goto_c

    :cond_e
    move v1, v2

    :goto_c
    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getBoundingRect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getBoundingRect()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getShapeType()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getShapeType()I

    move-result v3

    if-ne v1, v3, :cond_10

    move v1, v0

    goto :goto_e

    :cond_10
    move v1, v2

    :goto_e
    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getExtraAttributes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getExtraAttributes()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getBookPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getBookPosition()I

    move-result v3

    if-ne v1, v3, :cond_12

    move v1, v0

    goto :goto_10

    :cond_12
    move v1, v2

    :goto_10
    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getAnchor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getAnchor()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getScribbleType()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getScribbleType()I

    move-result v3

    if-ne v1, v3, :cond_14

    move v1, v0

    goto :goto_12

    :cond_14
    move v1, v2

    :goto_12
    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getMatrixValues()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getMatrixValues()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getTextStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getTextStyle()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getText()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v0

    goto :goto_16

    :cond_18
    move v1, v2

    :goto_16
    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getLineStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getLineStyle()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getRevisionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getRevisionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move v1, v0

    goto :goto_18

    :cond_1a
    move v1, v2

    :goto_18
    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getResource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getResource()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getStatus()I

    move-result v3

    if-ne v1, v3, :cond_1c

    move v1, v0

    goto :goto_1a

    :cond_1c
    move v1, v2

    :goto_1a
    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getInfoRevisionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getInfoRevisionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move v1, v0

    goto :goto_1b

    :cond_1d
    move v1, v2

    :goto_1b
    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getFillColor()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getFillColor()I

    move-result v3

    if-ne v1, v3, :cond_1e

    move v1, v0

    goto :goto_1c

    :cond_1e
    move v1, v2

    :goto_1c
    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getRichText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getRichText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    move v1, v0

    goto :goto_1d

    :cond_1f
    move v1, v2

    :goto_1d
    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPagePositionV2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPagePositionV2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    move v1, v0

    goto :goto_1e

    :cond_20
    move v1, v2

    :goto_1e
    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPageUniqueIdV2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPageUniqueIdV2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    move v1, v0

    goto :goto_1f

    :cond_21
    move v1, v2

    :goto_1f
    if-eqz v1, :cond_22

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_20

    :cond_22
    move v0, v2

    :goto_20
    return v0
.end method

.method public getAnchor()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->anchor_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->anchor_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAnchorBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->anchor_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->anchor_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->appId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->appId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->appId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->appId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBookPosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->bookPosition_:I

    return p0
.end method

.method public getBoundingRect()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBoundingRectBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->color_:I

    return p0
.end method

.method public getCreateArgs()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCreateArgsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->createdAt_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;
    .locals 0

    .line 3
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    return-object p0
.end method

.method public getExtraAttributes()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->extraAttributes_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->extraAttributes_:Ljava/lang/Object;

    return-object v0
.end method

.method public getExtraAttributesBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->extraAttributes_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->extraAttributes_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFillColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->fillColor_:I

    return p0
.end method

.method public getInfoRevisionId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getInfoRevisionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLineStyle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLineStyleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMatrixValues()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    return-object v0
.end method

.method public getMatrixValuesBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->objectId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->objectId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getObjectIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->objectId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->objectId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPageOriginHeight()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageOriginHeight_:I

    return p0
.end method

.method public getPageOriginWidth()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageOriginWidth_:I

    return p0
.end method

.method public getPagePositionV2()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pagePositionV2_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pagePositionV2_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPagePositionV2Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pagePositionV2_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pagePositionV2_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPageUniqueIdV2()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageUniqueIdV2_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageUniqueIdV2_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPageUniqueIdV2Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageUniqueIdV2_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageUniqueIdV2_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPaintStyle()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->paintStyle_:I

    return p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->position_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->position_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPositionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->position_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->position_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    return-object v0
.end method

.method public getResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRevisionId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRevisionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRichText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRichTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getScribbleType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->scribbleType_:I

    return p0
.end method

.method public getSerializedSize()I
    .locals 6

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getUniqueIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getObjectIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->objectId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->createdAt_:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->updatedAt_:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getSubPageUniqueIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->subPageUniqueId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->appId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageOriginWidth_:I

    if-eqz v0, :cond_7

    const/4 v2, 0x7

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageOriginHeight_:I

    if-eqz v0, :cond_8

    const/16 v2, 0x8

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->color_:I

    if-eqz v0, :cond_9

    const/16 v2, 0x9

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_9
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->paintStyle_:I

    if-eqz v0, :cond_a

    const/16 v2, 0xa

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getCreateArgsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xb

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_b
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->thickness_:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_c

    const/16 v2, 0xc

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v1, v0

    :cond_c
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->zorder_:I

    if-eqz v0, :cond_d

    const/16 v2, 0xd

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_d
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getBoundingRectBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_e
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->shapeType_:I

    if-eqz v0, :cond_f

    const/16 v2, 0xf

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_f
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getExtraAttributesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x10

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->extraAttributes_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_10
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->bookPosition_:I

    if-eqz v0, :cond_11

    const/16 v2, 0x11

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_11
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getAnchorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x12

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->anchor_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_12
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->scribbleType_:I

    if-eqz v0, :cond_13

    const/16 v2, 0x13

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_13
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getMatrixValuesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0x14

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_14
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getTextStyleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x15

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_15
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0x16

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_16
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPositionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    const/16 v0, 0x17

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->position_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_17
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getLineStyleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x18

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_18
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getRevisionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0x19

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_19
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getResourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const/16 v0, 0x1a

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1a
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->status_:I

    if-eqz v0, :cond_1b

    const/16 v2, 0x1b

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1b
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getInfoRevisionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    const/16 v0, 0x1c

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1c
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->fillColor_:I

    if-eqz v0, :cond_1d

    const/16 v2, 0x1d

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1d
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getRichTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    const/16 v0, 0x1e

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1e
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPagePositionV2Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    const/16 v0, 0x1f

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pagePositionV2_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1f
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPageUniqueIdV2Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/16 v0, 0x20

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageUniqueIdV2_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_20
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public getShapeType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->shapeType_:I

    return p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->status_:I

    return p0
.end method

.method public getSubPageUniqueId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->subPageUniqueId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->subPageUniqueId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSubPageUniqueIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->subPageUniqueId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->subPageUniqueId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTextStyle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTextStyleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getThickness()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->thickness_:F

    return p0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getUniqueIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

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

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->updatedAt_:J

    return-wide v0
.end method

.method public getZorder()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->zorder_:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getCreatedAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getUpdatedAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getSubPageUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPageOriginWidth()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPageOriginHeight()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getColor()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPaintStyle()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getCreateArgs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getThickness()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getZorder()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getBoundingRect()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getShapeType()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getExtraAttributes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getBookPosition()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getAnchor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x13

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getScribbleType()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x14

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getMatrixValues()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x15

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getTextStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x16

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x17

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPosition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getLineStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x19

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getRevisionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1a

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getResource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1b

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getStatus()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1c

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getInfoRevisionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1d

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getFillColor()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1e

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getRichText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPagePositionV2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x20

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPageUniqueIdV2()Ljava/lang/String;

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

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto;->d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;
    .locals 0

    .line 4
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;
    .locals 1

    .line 5
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$a;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$a;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;)Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto$Builder;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getUniqueIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->uniqueId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getObjectIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->objectId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->createdAt_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_2
    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->updatedAt_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getSubPageUniqueIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->subPageUniqueId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->appId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_5
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageOriginWidth_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_6
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageOriginHeight_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_7
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->color_:I

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_8
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->paintStyle_:I

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getCreateArgsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->createArgs_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_a
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->thickness_:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_b
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->zorder_:I

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_c
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getBoundingRectBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->boundingRect_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_d
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->shapeType_:I

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_e
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getExtraAttributesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->extraAttributes_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_f
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->bookPosition_:I

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_10
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getAnchorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->anchor_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_11
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->scribbleType_:I

    if-eqz v0, :cond_12

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_12
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getMatrixValuesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->matrixValues_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_13
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getTextStyleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0x15

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->textStyle_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_14
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x16

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->text_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_15
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPositionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->position_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getLineStyleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->lineStyle_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_17
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getRevisionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x19

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->revisionId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_18
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getResourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->resource_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_19
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->status_:I

    if-eqz v0, :cond_1a

    const/16 v1, 0x1b

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1a
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getInfoRevisionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->infoRevisionId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1b
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->fillColor_:I

    if-eqz v0, :cond_1c

    const/16 v1, 0x1d

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1c
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getRichTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->richText_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1d
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPagePositionV2Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pagePositionV2_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1e
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->getPageUniqueIdV2Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/ReaderShapeDocProto$ShapeInfoProto;->pageUniqueIdV2_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1f
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
