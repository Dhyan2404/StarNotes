.class public final Lcom/onyx/android/sdk/universal/editor/data/ExcerptConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/ExcerptConstants;",
        "",
        "()V",
        "ARGS_DOC_ID",
        "",
        "ARGS_SOURCE_EXCERPT_INDICATOR_ANCHOR_RECT",
        "ARGS_SOURCE_EXCERPT_QUOTE",
        "ARGS_SOURCE_SHAPE_ID",
        "ARGS_SOURCE_SHAPE_RECT",
        "ARGS_SOURCE_TYPE",
        "SOURCE_TYPE_EXCERPT",
        "",
        "SOURCE_TYPE_EXTERNAL_IMAGE",
        "SOURCE_TYPE_IMAGE",
        "SOURCE_TYPE_QUOTE",
        "sdk-universal_overseasRelease"
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
.field public static final ARGS_DOC_ID:Ljava/lang/String; = "doc_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_SOURCE_EXCERPT_INDICATOR_ANCHOR_RECT:Ljava/lang/String; = "source_excerpt_indicator_anchor_rect"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_SOURCE_EXCERPT_QUOTE:Ljava/lang/String; = "source_excerpt_quote"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_SOURCE_SHAPE_ID:Ljava/lang/String; = "source_shape_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_SOURCE_SHAPE_RECT:Ljava/lang/String; = "source_shape_rect"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARGS_SOURCE_TYPE:Ljava/lang/String; = "source_type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/ExcerptConstants;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOURCE_TYPE_EXCERPT:I = 0x1

.field public static final SOURCE_TYPE_EXTERNAL_IMAGE:I = 0x0

.field public static final SOURCE_TYPE_IMAGE:I = 0x2

.field public static final SOURCE_TYPE_QUOTE:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/ExcerptConstants;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/data/ExcerptConstants;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/ExcerptConstants;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/ExcerptConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
