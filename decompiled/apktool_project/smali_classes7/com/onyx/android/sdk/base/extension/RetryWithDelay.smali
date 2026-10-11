.class public final Lcom/onyx/android/sdk/base/extension/RetryWithDelay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function<",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Throwable;",
        ">;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u001a\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001c\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u000b\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0008R\u0016\u0010\r\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/extension/RetryWithDelay;",
        "Lio/reactivex/rxjava3/functions/Function;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "observable",
        "apply",
        "",
        "e",
        "I",
        "maxRetries",
        "f",
        "retryDelayMillis",
        "g",
        "retryCount",
        "<init>",
        "(II)V",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/onyx/android/sdk/base/extension/RetryWithDelay;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/base/extension/RetryWithDelay;->e:I

    iput p2, p0, Lcom/onyx/android/sdk/base/extension/RetryWithDelay;->f:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x3

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/16 p2, 0x1f4

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/base/extension/RetryWithDelay;-><init>(II)V

    return-void
.end method

.method public static final synthetic access$getMaxRetries$p(Lcom/onyx/android/sdk/base/extension/RetryWithDelay;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/extension/RetryWithDelay;->e:I

    return p0
.end method

.method public static final synthetic access$getRetryCount$p(Lcom/onyx/android/sdk/base/extension/RetryWithDelay;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/extension/RetryWithDelay;->g:I

    return p0
.end method

.method public static final synthetic access$getRetryDelayMillis$p(Lcom/onyx/android/sdk/base/extension/RetryWithDelay;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/extension/RetryWithDelay;->f:I

    return p0
.end method

.method public static final synthetic access$setRetryCount$p(Lcom/onyx/android/sdk/base/extension/RetryWithDelay;I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/extension/RetryWithDelay;->g:I

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/Observable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "observable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/base/extension/RetryWithDelay$a;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/base/extension/RetryWithDelay$a;-><init>(Lcom/onyx/android/sdk/base/extension/RetryWithDelay;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/reactivex/rxjava3/core/Observable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/extension/RetryWithDelay;->apply(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
