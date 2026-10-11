.class public final Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeShaderManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeShaderManager.kt\ncom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1#2:63\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J.\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0007J\u0008\u0010\u000c\u001a\u00020\u000bH\u0007J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0004H\u0002R\'\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;",
        "",
        "",
        "color",
        "",
        "fixedHeight",
        "",
        "tapeFillStyle",
        "scale",
        "Lcom/onyx/android/sdk/note/common/data/shape/BitmapShaderReference;",
        "getTapeFillShader",
        "",
        "clear",
        "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillShaderBitmapCreator;",
        "creator",
        "fixScale",
        "a",
        "Landroid/util/LruCache;",
        "Lkotlin/Lazy;",
        "b",
        "()Landroid/util/LruCache;",
        "bitmapShaderLruCache",
        "<init>",
        "()V",
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShapeShaderManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeShaderManager.kt\ncom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1#2:63\n*E\n"
    }
.end annotation


# static fields
.field public static final CACHE_MAX_COUNT:I = 0x14

.field public static final Companion:Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;->Companion:Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager$bitmapShaderLruCache$2;->INSTANCE:Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager$bitmapShaderLruCache$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic getTapeFillShader$default(Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;IFLjava/lang/String;FILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/shape/BitmapShaderReference;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const-string p3, ""

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/high16 p4, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;->getTapeFillShader(IFLjava/lang/String;F)Lcom/onyx/android/sdk/note/common/data/shape/BitmapShaderReference;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillShaderBitmapCreator;F)Lcom/onyx/android/sdk/note/common/data/shape/BitmapShaderReference;
    .locals 2

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillShaderBitmapCreator;->loadBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance p0, Landroid/graphics/Matrix;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillShaderBitmapCreator;->getShaderMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v0, p0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/shape/BitmapShaderReference;

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/note/common/data/shape/BitmapShaderReference;-><init>(Landroid/graphics/Shader;)V

    return-object p0
.end method

.method public final b()Landroid/util/LruCache;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/note/common/data/shape/BitmapShaderReference;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LruCache;

    return-object p0
.end method

.method public final clear()V
    .locals 0
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;->b()Landroid/util/LruCache;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public final getTapeFillShader(IFLjava/lang/String;F)Lcom/onyx/android/sdk/note/common/data/shape/BitmapShaderReference;
    .locals 5
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "tapeFillStyle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->Companion:Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle$Companion;

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle$Companion;->fromName(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    move-result-object p3

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap;->Companion:Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$Companion;

    new-instance v1, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, p3, v4, v2, v3}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;-><init>(Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$Companion;->createFrom(Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;)Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillShaderBitmapCreator;

    move-result-object v0

    invoke-interface {v0, p1, p4}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillShaderBitmapCreator;->init(IF)V

    cmpl-float v1, p2, v4

    if-lez v1, :cond_0

    invoke-interface {v0, p2}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillShaderBitmapCreator;->setHeight(F)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-float/2addr p2, p4

    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;->b()Landroid/util/LruCache;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/note/common/data/shape/BitmapShaderReference;

    if-nez p2, :cond_1

    invoke-virtual {p0, v0, p4}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;->a(Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillShaderBitmapCreator;F)Lcom/onyx/android/sdk/note/common/data/shape/BitmapShaderReference;

    move-result-object p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;->b()Landroid/util/LruCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p2
.end method
