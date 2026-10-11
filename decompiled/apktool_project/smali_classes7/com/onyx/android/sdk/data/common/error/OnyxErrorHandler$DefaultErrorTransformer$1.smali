.class final Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$DefaultErrorTransformer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lcom/onyx/android/sdk/base/common/error/OnyxException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/base/common/error/OnyxException;",
        "e",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$DefaultErrorTransformer$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$DefaultErrorTransformer$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$DefaultErrorTransformer$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$DefaultErrorTransformer$1;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$DefaultErrorTransformer$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/base/common/error/OnyxException;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "e"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :goto_0
    instance-of p0, p1, Lio/reactivex/rxjava3/exceptions/CompositeException;

    if-eqz p0, :cond_0

    .line 3
    check-cast p1, Lio/reactivex/rxjava3/exceptions/CompositeException;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/exceptions/CompositeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string p0, "<get-cause>(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of p0, p1, Lcom/onyx/android/sdk/base/common/error/OnyxException;

    if-eqz p0, :cond_1

    .line 5
    check-cast p1, Lcom/onyx/android/sdk/base/common/error/OnyxException;

    goto :goto_1

    .line 6
    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string v0, "Undefined"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$DefaultErrorTransformer$1;->invoke(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    return-object p0
.end method
