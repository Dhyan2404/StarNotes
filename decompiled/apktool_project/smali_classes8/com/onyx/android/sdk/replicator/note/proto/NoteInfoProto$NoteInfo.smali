.class public final Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoteInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;
    }
.end annotation


# static fields
.field public static final ACTIVESCENE_FIELD_NUMBER:I = 0x2b

.field public static final ASSOCIATEDATE_FIELD_NUMBER:I = 0x19

.field public static final ASSOCIATIONID_FIELD_NUMBER:I = 0x1d

.field public static final ASSOCIATIONTYPE_FIELD_NUMBER:I = 0x1e

.field public static final ASYNCSTATUS_FIELD_NUMBER:I = 0x1a

.field public static final BACKGROUND_FIELD_NUMBER:I = 0x11

.field public static final CLOUDNOTESIZE_FIELD_NUMBER:I = 0x20

.field public static final CLOUDUPDATEDAT_FIELD_NUMBER:I = 0x21

.field public static final COMMITID_FIELD_NUMBER:I = 0x22

.field public static final CREATEDAT_FIELD_NUMBER:I = 0x2

.field public static final CURRENTSHAPETYPE_FIELD_NUMBER:I = 0x10

.field private static final DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

.field public static final DEVICEINFO_FIELD_NUMBER:I = 0xe

.field public static final DIGEST_FIELD_NUMBER:I = 0x1c

.field public static final EMBEDDEDAT_FIELD_NUMBER:I = 0x23

.field public static final ENCRYPTIONTYPE_FIELD_NUMBER:I = 0x1b

.field public static final ERASERWIDTH_FIELD_NUMBER:I = 0xa

.field public static final EXTRAATTRIBUTES_FIELD_NUMBER:I = 0x7

.field public static final FAVORITE_FIELD_NUMBER:I = 0x26

.field public static final GROUPID_FIELD_NUMBER:I = 0x29

.field public static final LINELAYOUTBACKGROUND_FIELD_NUMBER:I = 0x12

.field public static final NOTEBACKGROUND_FIELD_NUMBER:I = 0xd

.field public static final NOTEPAGEINFO_FIELD_NUMBER:I = 0xc

.field public static final NOTEPENINFO_FIELD_NUMBER:I = 0xb

.field public static final NOTESYNCSTATUS_FIELD_NUMBER:I = 0x25

.field public static final ORDERINDEX_FIELD_NUMBER:I = 0x2f

.field public static final PAGENAMELIST_FIELD_NUMBER:I = 0x14

.field public static final PAGEORIGINHEIGHT_FIELD_NUMBER:I = 0x17

.field public static final PAGEORIGINWIDTH_FIELD_NUMBER:I = 0x16

.field public static final PARENTUNIQUEID_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITION_FIELD_NUMBER:I = 0x13

.field public static final REMOVEPAGELIST_FIELD_NUMBER:I = 0x2c

.field public static final RICHTEXTPAGENAMELIST_FIELD_NUMBER:I = 0x15

.field public static final SOURCE_FIELD_NUMBER:I = 0x18

.field public static final STATUS_FIELD_NUMBER:I = 0x1f

.field public static final STROKECOLOR_FIELD_NUMBER:I = 0xf

.field public static final STROKEWIDTH_FIELD_NUMBER:I = 0x9

.field public static final STYLE_FIELD_NUMBER:I = 0x2e

.field public static final SUBPAGENAME_FIELD_NUMBER:I = 0x5

.field public static final SYNCFROM_FIELD_NUMBER:I = 0x24

.field public static final TAGIDLIST_FIELD_NUMBER:I = 0x2d

.field public static final THUMBNAILRES_FIELD_NUMBER:I = 0x2a

.field public static final TITLE_FIELD_NUMBER:I = 0x6

.field public static final TYPE_FIELD_NUMBER:I = 0x8

.field public static final UNIQUEID_FIELD_NUMBER:I = 0x1

.field public static final UPDATEDAT_FIELD_NUMBER:I = 0x3

.field public static final USERID_FIELD_NUMBER:I = 0x27

.field public static final VERSION_FIELD_NUMBER:I = 0x28

.field private static final serialVersionUID:J


# instance fields
.field private activeScene_:I

.field private volatile associateDate_:Ljava/lang/Object;

.field private volatile associationId_:Ljava/lang/Object;

.field private associationType_:I

.field private asyncStatus_:I

.field private background_:I

.field private cloudNoteSize_:J

.field private cloudUpdatedAt_:J

.field private volatile commitId_:Ljava/lang/Object;

