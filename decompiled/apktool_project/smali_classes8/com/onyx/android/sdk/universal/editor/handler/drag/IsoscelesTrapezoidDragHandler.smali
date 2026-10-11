.class public final Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTrapezoidDragHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ&\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0016R%\u0010\r\u001a\u00020\t*\u0008\u0012\u0004\u0012\u00020\u00030\u00028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\n\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTrapezoidDragHandler;",
        "Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandler;",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "selectionPoints",
        "startPoint",
        "stopPoint",
        "",
        "onDrag",
        "",
        "a",
        "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;",
        "(Ljava/util/List;)Z",
        "isHypotSidesCrossed",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic b:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference2Impl;

    const-string v2, "isHypotSidesCrossed"

    const-string v3, "isHypotSidesCrossed(Ljava/util/List;)Z"

    const-class v4, Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTrapezoidDragHandler;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference2Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property2(Lkotlin/jvm/internal/PropertyReference2;)Lkotlin/reflect/KProperty2;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTrapezoidDragHandler;->b:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTrapezoidDragHandler$a;->a:Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTrapezoidDragHandler$a;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTrapezoidDragHandler;->a:Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTrapezoidDragHandler;->a:Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTrapezoidDragHandler;->b:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0, p1, v0}, Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public onDrag(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")V"
        }
    .end annotation

    const-string v0, "selectionPoints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stopPoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    sub-float/2addr p3, p2

    const/4 p2, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p3, v1, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p3, v1, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTrapezoidDragHandler;->a(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    neg-float p3, v1

    invoke-virtual {p0, p3, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p3, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v5, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v5, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    goto/16 :goto_0

    :pswitch_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p2, v1, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p2, v1, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTrapezoidDragHandler;->a(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    neg-float p2, v1

    invoke-virtual {p0, p2, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p2, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    goto/16 :goto_0

    :pswitch_3
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v5, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v5, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    goto/16 :goto_0

    :pswitch_4
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    neg-float v3, v1

    invoke-virtual {v0, v3, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTrapezoidDragHandler;->a(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    neg-float p2, p3

    invoke-virtual {p0, v3, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v1, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    goto/16 :goto_0

    :pswitch_5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    neg-float v3, v1

    invoke-virtual {v0, v3, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTrapezoidDragHandler;->a(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    neg-float p3, p3

    invoke-virtual {p0, v3, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v1, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    goto :goto_0

    :pswitch_6
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p2, v1, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    neg-float v0, v1

    invoke-virtual {p2, v0, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTrapezoidDragHandler;->a(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    neg-float p2, p3

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v1, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    goto :goto_0

    :pswitch_7
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p2, v1, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    neg-float v0, v1

    invoke-virtual {p2, v0, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTrapezoidDragHandler;->a(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    neg-float p2, p3

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v1, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
