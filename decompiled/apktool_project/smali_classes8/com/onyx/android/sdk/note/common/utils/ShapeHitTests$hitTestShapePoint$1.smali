.class final Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests$hitTestShapePoint$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;->hitTestShapePoint(Ljava/util/List;Landroid/graphics/Matrix;FFF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $firstPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests$hitTestShapePoint$1;->$firstPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests$hitTestShapePoint$1;->$firstPoint:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests$hitTestShapePoint$1;->invoke(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method
