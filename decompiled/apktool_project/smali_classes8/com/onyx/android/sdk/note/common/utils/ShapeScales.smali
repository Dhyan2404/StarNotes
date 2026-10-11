.class public final Lcom/onyx/android/sdk/note/common/utils/ShapeScales;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0012\u0010\u0007\u001a\u00020\u0008*\u00020\t2\u0006\u0010\n\u001a\u00020\u0004\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/ShapeScales;",
        "",
        "()V",
        "getShapeWidthExtraScale",
        "",
        "shapeType",
        "",
        "scaleShapeCreateArgsDisplayScale",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "scale",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeScales;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/ShapeScales;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeScales;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeScales;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeScales;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShapeWidthExtraScale(I)F
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_4

    const/4 p0, 0x5

    if-eq p1, p0, :cond_4

    const/16 p0, 0x1f

    if-eq p1, p0, :cond_3

    const/16 p0, 0x28

    if-eq p1, p0, :cond_2

    const/16 p0, 0x31

    if-eq p1, p0, :cond_4

    const/16 p0, 0x15

    if-eq p1, p0, :cond_4

    const/16 p0, 0x16

    if-eq p1, p0, :cond_1

    const/16 p0, 0x2e

    if-eq p1, p0, :cond_0

    const/16 p0, 0x2f

    if-eq p1, p0, :cond_4

    sget-object p0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string p1, "FLOAT_ONE"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenConstant;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/pen/PenConstant;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenConstant;->getCHARCOAL_STROKE_WIDTH_EXTRA_SCALE()F

    move-result p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenConstant;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/pen/PenConstant;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenConstant;->getCHARCOAL_STROKE_WIDTH_EXTRA_SCALE()F

    move-result p0

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenConstant;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/pen/PenConstant;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenConstant;->getUNIVERSAL_SHAPE_WIDTH_EXTRA_SCALE()F

    move-result p0

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenConstant;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/pen/PenConstant;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenConstant;->getNORMAL_STROKE_WIDTH_EXTRA_SCALE()F

    move-result p0

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenConstant;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/pen/PenConstant;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenConstant;->getBRUSH_STROKE_WIDTH_EXTRA_SCALE()F

    move-result p0

    :goto_0
    return p0
.end method

.method public final scaleShapeCreateArgsDisplayScale(Lcom/onyx/android/sdk/note/common/shape/Shape;F)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getDisplayScale()F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getDisplayScale()F

    move-result p1

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->setDisplayScale(F)V

    :cond_0
    return-void
.end method
