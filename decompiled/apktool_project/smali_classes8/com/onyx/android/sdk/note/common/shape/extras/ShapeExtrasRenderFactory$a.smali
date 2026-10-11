.class public final Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory;->create(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory$a;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory$a;->a:Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Landroid/graphics/Matrix;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "canvas"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "universalShape"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "renderMatrix"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getDefaultDashLinePaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender$DefaultImpls;->getDefaultDashLinePaint(Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultSolidLinePaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender$DefaultImpls;->getDefaultSolidLinePaint(Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method
