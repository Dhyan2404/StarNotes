.class public final Lcom/onyx/galaxy/note/datarepository/constants/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/datarepository/constants/Constants;",
        "",
        "()V",
        "DOWNLOAD_STATUS_ADDED",
        "",
        "DOWNLOAD_STATUS_COMPLETED",
        "DOWNLOAD_STATUS_ERROR",
        "DOWNLOAD_STATUS_IN_PROGRESS",
        "DOWNLOAD_STATUS_UNSTART",
        "RESOURCE_TYPE_STICKER",
        "",
        "RESOURCE_TYPE_TEMPLATE",
        "TEMPLATE_TYPE_COVER",
        "TEMPLATE_TYPE_NOTE",
        "TEMPLATE_TYPE_PAPER",
        "note_overseasRelease"
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
.field public static final DOWNLOAD_STATUS_ADDED:I = 0x3

.field public static final DOWNLOAD_STATUS_COMPLETED:I = 0x2

.field public static final DOWNLOAD_STATUS_ERROR:I = -0x1

.field public static final DOWNLOAD_STATUS_IN_PROGRESS:I = 0x1

.field public static final DOWNLOAD_STATUS_UNSTART:I = 0x0

.field public static final INSTANCE:Lcom/onyx/galaxy/note/datarepository/constants/Constants;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RESOURCE_TYPE_STICKER:Ljava/lang/String; = "STICKER"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RESOURCE_TYPE_TEMPLATE:Ljava/lang/String; = "TEMPLATE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TEMPLATE_TYPE_COVER:I = 0x3

.field public static final TEMPLATE_TYPE_NOTE:I = 0x1

.field public static final TEMPLATE_TYPE_PAPER:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/constants/Constants;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/datarepository/constants/Constants;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/datarepository/constants/Constants;->INSTANCE:Lcom/onyx/galaxy/note/datarepository/constants/Constants;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
