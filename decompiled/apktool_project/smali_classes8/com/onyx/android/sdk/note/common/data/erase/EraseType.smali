.class public final Lcom/onyx/android/sdk/note/common/data/erase/EraseType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseType;",
        "",
        "()V",
        "DEFAULT_ERASER",
        "",
        "ERASER_AREA",
        "ERASER_AREA_NAME",
        "",
        "ERASER_MOVE",
        "ERASER_MOVE_NAME",
        "ERASER_NONE",
        "ERASER_STROKE",
        "ERASER_STROKE_NAME",
        "getEraseNmeByType",
        "type",
        "sdk-note_overseasRelease"
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
.field public static final DEFAULT_ERASER:I = 0x1

.field public static final ERASER_AREA:I = 0x2

.field public static final ERASER_AREA_NAME:Ljava/lang/String; = "select_erasure"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ERASER_MOVE:I = 0x1

.field public static final ERASER_MOVE_NAME:Ljava/lang/String; = "pixel_eraser"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ERASER_NONE:I = -0x1

.field public static final ERASER_STROKE:I = 0x0

.field public static final ERASER_STROKE_NAME:Ljava/lang/String; = "stroke_erasure"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/data/erase/EraseType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/erase/EraseType;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseType;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/erase/EraseType;->INSTANCE:Lcom/onyx/android/sdk/note/common/data/erase/EraseType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEraseNmeByType(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const-string p0, "select_erasure"

    goto :goto_0

    :cond_0
    const-string p0, "pixel_eraser"

    goto :goto_0

    :cond_1
    const-string p0, "stroke_erasure"

    :goto_0
    return-object p0
.end method
