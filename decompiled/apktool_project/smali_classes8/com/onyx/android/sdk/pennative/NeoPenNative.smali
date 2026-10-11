.class public final Lcom/onyx/android/sdk/pennative/NeoPenNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0013\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004J\u001b\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0082 J\u0011\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0082 J!\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0082 J+\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0082 J!\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0082 J\u0011\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0006H\u0082 J\u001e\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J(\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00112\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u001e\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u001e\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0006\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pennative/NeoPenNative;",
        "",
        "()V",
        "createPen",
        "",
        "penType",
        "",
        "config",
        "Lcom/onyx/android/sdk/pennative/PenConfig;",
        "destroyPen",
        "",
        "pen",
        "nativeCreatePen",
        "nativeDestroyPen",
        "nativeOnPenDown",
        "Lcom/onyx/android/sdk/pennative/PenInkResult;",
        "point",
        "",
        "repaint",
        "",
        "nativeOnPenMove",
        "prediction",
        "nativeOnPenUp",
        "nativeSetLogLevel",
        "level",
        "onPenDown",
        "pointArray",
        "onPenMove",
        "predictionArray",
        "onPenUp",
        "setLogLevel",
        "sdk-pennative_release"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/pennative/NeoPenNative;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/pennative/NeoPenNative;

    invoke-direct {v0}, Lcom/onyx/android/sdk/pennative/NeoPenNative;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/pennative/NeoPenNative;->INSTANCE:Lcom/onyx/android/sdk/pennative/NeoPenNative;

    const-string v1, "neo_pen"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/NeoPenNative;->setLogLevel(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native nativeCreatePen(ILcom/onyx/android/sdk/pennative/PenConfig;)J
.end method

.method private final native nativeDestroyPen(J)V
.end method

.method private final native nativeOnPenDown(J[DZ)Lcom/onyx/android/sdk/pennative/PenInkResult;
.end method

.method private final native nativeOnPenMove(J[D[DZ)Lcom/onyx/android/sdk/pennative/PenInkResult;
.end method

.method private final native nativeOnPenUp(J[DZ)Lcom/onyx/android/sdk/pennative/PenInkResult;
.end method

.method private final native nativeSetLogLevel(I)V
.end method


# virtual methods
.method public final createPen(ILcom/onyx/android/sdk/pennative/PenConfig;)J
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/pennative/PenConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/pennative/NeoPenNative;->nativeCreatePen(ILcom/onyx/android/sdk/pennative/PenConfig;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final destroyPen(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/pennative/NeoPenNative;->nativeDestroyPen(J)V

    return-void
.end method

.method public final onPenDown(J[DZ)Lcom/onyx/android/sdk/pennative/PenInkResult;
    .locals 1
    .param p3    # [D
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pointArray"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/pennative/NeoPenNative;->nativeOnPenDown(J[DZ)Lcom/onyx/android/sdk/pennative/PenInkResult;

    move-result-object p0

    return-object p0
.end method

.method public final onPenMove(J[D[DZ)Lcom/onyx/android/sdk/pennative/PenInkResult;
    .locals 1
    .param p3    # [D
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [D
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pointArray"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/onyx/android/sdk/pennative/NeoPenNative;->nativeOnPenMove(J[D[DZ)Lcom/onyx/android/sdk/pennative/PenInkResult;

    move-result-object p0

    return-object p0
.end method

.method public final onPenUp(J[DZ)Lcom/onyx/android/sdk/pennative/PenInkResult;
    .locals 1
    .param p3    # [D
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pointArray"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/pennative/NeoPenNative;->nativeOnPenUp(J[DZ)Lcom/onyx/android/sdk/pennative/PenInkResult;

    move-result-object p0

    return-object p0
.end method

.method public final setLogLevel(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/pennative/NeoPenNative;->nativeSetLogLevel(I)V

    return-void
.end method
