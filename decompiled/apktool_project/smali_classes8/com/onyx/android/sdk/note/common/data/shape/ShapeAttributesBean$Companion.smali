.class public final Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;",
        "",
        "()V",
        "buildAttributes",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
        "shape",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildAttributes(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;-><init>()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getLineStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->setLineStyleType(I)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->setColor(I)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->setShapeType(I)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeWidth()F

    move-result v0

    invoke-static {v0}, Lcom/onyx/android/sdk/note/extension/PhysiceExtKt;->toPhysicsStrokeWidth(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->setShapeWidth(F)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getFillColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->setFillColor(I)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->isFillColorEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->setFillColorEnabled(Z)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getRichText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->setRichText(Ljava/lang/String;)V

    return-object p0
.end method
