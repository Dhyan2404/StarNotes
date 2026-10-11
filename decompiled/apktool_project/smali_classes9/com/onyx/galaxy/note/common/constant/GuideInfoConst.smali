.class public final Lcom/onyx/galaxy/note/common/constant/GuideInfoConst;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/constant/GuideInfoConst;",
        "",
        "()V",
        "GUIDE_CONTENT_STYLE_01",
        "",
        "GUIDE_CONTENT_STYLE_02",
        "GUIDE_CONTENT_STYLE_03",
        "GUIDE_CONTENT_TIME_DELAY",
        "",
        "GUIDE_FUN_DRAG_TOOL",
        "",
        "GUIDE_FUN_EXCERPT",
        "GUIDE_FUN_MAGNIFIER",
        "GUIDE_FUN_OPEN_TWO_NOTES",
        "GUIDE_FUN_PAGE_WHITE_SPACE",
        "GUIDE_VERSION",
        "KEY_HAS_SHOW_REGISTER_GUIDE",
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
.field public static final GUIDE_CONTENT_STYLE_01:I = 0x1

.field public static final GUIDE_CONTENT_STYLE_02:I = 0x2

.field public static final GUIDE_CONTENT_STYLE_03:I = 0x3

.field public static final GUIDE_CONTENT_TIME_DELAY:J = 0x1f4L

.field public static final GUIDE_FUN_DRAG_TOOL:Ljava/lang/String; = "guide_drag_tool"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GUIDE_FUN_EXCERPT:Ljava/lang/String; = "guide_excerpt"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GUIDE_FUN_MAGNIFIER:Ljava/lang/String; = "guide_magnifier"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GUIDE_FUN_OPEN_TWO_NOTES:Ljava/lang/String; = "guide_open_two_notes"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GUIDE_FUN_PAGE_WHITE_SPACE:Ljava/lang/String; = "guide_page_white_space"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GUIDE_VERSION:I = 0x0

.field public static final INSTANCE:Lcom/onyx/galaxy/note/common/constant/GuideInfoConst;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_HAS_SHOW_REGISTER_GUIDE:Ljava/lang/String; = "HAS_SHOW_REGISTER_GUIDE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/common/constant/GuideInfoConst;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/constant/GuideInfoConst;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/common/constant/GuideInfoConst;->INSTANCE:Lcom/onyx/galaxy/note/common/constant/GuideInfoConst;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
