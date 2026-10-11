.class public final Lcom/onyx/android/sdk/matisse/ImageRequestConst;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/matisse/ImageRequestConst;",
        "",
        "()V",
        "REQUEST_CODE_CUSTOM_COVER",
        "",
        "REQUEST_CODE_CUSTOM_PAPER",
        "REQUEST_CODE_IMPORT_NOTE_FROM_PIC",
        "REQUEST_CODE_INSERT_IMAGE_PAGE",
        "REQUEST_CODE_INSERT_IMAGE_SHAPE",
        "REQUEST_CODE_INSERT_IMAGE_SHAPE_FROM_PARAMS_CONTAINER",
        "REQUEST_CODE_SELECT_AVATAR",
        "sdk-imagepicker_overseasRelease"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/matisse/ImageRequestConst;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REQUEST_CODE_CUSTOM_COVER:I = 0x3ea

.field public static final REQUEST_CODE_CUSTOM_PAPER:I = 0x3e9

.field public static final REQUEST_CODE_IMPORT_NOTE_FROM_PIC:I = 0x3ec

.field public static final REQUEST_CODE_INSERT_IMAGE_PAGE:I = 0x3eb

.field public static final REQUEST_CODE_INSERT_IMAGE_SHAPE:I = 0x3ee

.field public static final REQUEST_CODE_INSERT_IMAGE_SHAPE_FROM_PARAMS_CONTAINER:I = 0x3ef

.field public static final REQUEST_CODE_SELECT_AVATAR:I = 0x3ed


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/matisse/ImageRequestConst;

    invoke-direct {v0}, Lcom/onyx/android/sdk/matisse/ImageRequestConst;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/matisse/ImageRequestConst;->INSTANCE:Lcom/onyx/android/sdk/matisse/ImageRequestConst;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
