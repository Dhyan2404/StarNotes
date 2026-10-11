.class public final Lcom/onyx/android/sdk/base/extension/RetryWithDelay$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/base/extension/RetryWithDelay;->apply(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/base/extension/RetryWithDelay;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/extension/RetryWithDelay;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/base/extension/RetryWithDelay$a;->e:Lcom/onyx/android/sdk/base/extension/RetryWithDelay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/base/extension/RetryWithDelay$a;->e:Lcom/onyx/android/sdk/base/extension/RetryWithDelay;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RetryWithDelay;->access$getRetryCount$p(Lcom/onyx/android/sdk/base/extension/RetryWithDelay;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RetryWithDelay;->access$setRetryCount$p(Lcom/onyx/android/sdk/base/extension/RetryWithDelay;I)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RetryWithDelay;->access$getRetryCount$p(Lcom/onyx/android/sdk/base/extension/RetryWithDelay;)I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/base/extension/RetryWithDelay$a;->e:Lcom/onyx/android/sdk/base/extension/RetryWithDelay;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/RetryWithDelay;->access$getMaxRetries$p(Lcom/onyx/android/sdk/base/extension/RetryWithDelay;)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/base/extension/RetryWithDelay$a;->e:Lcom/onyx/android/sdk/base/extension/RetryWithDelay;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RetryWithDelay;->access$getRetryDelayMillis$p(Lcom/onyx/android/sdk/base/extension/RetryWithDelay;)I

    move-result p0

    int-to-long p0, p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lio/reactivex/rxjava3/core/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/extension/RetryWithDelay$a;->a(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
