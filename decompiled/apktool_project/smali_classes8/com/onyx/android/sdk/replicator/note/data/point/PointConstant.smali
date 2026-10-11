.class public final Lcom/onyx/android/sdk/replicator/note/data/point/PointConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/point/PointConstant;",
        "",
        "()V",
        "INT_TYPE_LENGTH",
        "",
        "IO_SAVE_TIME_MS_THRESHOLD",
        "MAX_POINT_READ_LENGTH_V1",
        "POINT_DOCUMENT_HEADER_LENGTH",
        "POINT_DOCUMENT_POINT_LENGTH_V1",
        "POINT_DOCUMENT_SHAPE_ATTR_LENGTH_V1",
        "POINT_DOCUMENT_SHAPE_REPO_LENGTH_V1",
        "POINT_DOCUMENT_UUID_LENGTH",
        "POINT_DOCUMENT_XREF_LENGTH",
        "POINT_FILE_END",
        "",
        "POINT_FILE_NAME_SPLIT_CHAR",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/point/PointConstant;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INT_TYPE_LENGTH:I = 0x4

.field public static final IO_SAVE_TIME_MS_THRESHOLD:I = 0x3e8

.field public static final MAX_POINT_READ_LENGTH_V1:I = 0x5000000

.field public static final POINT_DOCUMENT_HEADER_LENGTH:I = 0x4c

.field public static final POINT_DOCUMENT_POINT_LENGTH_V1:I = 0x10

.field public static final POINT_DOCUMENT_SHAPE_ATTR_LENGTH_V1:I = 0x4

.field public static final POINT_DOCUMENT_SHAPE_REPO_LENGTH_V1:I = 0x2c

.field public static final POINT_DOCUMENT_UUID_LENGTH:I = 0x24

.field public static final POINT_DOCUMENT_XREF_LENGTH:I = 0x4

.field public static final POINT_FILE_END:Ljava/lang/String; = "points"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final POINT_FILE_NAME_SPLIT_CHAR:Ljava/lang/String; = "#"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/point/PointConstant;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/point/PointConstant;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/point/PointConstant;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/point/PointConstant;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
