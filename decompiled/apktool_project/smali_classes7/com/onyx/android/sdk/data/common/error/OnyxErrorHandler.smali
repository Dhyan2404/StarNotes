.class public final Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0006JB\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00052\u0018\u0008\u0002\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u00172\u0018\u0008\u0002\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000e0\u0004j\u0002`\u0019J*\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000b0\u0004J\u0010\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0006H\u0002JG\u0010\u001d\u001a\u00070\u001e\u00a2\u0006\u0002\u0008\u001f*\u0006\u0012\u0002\u0008\u00030 2\u0018\u0008\u0002\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u00172\u0018\u0008\u0002\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000e0\u0004j\u0002`\u0019J#\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H#0\"\"\u0008\u0008\u0000\u0010#*\u00020\u0001*\u0008\u0012\u0004\u0012\u0002H#0\"H\u0086\u0008J\n\u0010$\u001a\u00020\u0005*\u00020\u0005J\n\u0010%\u001a\u00020\u000b*\u00020\u0005J\u001a\u0010&\u001a\u00020\u001e\"\u0008\u0008\u0000\u0010#*\u00020\u0001*\u0008\u0012\u0004\u0012\u0002H#0\"JS\u0010\'\u001a\u00070\u001e\u00a2\u0006\u0002\u0008\u001f\"\u0008\u0008\u0000\u0010#*\u00020\u0001*\u0008\u0012\u0004\u0012\u0002H#0\"2\u0018\u0008\u0002\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u00172\u0018\u0008\u0002\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000e0\u0004j\u0002`\u0019J$\u0010(\u001a\u00020\u0006*\u00020\u00052\u0018\u0008\u0002\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0017R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;",
        "",
        "()V",
        "DefaultErrorTransformer",
        "Lkotlin/Function1;",
        "",
        "Lcom/onyx/android/sdk/base/common/error/OnyxException;",
        "ignorableTypes",
        "",
        "",
        "assert",
        "",
        "assertion",
        "Lkotlin/Function0;",
        "",
        "message",
        "errorCodeToMessage",
        "",
        "code",
        "errorTypeToMessage",
        "e",
        "handle",
        "transformer",
        "Lcom/onyx/android/sdk/data/common/error/ErrorTransformer;",
        "preHandler",
        "Lcom/onyx/android/sdk/data/common/error/ErrorHandler;",
        "handleOnErrorCode",
        "handleFunc",
        "handleOnyxException",
        "executeWithErrorHandler",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "handleTimeoutError",
        "Lio/reactivex/rxjava3/core/Observable;",
        "T",
        "mergeTimeoutError",
        "showTimeoutMessage",
        "subscribeSilently",
        "subscribeWithErrorHandler",
        "transform",
        "sdk-data_release"
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
.field private static final DefaultErrorTransformer:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lcom/onyx/android/sdk/base/common/error/OnyxException;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ignorableTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    const-string v1, "None"

    const-string v2, "Undefined"

    const-string v3, "Action Abort"

    const-string v4, "Object Can Not Be Null"

    const-string v5, "Not Allowed On Main Thread"

    const-string v6, "Timeout"

    const-string v7, "Data Format Error"

    const-string v8, "Resource Not Found"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->ignorableTypes:Ljava/util/List;

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$DefaultErrorTransformer$1;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$DefaultErrorTransformer$1;

    sput-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->DefaultErrorTransformer:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic assert$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "Condition Not Matched"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->assert(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic executeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->DefaultErrorTransformer:Lkotlin/jvm/functions/Function1;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p3, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$executeWithErrorHandler$1;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$executeWithErrorHandler$1;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->executeWithErrorHandler(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic handle$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->DefaultErrorTransformer:Lkotlin/jvm/functions/Function1;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    sget-object p3, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$handle$1;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$handle$1;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->handle(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method private final handleOnyxException(Lcom/onyx/android/sdk/base/common/error/OnyxException;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->errorTypeToMessage(Lcom/onyx/android/sdk/base/common/error/OnyxException;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->DefaultErrorTransformer:Lkotlin/jvm/functions/Function1;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p3, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$subscribeWithErrorHandler$1;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$subscribeWithErrorHandler$1;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic transform$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/common/error/OnyxException;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->DefaultErrorTransformer:Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->transform(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final assert(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p0, "assertion"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "message"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string p1, "Condition Not Matched"

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
.end method

.method public final errorCodeToMessage(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    const/4 p0, -0x1

    goto/16 :goto_0

    :pswitch_0
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_104_002:I

    goto/16 :goto_0

    :pswitch_1
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_104_001:I

    goto/16 :goto_0

    :pswitch_2
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_040:I

    goto/16 :goto_0

    :pswitch_3
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_039:I

    goto/16 :goto_0

    :pswitch_4
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_038:I

    goto/16 :goto_0

    :pswitch_5
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_029:I

    goto/16 :goto_0

    :pswitch_6
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_028:I

    goto/16 :goto_0

    :pswitch_7
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_027:I

    goto/16 :goto_0

    :pswitch_8
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_026:I

    goto/16 :goto_0

    :pswitch_9
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_025:I

    goto/16 :goto_0

    :pswitch_a
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_024:I

    goto :goto_0

    :pswitch_b
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_023:I

    goto :goto_0

    :pswitch_c
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_020:I

    goto :goto_0

    :pswitch_d
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_019:I

    goto :goto_0

    :pswitch_e
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_018:I

    goto :goto_0

    :pswitch_f
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_017:I

    goto :goto_0

    :pswitch_10
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_016:I

    goto :goto_0

    :pswitch_11
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_015:I

    goto :goto_0

    :pswitch_12
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_014:I

    goto :goto_0

    :pswitch_13
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_013:I

    goto :goto_0

    :pswitch_14
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_012:I

    goto :goto_0

    :pswitch_15
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_011:I

    goto :goto_0

    :pswitch_16
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_010:I

    goto :goto_0

    :pswitch_17
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_009:I

    goto :goto_0

    :pswitch_18
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_008:I

    goto :goto_0

    :pswitch_19
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_007:I

    goto :goto_0

    :pswitch_1a
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_006:I

    goto :goto_0

    :pswitch_1b
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_005:I

    goto :goto_0

    :pswitch_1c
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_004:I

    goto :goto_0

    :pswitch_1d
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_003:I

    goto :goto_0

    :pswitch_1e
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_002:I

    goto :goto_0

    :pswitch_1f
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_001:I

    goto :goto_0

    :sswitch_0
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_105_001:I

    goto :goto_0

    :sswitch_1
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_100:I

    goto :goto_0

    :sswitch_2
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_102_033:I

    goto :goto_0

    :sswitch_3
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_code_100_001:I

    :goto_0
    return p0

    :sswitch_data_0
    .sparse-switch
        0x186a1 -> :sswitch_3
        0x18e91 -> :sswitch_2
        0x18ed4 -> :sswitch_1
        0x19a29 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x18e71
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18e87
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x18e96
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x19641
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final errorTypeToMessage(Lcom/onyx/android/sdk/base/common/error/OnyxException;)I
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/common/error/OnyxException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "Bitmap Too Large"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget p0, Lcom/onyx/android/sdk/data/R$string;->bitmap_too_large:I

    goto :goto_1

    :sswitch_1
    const-string v1, "Request Fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :sswitch_2
    const-string p0, "Resource Not Found"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_status_404:I

    goto :goto_1

    :sswitch_3
    const-string p0, "Unauthorized"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_status_401:I

    goto :goto_1

    :sswitch_4
    const-string p0, "Data Format Error"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_data_format_error:I

    goto :goto_1

    :sswitch_5
    const-string p0, "Timeout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    sget p0, Lcom/onyx/android/sdk/data/R$string;->http_timeout:I

    goto :goto_1

    :sswitch_6
    const-string p0, "Network Check Fail"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    sget p0, Lcom/onyx/android/sdk/data/R$string;->network_bad:I

    goto :goto_1

    :sswitch_7
    const-string v1, "Verify Fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->errorCodeToMessage(I)I

    move-result p0

    goto :goto_1

    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0

    :sswitch_data_0
    .sparse-switch
        -0x1443419b -> :sswitch_7
        0x4848c8 -> :sswitch_6
        0x14e7e541 -> :sswitch_5
        0x25109135 -> :sswitch_4
        0x2ecdad14 -> :sswitch_3
        0x30b34643 -> :sswitch_2
        0x53ecde4f -> :sswitch_1
        0x5c515b9e -> :sswitch_0
    .end sparse-switch
.end method

.method public final executeWithErrorHandler(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/rx/RxBaseAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
            "*>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/onyx/android/sdk/base/common/error/OnyxException;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/base/common/error/OnyxException;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/reactivex/rxjava3/disposables/Disposable;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public final handle(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/onyx/android/sdk/base/common/error/OnyxException;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/base/common/error/OnyxException;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->transform(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    return p3

    :cond_0
    sget-object p2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->ignorableTypes:Ljava/util/List;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-class v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return p3

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException;->getIgnorable()Z

    move-result p2

    if-eqz p2, :cond_2

    return p3

    :cond_2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->handleOnyxException(Lcom/onyx/android/sdk/base/common/error/OnyxException;)Z

    move-result p0

    return p0
.end method

.method public final handleOnErrorCode(Ljava/lang/Throwable;ILkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/base/common/error/OnyxException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p0, "e"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "handleFunc"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/onyx/android/sdk/base/common/error/OnyxException;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/common/error/OnyxException;->getCode()I

    move-result p0

    if-ne p0, p2, :cond_0

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final handleTimeoutError(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/core/Observable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$handleTimeoutError$1;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$handleTimeoutError$1;

    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnError(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final mergeTimeoutError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Ljava/util/concurrent/TimeoutException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/net/UnknownHostException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const/16 p1, 0x65

    const-string v0, "Timeout"

    invoke-virtual {p0, v0, v0, p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;Ljava/lang/String;I)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException;->setIgnorable(Z)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    return-object p0
.end method

.method public final showTimeoutMessage(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->mergeTimeoutError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/common/error/OnyxException;->getType()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string p0, "Timeout"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/android/sdk/data/R$string;->http_timeout:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    :cond_2
    return-void
.end method

.method public final subscribeSilently(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 7
    .param p1    # Lio/reactivex/rxjava3/core/Observable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/disposables/Disposable;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    sget-object v4, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$subscribeSilently$1;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$subscribeSilently$1;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public final subscribeWithErrorHandler(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/Observable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/onyx/android/sdk/base/common/error/OnyxException;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/base/common/error/OnyxException;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/reactivex/rxjava3/disposables/Disposable;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "transformer"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "preHandler"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/Functions;->emptyConsumer()Lio/reactivex/rxjava3/functions/Consumer;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$subscribeWithErrorHandler$2;

    invoke-direct {v0, p2, p3}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler$subscribeWithErrorHandler$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    const-string p1, "subscribe(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final transform(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/common/error/OnyxException;
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/onyx/android/sdk/base/common/error/OnyxException;",
            ">;)",
            "Lcom/onyx/android/sdk/base/common/error/OnyxException;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "transformer"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;

    return-object p0
.end method
