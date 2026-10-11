.class public final Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0006\u0010\u0003\u001a\u00020\u0002R\u001b\u0010\t\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest$Companion;",
        "",
        "",
        "getScrollTimeHistogram",
        "Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;",
        "scrollTimeHistogram$delegate",
        "Lkotlin/Lazy;",
        "a",
        "()Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;",
        "scrollTimeHistogram",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getScrollTimeHistogram(Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest$Companion;)Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest$Companion;->a()Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->access$getScrollTimeHistogram$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;

    return-object p0
.end method

.method public final getScrollTimeHistogram()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest$Companion;->a()Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;->getTimeHistogramIf()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
