.class final Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->getOrCreate(Ljava/lang/String;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Unit;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u0001\"\u0008\u0008\u0000\u0010\u0003*\u00020\u0002\"\u0008\u0008\u0001\u0010\u0004*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "MODEL",
        "RESOURCE",
        "it",
        "",
        "invoke",
        "(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/Observable;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic $model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMODE",
            "L;"
        }
    .end annotation
.end field

.field final synthetic $resource:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "TRESOURCE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/android/sdk/data/utils/ObjectLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/data/utils/ObjectLruCache<",
            "TMODE",
            "L;",
            "TRESOURCE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/utils/ObjectLruCache<",
            "TMODE",
            "L;",
            "TRESOURCE;>;TMODE",
            "L;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "TRESOURCE;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$3;->this$0:Lcom/onyx/android/sdk/data/utils/ObjectLruCache;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$3;->$model:Ljava/lang/Object;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$3;->$resource:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$3;->$key:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$3;->this$0:Lcom/onyx/android/sdk/data/utils/ObjectLruCache;

    iget-object v0, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$3;->$model:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->decode(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$3$1;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$3;->$resource:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$3$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$3$2;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$3;->this$0:Lcom/onyx/android/sdk/data/utils/ObjectLruCache;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$3;->$key:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$3$2;-><init>(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$3;->invoke(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
