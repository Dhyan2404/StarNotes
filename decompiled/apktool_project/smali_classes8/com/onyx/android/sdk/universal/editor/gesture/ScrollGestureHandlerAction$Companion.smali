.class public final Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u0007\u001a\u00020\u00028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$Companion;",
        "",
        "Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;",
        "scrollToDisplayTimeHistogram$delegate",
        "Lkotlin/Lazy;",
        "a",
        "()Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;",
        "scrollToDisplayTimeHistogram",
        "",
        "DEBUG_LOG",
        "Z",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getScrollToDisplayTimeHistogram(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$Companion;)Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$Companion;->a()Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->access$getScrollToDisplayTimeHistogram$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;

    return-object p0
.end method
