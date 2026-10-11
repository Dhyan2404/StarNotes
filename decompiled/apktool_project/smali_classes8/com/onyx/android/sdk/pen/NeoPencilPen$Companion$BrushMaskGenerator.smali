.class public final Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BrushMaskGenerator"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u000b\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;",
        "",
        "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;",
        "key",
        "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;",
        "getMaskBitmap",
        "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
        "a",
        "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
        "getConfig",
        "()Lcom/onyx/android/sdk/pen/NeoPenConfig;",
        "config",
        "<init>",
        "(Lcom/onyx/android/sdk/pen/NeoPenConfig;)V",
        "sdk-pen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/pen/NeoPenConfig;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/pen/NeoPenConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;->a:Lcom/onyx/android/sdk/pen/NeoPenConfig;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;->b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;

    return-object p0
.end method


# virtual methods
.method public final getConfig()Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;->a:Lcom/onyx/android/sdk/pen/NeoPenConfig;

    return-object p0
.end method

.method public final getMaskBitmap(Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;)Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/pen/NeoPencilPen;->access$getMaskBitmaps$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, p0, v0}, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;->copy$default(Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;IIILjava/lang/Object;)Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;

    move-result-object p0

    invoke-static {}, Lcom/onyx/android/sdk/pen/NeoPencilPen;->access$getMaskBitmaps$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator$getMaskBitmap$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator$getMaskBitmap$1;-><init>(Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;)V

    new-instance v1, Lcom/sunia/HTREnginev2/ntj;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/ntj;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "computeIfAbsent(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;

    return-object p0
.end method
