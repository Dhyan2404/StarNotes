.class public final Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;",
        "",
        "",
        "a",
        "I",
        "getSHAPE_REGULAR_POLYGON_SIZE_NUM",
        "()I",
        "setSHAPE_REGULAR_POLYGON_SIZE_NUM",
        "(I)V",
        "SHAPE_REGULAR_POLYGON_SIZE_NUM",
        "b",
        "getSHAPE_REGULAR_HEXAGON_SIZE_NUM",
        "setSHAPE_REGULAR_HEXAGON_SIZE_NUM",
        "SHAPE_REGULAR_HEXAGON_SIZE_NUM",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static a:I

.field public static b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;

    const/4 v0, 0x5

    sput v0, Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;->a:I

    const/4 v0, 0x6

    sput v0, Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSHAPE_REGULAR_HEXAGON_SIZE_NUM()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;->b:I

    return p0
.end method

.method public final getSHAPE_REGULAR_POLYGON_SIZE_NUM()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;->a:I

    return p0
.end method

.method public final setSHAPE_REGULAR_HEXAGON_SIZE_NUM(I)V
    .locals 0

    sput p1, Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;->b:I

    return-void
.end method

.method public final setSHAPE_REGULAR_POLYGON_SIZE_NUM(I)V
    .locals 0

    sput p1, Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;->a:I

    return-void
.end method
