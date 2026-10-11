.class public final Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->t(Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/base/utils/Benchmark;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/utils/Benchmark;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$n;->e:Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->Companion:Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$Companion;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$Companion;->access$getScaleToDisplayTimeHistogram(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$Companion;)Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$n;->e:Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->duration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;->addTimeIf(J)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$n;->a(Ljava/util/List;)V

    return-void
.end method