.field private createdAt_:J

.field private currentShapeType_:I

.field private volatile deviceInfo_:Ljava/lang/Object;

.field private volatile digest_:Ljava/lang/Object;

.field private embeddedAt_:J

.field private encryptionType_:I

.field private eraserWidth_:F

.field private volatile extraAttributes_:Ljava/lang/Object;

.field private favorite_:I

.field private volatile groupId_:Ljava/lang/Object;

.field private lineLayoutBackground_:I

.field private memoizedIsInitialized:B

.field private volatile noteBackground_:Ljava/lang/Object;

.field private volatile notePageInfo_:Ljava/lang/Object;

.field private volatile notePenInfo_:Ljava/lang/Object;

.field private noteSyncStatus_:I

.field private orderIndex_:F

.field private volatile pageNameList_:Ljava/lang/Object;

.field private pageOriginHeight_:F

.field private pageOriginWidth_:F

.field private volatile parentUniqueId_:Ljava/lang/Object;

.field private position_:I

.field private volatile removePageList_:Ljava/lang/Object;

.field private volatile richTextPageNameList_:Ljava/lang/Object;

.field private volatile source_:Ljava/lang/Object;

.field private status_:I

.field private strokeColor_:I

.field private strokeWidth_:F

.field private volatile style_:Ljava/lang/Object;

.field private volatile subPageName_:Ljava/lang/Object;

.field private syncFrom_:I

.field private volatile tagIdList_:Ljava/lang/Object;

.field private volatile thumbnailRes_:Ljava/lang/Object;

.field private volatile title_:Ljava/lang/Object;

.field private type_:I

.field private volatile uniqueId_:Ljava/lang/Object;

.field private updatedAt_:J

.field private volatile userId_:Ljava/lang/Object;

