.class public final Lcom/onyx/android/sdk/replicator/bean/SyncRecordType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008 \n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0004J\u000e\u0010\'\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/bean/SyncRecordType;",
        "",
        "()V",
        "APP_DATA_RECORD_TYPE",
        "",
        "BOOKMARK_RECORD_TYPE",
        "CONFIG_RECORD_TYPE",
        "COVER_THUMBNAIL_RECORD_TYPE",
        "DELETE_GROUP_TREE_RECORD_TYPE",
        "DELETE_LIBRARY_RECORD_TYPE",
        "DELETE_NOTE_RECORD_TYPE",
        "DELETE_SHAPE_RECORD_TYPE",
        "DELETE_USERDATA_RECORD_TYPE",
        "LIBRARY_RECORD_TYPE",
        "LINK_PB_FILE_RECORD_TYPE",
        "NOTE_RECORD_TYPE",
        "NOTE_TEMPLATE_RES_RECORD_TYPE",
        "POINT_RECORD_TYPE",
        "RESOURCE_CONTENT_RECORD_TYPE",
        "RESOURCE_PB_FILE_RECORD_TYPE",
        "RESOURCE_RECORD_TYPE",
        "SHAPE_PB_FILE_RECORD_TYPE",
        "SHAPE_RECORD_TYPE",
        "SHAPE_THUMBNAIL_RECORD_TYPE",
        "TEMPLATE_JSON_RECORD_TYPE",
        "TOC_RECORD_TYPE",
        "UPDATE_GROUP_TREE_RECORD_TYPE",
        "USER_COVER_RES_FILE_RECORD_TYPE",
        "USER_COVER_RES_THUMBNAIL_FILE_RECORD_TYPE",
        "USER_DATA_PB_FILE_RECORD_TYPE",
        "USER_DATA_RECORD_TYPE",
        "USER_FONT_FILE_RECORD_TYPE",
        "USER_TEMPLATE_RES_FILE_RECORD_TYPE",
        "USER_TEMPLATE_RES_THUMBNAIL_FILE_RECORD_TYPE",
        "VIRTUAL_DOC_PB_FILE_RECORD_TYPE",
        "VIRTUAL_PAGE_PB_FILE_RECORD_TYPE",
        "isCoverType",
        "",
        "type",
        "isResourceRecord",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final APP_DATA_RECORD_TYPE:I = 0x7

.field public static final BOOKMARK_RECORD_TYPE:I = 0x12

.field public static final CONFIG_RECORD_TYPE:I = 0x3

.field public static final COVER_THUMBNAIL_RECORD_TYPE:I = 0x5

.field public static final DELETE_GROUP_TREE_RECORD_TYPE:I = 0xc9

.field public static final DELETE_LIBRARY_RECORD_TYPE:I = 0x66

.field public static final DELETE_NOTE_RECORD_TYPE:I = 0x64

.field public static final DELETE_SHAPE_RECORD_TYPE:I = 0x65

.field public static final DELETE_USERDATA_RECORD_TYPE:I = 0x67

.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/bean/SyncRecordType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIBRARY_RECORD_TYPE:I = 0xa

.field public static final LINK_PB_FILE_RECORD_TYPE:I = 0xc

.field public static final NOTE_RECORD_TYPE:I = 0x2

.field public static final NOTE_TEMPLATE_RES_RECORD_TYPE:I = 0x13

.field public static final POINT_RECORD_TYPE:I = 0x1

.field public static final RESOURCE_CONTENT_RECORD_TYPE:I = 0x10

.field public static final RESOURCE_PB_FILE_RECORD_TYPE:I = 0x9

.field public static final RESOURCE_RECORD_TYPE:I = 0x4

.field public static final SHAPE_PB_FILE_RECORD_TYPE:I = 0x8

.field public static final SHAPE_RECORD_TYPE:I = 0x0

.field public static final SHAPE_THUMBNAIL_RECORD_TYPE:I = 0x6

.field public static final TEMPLATE_JSON_RECORD_TYPE:I = 0xf

.field public static final TOC_RECORD_TYPE:I = 0x11

.field public static final UPDATE_GROUP_TREE_RECORD_TYPE:I = 0xc8

.field public static final USER_COVER_RES_FILE_RECORD_TYPE:I = 0x130

.field public static final USER_COVER_RES_THUMBNAIL_FILE_RECORD_TYPE:I = 0x131

.field public static final USER_DATA_PB_FILE_RECORD_TYPE:I = 0x12d

.field public static final USER_DATA_RECORD_TYPE:I = 0xb

.field public static final USER_FONT_FILE_RECORD_TYPE:I = 0x132

.field public static final USER_TEMPLATE_RES_FILE_RECORD_TYPE:I = 0x12e

.field public static final USER_TEMPLATE_RES_THUMBNAIL_FILE_RECORD_TYPE:I = 0x12f

.field public static final VIRTUAL_DOC_PB_FILE_RECORD_TYPE:I = 0xe

.field public static final VIRTUAL_PAGE_PB_FILE_RECORD_TYPE:I = 0xd


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/SyncRecordType;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/bean/SyncRecordType;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/bean/SyncRecordType;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/SyncRecordType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isCoverType(I)Z
    .locals 0

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isResourceRecord(I)Z
    .locals 0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
