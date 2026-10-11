.class public final Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->p(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lio/reactivex/rxjava3/core/Observable;
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

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$g;->e:Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->Companion:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$Companion;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$Companion;->access$getScrollToDisplayTimeHistogram(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$Companion;)Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$g;->e:Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->duration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;->addTimeIf(J)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$g;->a(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V

    return-void
.end method