.field private version_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$a;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->uniqueId_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->createdAt_:J

    .line 9
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->updatedAt_:J

    .line 10
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->parentUniqueId_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->subPageName_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->title_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->extraAttributes_:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 14
    iput v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->type_:I

    const/4 v4, 0x0

    .line 15
    iput v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->strokeWidth_:F

    .line 16
    iput v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->eraserWidth_:F

    .line 17
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePenInfo_:Ljava/lang/Object;

    .line 18
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePageInfo_:Ljava/lang/Object;

    .line 19
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->noteBackground_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->deviceInfo_:Ljava/lang/Object;

    .line 21
    iput v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->strokeColor_:I

    .line 22
    iput v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->currentShapeType_:I

    .line 23
    iput v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->background_:I

    .line 24
    iput v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->lineLayoutBackground_:I

    .line 25
    iput v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->position_:I

    .line 26
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageNameList_:Ljava/lang/Object;

    .line 27
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->richTextPageNameList_:Ljava/lang/Object;

    .line 28
    iput v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageOriginWidth_:F

    .line 29
    iput v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageOriginHeight_:F

    .line 30
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->source_:Ljava/lang/Object;

    .line 31
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associateDate_:Ljava/lang/Object;

    .line 32
    iput v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->asyncStatus_:I

    .line 33
    iput v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->encryptionType_:I

    .line 34
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->digest_:Ljava/lang/Object;

    .line 35
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associationId_:Ljava/lang/Object;

    .line 36
    iput v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associationType_:I

    .line 37
    iput v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->status_:I

    .line 38
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->cloudNoteSize_:J

    .line 39
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->cloudUpdatedAt_:J

    .line 40
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->commitId_:Ljava/lang/Object;

    .line 41
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->embeddedAt_:J

    .line 42
    iput v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->syncFrom_:I

    .line 43
    iput v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->noteSyncStatus_:I

    .line 44
    iput v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->favorite_:I

    .line 45
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->userId_:Ljava/lang/Object;

    .line 46
    iput v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->version_:I

    .line 47
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->groupId_:Ljava/lang/Object;

    .line 48
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->thumbnailRes_:Ljava/lang/Object;

    .line 49
    iput v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->activeScene_:I

    .line 50
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->removePageList_:Ljava/lang/Object;

    .line 51
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->tagIdList_:Ljava/lang/Object;

    .line 52
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->style_:Ljava/lang/Object;

    .line 53
    iput v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->orderIndex_:F

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;-><init>()V

    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 57
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 58
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 59
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->orderIndex_:F

    goto :goto_0

    .line 60
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 61
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->style_:Ljava/lang/Object;

    goto :goto_0

    .line 62
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 63
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->tagIdList_:Ljava/lang/Object;

    goto :goto_0

    .line 64
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 65
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->removePageList_:Ljava/lang/Object;

    goto :goto_0

    .line 66
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->activeScene_:I

    goto :goto_0

    .line 67
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 68
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->thumbnailRes_:Ljava/lang/Object;

    goto :goto_0

    .line 69
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 70
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->groupId_:Ljava/lang/Object;

    goto :goto_0

    .line 71
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->version_:I

    goto :goto_0

    .line 72
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 73
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->userId_:Ljava/lang/Object;

    goto :goto_0

    .line 74
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->favorite_:I

    goto :goto_0

    .line 75
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->noteSyncStatus_:I

    goto :goto_0

    .line 76
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->syncFrom_:I

    goto :goto_0

    .line 77
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->embeddedAt_:J

    goto :goto_0

    .line 78
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 79
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->commitId_:Ljava/lang/Object;

    goto :goto_0

    .line 80
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->cloudUpdatedAt_:J

    goto :goto_0

    .line 81
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->cloudNoteSize_:J

    goto :goto_0

    .line 82
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->status_:I

    goto/16 :goto_0

    .line 83
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associationType_:I

    goto/16 :goto_0

    .line 84
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 85
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associationId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 86
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 87
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->digest_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 88
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->encryptionType_:I

    goto/16 :goto_0

    .line 89
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->asyncStatus_:I

    goto/16 :goto_0

    .line 90
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 91
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associateDate_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 92
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 93
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->source_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 94
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageOriginHeight_:F

    goto/16 :goto_0

    .line 95
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageOriginWidth_:F

    goto/16 :goto_0

    .line 96
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 97
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->richTextPageNameList_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 98
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 99
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageNameList_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 100
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->position_:I

    goto/16 :goto_0

    .line 101
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->lineLayoutBackground_:I

    goto/16 :goto_0

    .line 102
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->background_:I

    goto/16 :goto_0

    .line 103
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->currentShapeType_:I

    goto/16 :goto_0

    .line 104
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->strokeColor_:I

    goto/16 :goto_0

    .line 105
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 106
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->deviceInfo_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 107
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 108
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->noteBackground_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 109
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 110
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePageInfo_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 111
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 112
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePenInfo_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 113
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->eraserWidth_:F

    goto/16 :goto_0

    .line 114
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->strokeWidth_:F

    goto/16 :goto_0

    .line 115
    :sswitch_27
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->type_:I

    goto/16 :goto_0

    .line 116
    :sswitch_28
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 117
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->extraAttributes_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 118
    :sswitch_29
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 119
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->title_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 120
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 121
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->subPageName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 122
    :sswitch_2b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 123
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->parentUniqueId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 124
    :sswitch_2c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->updatedAt_:J

    goto/16 :goto_0

    .line 125
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->createdAt_:J

    goto/16 :goto_0

    .line 126
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 127
    iput-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->uniqueId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_2f
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

    .line 128
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 129
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 130
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 132
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 133
    throw p1

    .line 134
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 135
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2f
        0xa -> :sswitch_2e
        0x10 -> :sswitch_2d
        0x18 -> :sswitch_2c
        0x22 -> :sswitch_2b
        0x2a -> :sswitch_2a
        0x32 -> :sswitch_29
        0x3a -> :sswitch_28
        0x40 -> :sswitch_27
        0x4d -> :sswitch_26
        0x55 -> :sswitch_25
        0x5a -> :sswitch_24
        0x62 -> :sswitch_23
        0x6a -> :sswitch_22
        0x72 -> :sswitch_21
        0x78 -> :sswitch_20
        0x80 -> :sswitch_1f
        0x88 -> :sswitch_1e
        0x90 -> :sswitch_1d
        0x98 -> :sswitch_1c
        0xa2 -> :sswitch_1b
        0xaa -> :sswitch_1a
        0xb5 -> :sswitch_19
        0xbd -> :sswitch_18
        0xc2 -> :sswitch_17
        0xca -> :sswitch_16
        0xd0 -> :sswitch_15
        0xd8 -> :sswitch_14
        0xe2 -> :sswitch_13
        0xea -> :sswitch_12
        0xf0 -> :sswitch_11
        0xf8 -> :sswitch_10
        0x100 -> :sswitch_f
        0x108 -> :sswitch_e
        0x112 -> :sswitch_d
        0x118 -> :sswitch_c
        0x120 -> :sswitch_b
        0x128 -> :sswitch_a
        0x130 -> :sswitch_9
        0x13a -> :sswitch_8
        0x140 -> :sswitch_7
        0x14a -> :sswitch_6
        0x152 -> :sswitch_5
        0x158 -> :sswitch_4
        0x162 -> :sswitch_3
        0x16a -> :sswitch_2
        0x172 -> :sswitch_1
        0x17d -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1700(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->uniqueId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1702(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->uniqueId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1802(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->createdAt_:J

    return-wide p1
.end method

.method public static synthetic access$1902(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->updatedAt_:J

    return-wide p1
.end method

.method public static synthetic access$2000(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->parentUniqueId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2002(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->parentUniqueId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2100(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->subPageName_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2102(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->subPageName_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2200(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->title_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2202(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2300(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->extraAttributes_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2302(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->extraAttributes_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2402(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->type_:I

    return p1
.end method

.method public static synthetic access$2502(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;F)F
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->strokeWidth_:F

    return p1
.end method

.method public static synthetic access$2602(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;F)F
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->eraserWidth_:F

    return p1
.end method

.method public static synthetic access$2700(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePenInfo_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2702(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePenInfo_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2800(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePageInfo_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2802(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePageInfo_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2900(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->noteBackground_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2902(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->noteBackground_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3000(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->deviceInfo_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3002(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->deviceInfo_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3102(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->strokeColor_:I

    return p1
.end method

.method public static synthetic access$3202(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->currentShapeType_:I

    return p1
.end method

.method public static synthetic access$3302(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->background_:I

    return p1
.end method

.method public static synthetic access$3402(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->lineLayoutBackground_:I

    return p1
.end method

.method public static synthetic access$3502(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->position_:I

    return p1
.end method

.method public static synthetic access$3600(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageNameList_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3602(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageNameList_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3700(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->richTextPageNameList_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3702(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->richTextPageNameList_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3802(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;F)F
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageOriginWidth_:F

    return p1
.end method

.method public static synthetic access$3902(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;F)F
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageOriginHeight_:F

    return p1
.end method

.method public static synthetic access$4000(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->source_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4002(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->source_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4100(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associateDate_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4102(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associateDate_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4202(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->asyncStatus_:I

    return p1
.end method

.method public static synthetic access$4302(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->encryptionType_:I

    return p1
.end method

.method public static synthetic access$4400(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->digest_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4402(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->digest_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4500(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associationId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4502(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associationId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4602(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associationType_:I

    return p1
.end method

.method public static synthetic access$4702(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->status_:I

    return p1
.end method

.method public static synthetic access$4802(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->cloudNoteSize_:J

    return-wide p1
.end method

.method public static synthetic access$4902(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->cloudUpdatedAt_:J

    return-wide p1
.end method

.method public static synthetic access$5000(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->commitId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5002(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->commitId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5102(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->embeddedAt_:J

    return-wide p1
.end method

.method public static synthetic access$5202(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->syncFrom_:I

    return p1
.end method

.method public static synthetic access$5302(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->noteSyncStatus_:I

    return p1
.end method

.method public static synthetic access$5402(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->favorite_:I

    return p1
.end method

.method public static synthetic access$5500(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->userId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5502(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->userId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5602(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->version_:I

    return p1
.end method

.method public static synthetic access$5700(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->groupId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5702(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->groupId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5800(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->thumbnailRes_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5802(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->thumbnailRes_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5902(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;I)I
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->activeScene_:I

    return p1
.end method

.method public static synthetic access$6000(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->removePageList_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$6002(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->removePageList_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$6100(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->tagIdList_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$6102(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->tagIdList_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$6200(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->style_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$6202(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->style_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$6302(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;F)F
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->orderIndex_:F

    return p1
.end method

.method public static synthetic access$6400(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$6500()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
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

.method public static synthetic access$7300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$7400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$7500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$7600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$7700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$7800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$7900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$8000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$8100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$8200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$8300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$8400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$8500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$8600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$8700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getUniqueId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCreatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getUpdatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getUpdatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getParentUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getParentUniqueId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getSubPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getSubPageName()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getTitle()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getExtraAttributes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getExtraAttributes()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getType()I

    move-result v3

    if-ne v1, v3, :cond_9

    move v1, v0

    goto :goto_7

    :cond_9
    move v1, v2

    :goto_7
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStrokeWidth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStrokeWidth()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_a

    move v1, v0

    goto :goto_8

    :cond_a
    move v1, v2

    :goto_8
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getEraserWidth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getEraserWidth()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_b

    move v1, v0

    goto :goto_9

    :cond_b
    move v1, v2

    :goto_9
    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNotePenInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNotePenInfo()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNotePageInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNotePageInfo()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNoteBackground()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNoteBackground()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getDeviceInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getDeviceInfo()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStrokeColor()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStrokeColor()I

    move-result v3

    if-ne v1, v3, :cond_10

    move v1, v0

    goto :goto_e

    :cond_10
    move v1, v2

    :goto_e
    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCurrentShapeType()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCurrentShapeType()I

    move-result v3

    if-ne v1, v3, :cond_11

    move v1, v0

    goto :goto_f

    :cond_11
    move v1, v2

    :goto_f
    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getBackground()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getBackground()I

    move-result v3

    if-ne v1, v3, :cond_12

    move v1, v0

    goto :goto_10

    :cond_12
    move v1, v2

    :goto_10
    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getLineLayoutBackground()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getLineLayoutBackground()I

    move-result v3

    if-ne v1, v3, :cond_13

    move v1, v0

    goto :goto_11

    :cond_13
    move v1, v2

    :goto_11
    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getPosition()I

    move-result v3

    if-ne v1, v3, :cond_14

    move v1, v0

    goto :goto_12

    :cond_14
    move v1, v2

    :goto_12
    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getPageNameList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getPageNameList()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getRichTextPageNameList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getRichTextPageNameList()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getPageOriginWidth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getPageOriginWidth()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_17

    move v1, v0

    goto :goto_15

    :cond_17
    move v1, v2

    :goto_15
    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getPageOriginHeight()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getPageOriginHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_18

    move v1, v0

    goto :goto_16

    :cond_18
    move v1, v2

    :goto_16
    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getSource()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAssociateDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAssociateDate()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAsyncStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAsyncStatus()I

    move-result v3

    if-ne v1, v3, :cond_1b

    move v1, v0

    goto :goto_19

    :cond_1b
    move v1, v2

    :goto_19
    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getEncryptionType()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getEncryptionType()I

    move-result v3

    if-ne v1, v3, :cond_1c

    move v1, v0

    goto :goto_1a

    :cond_1c
    move v1, v2

    :goto_1a
    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getDigest()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getDigest()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAssociationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAssociationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v0

    goto :goto_1c

    :cond_1e
    move v1, v2

    :goto_1c
    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAssociationType()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAssociationType()I

    move-result v3

    if-ne v1, v3, :cond_1f

    move v1, v0

    goto :goto_1d

    :cond_1f
    move v1, v2

    :goto_1d
    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStatus()I

    move-result v3

    if-ne v1, v3, :cond_20

    move v1, v0

    goto :goto_1e

    :cond_20
    move v1, v2

    :goto_1e
    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCloudNoteSize()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCloudNoteSize()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_21

    move v1, v0

    goto :goto_1f

    :cond_21
    move v1, v2

    :goto_1f
    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCloudUpdatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCloudUpdatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_22

    move v1, v0

    goto :goto_20

    :cond_22
    move v1, v2

    :goto_20
    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCommitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCommitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v0

    goto :goto_21

    :cond_23
    move v1, v2

    :goto_21
    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getEmbeddedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getEmbeddedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_24

    move v1, v0

    goto :goto_22

    :cond_24
    move v1, v2

    :goto_22
    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getSyncFrom()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getSyncFrom()I

    move-result v3

    if-ne v1, v3, :cond_25

    move v1, v0

    goto :goto_23

    :cond_25
    move v1, v2

    :goto_23
    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNoteSyncStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNoteSyncStatus()I

    move-result v3

    if-ne v1, v3, :cond_26

    move v1, v0

    goto :goto_24

    :cond_26
    move v1, v2

    :goto_24
    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getFavorite()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getFavorite()I

    move-result v3

    if-ne v1, v3, :cond_27

    move v1, v0

    goto :goto_25

    :cond_27
    move v1, v2

    :goto_25
    if-eqz v1, :cond_28

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v0

    goto :goto_26

    :cond_28
    move v1, v2

    :goto_26
    if-eqz v1, :cond_29

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getVersion()I

    move-result v3

    if-ne v1, v3, :cond_29

    move v1, v0

    goto :goto_27

    :cond_29
    move v1, v2

    :goto_27
    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move v1, v0

    goto :goto_28

    :cond_2a
    move v1, v2

    :goto_28
    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getThumbnailRes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getThumbnailRes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v0

    goto :goto_29

    :cond_2b
    move v1, v2

    :goto_29
    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getActiveScene()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getActiveScene()I

    move-result v3

    if-ne v1, v3, :cond_2c

    move v1, v0

    goto :goto_2a

    :cond_2c
    move v1, v2

    :goto_2a
    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getRemovePageList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getRemovePageList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    move v1, v0

    goto :goto_2b

    :cond_2d
    move v1, v2

    :goto_2b
    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getTagIdList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getTagIdList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    move v1, v0

    goto :goto_2c

    :cond_2e
    move v1, v2

    :goto_2c
    if-eqz v1, :cond_2f

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    move v1, v0

    goto :goto_2d

    :cond_2f
    move v1, v2

    :goto_2d
    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getOrderIndex()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getOrderIndex()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_30

    move v1, v0

    goto :goto_2e

    :cond_30
    move v1, v2

    :goto_2e
    if-eqz v1, :cond_31

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_2f

    :cond_31
    move v0, v2

    :goto_2f
    return v0
.end method

.method public getActiveScene()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->activeScene_:I

    return p0
.end method

.method public getAssociateDate()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associateDate_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associateDate_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAssociateDateBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associateDate_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associateDate_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAssociationId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associationId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associationId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAssociationIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associationId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associationId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAssociationType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associationType_:I

    return p0
.end method

.method public getAsyncStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->asyncStatus_:I

    return p0
.end method

.method public getBackground()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->background_:I

    return p0
.end method

.method public getCloudNoteSize()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->cloudNoteSize_:J

    return-wide v0
.end method

.method public getCloudUpdatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->cloudUpdatedAt_:J

    return-wide v0
.end method

.method public getCommitId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->commitId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->commitId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCommitIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->commitId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->commitId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->createdAt_:J

    return-wide v0
.end method

.method public getCurrentShapeType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->currentShapeType_:I

    return p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;
    .locals 0

    .line 3
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    return-object p0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->deviceInfo_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->deviceInfo_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDeviceInfoBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->deviceInfo_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->deviceInfo_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDigest()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->digest_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->digest_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDigestBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->digest_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->digest_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getEmbeddedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->embeddedAt_:J

    return-wide v0
.end method

.method public getEncryptionType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->encryptionType_:I

    return p0
.end method

.method public getEraserWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->eraserWidth_:F

    return p0
.end method

.method public getExtraAttributes()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->extraAttributes_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->extraAttributes_:Ljava/lang/Object;

    return-object v0
.end method

.method public getExtraAttributesBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->extraAttributes_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->extraAttributes_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFavorite()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->favorite_:I

    return p0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->groupId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->groupId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getGroupIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->groupId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->groupId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLineLayoutBackground()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->lineLayoutBackground_:I

    return p0
.end method

.method public getNoteBackground()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->noteBackground_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->noteBackground_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNoteBackgroundBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->noteBackground_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->noteBackground_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNotePageInfo()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePageInfo_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePageInfo_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNotePageInfoBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePageInfo_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePageInfo_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNotePenInfo()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePenInfo_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePenInfo_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNotePenInfoBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePenInfo_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePenInfo_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNoteSyncStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->noteSyncStatus_:I

    return p0
.end method

.method public getOrderIndex()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->orderIndex_:F

    return p0
.end method

.method public getPageNameList()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageNameList_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageNameList_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPageNameListBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageNameList_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageNameList_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPageOriginHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageOriginHeight_:F

    return p0
.end method

.method public getPageOriginWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageOriginWidth_:F

    return p0
.end method

.method public getParentUniqueId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->parentUniqueId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->parentUniqueId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getParentUniqueIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->parentUniqueId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->parentUniqueId_:Ljava/lang/Object;

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
            "Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->position_:I

    return p0
.end method

.method public getRemovePageList()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->removePageList_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->removePageList_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRemovePageListBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->removePageList_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->removePageList_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRichTextPageNameList()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->richTextPageNameList_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->richTextPageNameList_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRichTextPageNameListBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->richTextPageNameList_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->richTextPageNameList_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getUniqueIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->uniqueId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->createdAt_:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->updatedAt_:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getParentUniqueIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->parentUniqueId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getSubPageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->subPageName_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->title_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getExtraAttributesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->extraAttributes_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->type_:I

    if-eqz v0, :cond_8

    const/16 v2, 0x8

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->strokeWidth_:F

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_9

    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v1, v0

    :cond_9
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->eraserWidth_:F

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_a

    const/16 v3, 0xa

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNotePenInfoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xb

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePenInfo_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_b
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNotePageInfoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xc

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePageInfo_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_c
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNoteBackgroundBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xd

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->noteBackground_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_d
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getDeviceInfoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0xe

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->deviceInfo_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_e
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->strokeColor_:I

    if-eqz v0, :cond_f

    const/16 v3, 0xf

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_f
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->currentShapeType_:I

    if-eqz v0, :cond_10

    const/16 v3, 0x10

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_10
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->background_:I

    if-eqz v0, :cond_11

    const/16 v3, 0x11

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_11
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->lineLayoutBackground_:I

    if-eqz v0, :cond_12

    const/16 v3, 0x12

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_12
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->position_:I

    if-eqz v0, :cond_13

    const/16 v3, 0x13

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_13
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getPageNameListBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0x14

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageNameList_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_14
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getRichTextPageNameListBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x15

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->richTextPageNameList_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_15
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageOriginWidth_:F

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_16

    const/16 v3, 0x16

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v1, v0

    :cond_16
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageOriginHeight_:F

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_17

    const/16 v3, 0x17

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v1, v0

    :cond_17
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x18

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->source_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_18
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAssociateDateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0x19

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associateDate_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_19
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->asyncStatus_:I

    if-eqz v0, :cond_1a

    const/16 v3, 0x1a

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1a
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->encryptionType_:I

    if-eqz v0, :cond_1b

    const/16 v3, 0x1b

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1b
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getDigestBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    const/16 v0, 0x1c

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->digest_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1c
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAssociationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    const/16 v0, 0x1d

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associationId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1d
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associationType_:I

    if-eqz v0, :cond_1e

    const/16 v3, 0x1e

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1e
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->status_:I

    if-eqz v0, :cond_1f

    const/16 v3, 0x1f

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1f
    iget-wide v6, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->cloudNoteSize_:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_20

    const/16 v0, 0x20

    invoke-static {v0, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_20
    iget-wide v6, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->cloudUpdatedAt_:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_21

    const/16 v0, 0x21

    invoke-static {v0, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_21
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCommitIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    const/16 v0, 0x22

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->commitId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_22
    iget-wide v6, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->embeddedAt_:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_23

    const/16 v0, 0x23

    invoke-static {v0, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_23
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->syncFrom_:I

    if-eqz v0, :cond_24

    const/16 v3, 0x24

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_24
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->noteSyncStatus_:I

    if-eqz v0, :cond_25

    const/16 v3, 0x25

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_25
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->favorite_:I

    if-eqz v0, :cond_26

    const/16 v3, 0x26

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_26
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getUserIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    const/16 v0, 0x27

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->userId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_27
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->version_:I

    if-eqz v0, :cond_28

    const/16 v3, 0x28

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_28
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getGroupIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    const/16 v0, 0x29

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->groupId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_29
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getThumbnailResBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    const/16 v0, 0x2a

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->thumbnailRes_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2a
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->activeScene_:I

    if-eqz v0, :cond_2b

    const/16 v3, 0x2b

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2b
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getRemovePageListBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    const/16 v0, 0x2c

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->removePageList_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2c
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getTagIdListBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    const/16 v0, 0x2d

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->tagIdList_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2d
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStyleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    const/16 v0, 0x2e

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->style_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2e
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->orderIndex_:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2f

    const/16 v2, 0x2f

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2f
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public getSource()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->source_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->source_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->source_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->source_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->status_:I

    return p0
.end method

.method public getStrokeColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->strokeColor_:I

    return p0
.end method

.method public getStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->strokeWidth_:F

    return p0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->style_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->style_:Ljava/lang/Object;

    return-object v0
.end method

.method public getStyleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->style_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->style_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSubPageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->subPageName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->subPageName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSubPageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->subPageName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->subPageName_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSyncFrom()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->syncFrom_:I

    return p0
.end method

.method public getTagIdList()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->tagIdList_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->tagIdList_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTagIdListBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->tagIdList_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->tagIdList_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getThumbnailRes()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->thumbnailRes_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->thumbnailRes_:Ljava/lang/Object;

    return-object v0
.end method

.method public getThumbnailResBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->thumbnailRes_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->thumbnailRes_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->title_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->title_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->title_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->title_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->type_:I

    return p0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->uniqueId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->uniqueId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getUniqueIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->uniqueId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->uniqueId_:Ljava/lang/Object;

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

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->updatedAt_:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->userId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->userId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->userId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->userId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->version_:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCreatedAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getUpdatedAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getParentUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getSubPageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getExtraAttributes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getType()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStrokeWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getEraserWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNotePenInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNotePageInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNoteBackground()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStrokeColor()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCurrentShapeType()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getBackground()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getLineLayoutBackground()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x13

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getPosition()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x14

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getPageNameList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x15

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getRichTextPageNameList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x16

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getPageOriginWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x17

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getPageOriginHeight()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x19

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAssociateDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1a

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAsyncStatus()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1b

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getEncryptionType()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1c

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1d

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAssociationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1e

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAssociationType()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStatus()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x20

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCloudNoteSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x21

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCloudUpdatedAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x22

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCommitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x23

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getEmbeddedAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x24

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getSyncFrom()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x25

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNoteSyncStatus()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x26

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getFavorite()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x27

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x28

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getVersion()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x29

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2a

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getThumbnailRes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2b

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getActiveScene()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2c

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getRemovePageList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2d

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getTagIdList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2e

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2f

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getOrderIndex()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

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

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto;->d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;
    .locals 0

    .line 4
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;
    .locals 1

    .line 5
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$a;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->DEFAULT_INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$a;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getUniqueIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->uniqueId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->createdAt_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_1
    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->updatedAt_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getParentUniqueIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->parentUniqueId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getSubPageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->subPageName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->title_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getExtraAttributesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->extraAttributes_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_6
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->type_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_7
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->strokeWidth_:F

    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_8

    const/16 v4, 0x9

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_8
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->eraserWidth_:F

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_9

    const/16 v4, 0xa

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNotePenInfoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePenInfo_:Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_a
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNotePageInfoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xc

    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->notePageInfo_:Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_b
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNoteBackgroundBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xd

    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->noteBackground_:Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getDeviceInfoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xe

    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->deviceInfo_:Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_d
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->strokeColor_:I

    if-eqz v0, :cond_e

    const/16 v4, 0xf

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_e
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->currentShapeType_:I

    if-eqz v0, :cond_f

    const/16 v4, 0x10

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_f
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->background_:I

    if-eqz v0, :cond_10

    const/16 v4, 0x11

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_10
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->lineLayoutBackground_:I

    if-eqz v0, :cond_11

    const/16 v4, 0x12

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_11
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->position_:I

    if-eqz v0, :cond_12

    const/16 v4, 0x13

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_12
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getPageNameListBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x14

    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageNameList_:Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_13
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getRichTextPageNameListBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0x15

    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->richTextPageNameList_:Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_14
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageOriginWidth_:F

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_15

    const/16 v4, 0x16

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_15
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->pageOriginHeight_:F

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_16

    const/16 v4, 0x17

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_16
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    const/16 v0, 0x18

    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->source_:Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_17
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAssociateDateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x19

    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associateDate_:Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_18
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->asyncStatus_:I

    if-eqz v0, :cond_19

    const/16 v4, 0x1a

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_19
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->encryptionType_:I

    if-eqz v0, :cond_1a

    const/16 v4, 0x1b

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1a
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getDigestBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    const/16 v0, 0x1c

    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->digest_:Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1b
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAssociationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    const/16 v0, 0x1d

    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associationId_:Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1c
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->associationType_:I

    if-eqz v0, :cond_1d

    const/16 v4, 0x1e

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1d
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->status_:I

    if-eqz v0, :cond_1e

    const/16 v4, 0x1f

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1e
    iget-wide v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->cloudNoteSize_:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1f

    const/16 v0, 0x20

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_1f
    iget-wide v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->cloudUpdatedAt_:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_20

    const/16 v0, 0x21

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_20
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCommitIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    const/16 v0, 0x22

    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->commitId_:Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_21
    iget-wide v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->embeddedAt_:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_22

    const/16 v0, 0x23

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_22
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->syncFrom_:I

    if-eqz v0, :cond_23

    const/16 v2, 0x24

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_23
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->noteSyncStatus_:I

    if-eqz v0, :cond_24

    const/16 v2, 0x25

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_24
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->favorite_:I

    if-eqz v0, :cond_25

    const/16 v2, 0x26

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_25
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getUserIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    const/16 v0, 0x27

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->userId_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_26
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->version_:I

    if-eqz v0, :cond_27

    const/16 v2, 0x28

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_27
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getGroupIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    const/16 v0, 0x29

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->groupId_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_28
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getThumbnailResBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    const/16 v0, 0x2a

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->thumbnailRes_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_29
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->activeScene_:I

    if-eqz v0, :cond_2a

    const/16 v2, 0x2b

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2a
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getRemovePageListBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    const/16 v0, 0x2c

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->removePageList_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2b
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getTagIdListBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    const/16 v0, 0x2d

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->tagIdList_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2c
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStyleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    const/16 v0, 0x2e

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->style_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2d
    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->orderIndex_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_2e
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
