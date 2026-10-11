.class public final Lcom/onyx/android/sdk/note/common/utils/ShapeFillUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/ShapeFillUtils;",
        "",
        "()V",
        "createFillRectF",
        "",
        "Landroid/graphics/RectF;",
        "touchPointList",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeFillUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/ShapeFillUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeFillUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeFillUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeFillUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFillRectF(Lcom/onyx/android/sdk/base/data/TouchPointList;)Ljava/util/List;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "touchPointList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-direct {v4, v5, v3, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method
