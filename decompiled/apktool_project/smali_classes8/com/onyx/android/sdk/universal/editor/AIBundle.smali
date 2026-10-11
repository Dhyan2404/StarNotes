.class public final Lcom/onyx/android/sdk/universal/editor/AIBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAIBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AIBundle.kt\ncom/onyx/android/sdk/universal/editor/AIBundle\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,57:1\n41#2,5:58\n41#2,5:63\n41#2,5:68\n*S KotlinDebug\n*F\n+ 1 AIBundle.kt\ncom/onyx/android/sdk/universal/editor/AIBundle\n*L\n40#1:58,5\n47#1:63,5\n55#1:68,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008 \u0010!J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0008\u0010\u000f\u001a\u00020\u000eH\u0002R\u001b\u0010\u0013\u001a\u00020\u000e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR \u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/AIBundle;",
        "",
        "",
        "destroy",
        "",
        "eventTime",
        "",
        "isStrokeConverted",
        "removeConvertContext",
        "abortAndRemoveConvertContext",
        "Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;",
        "convertContext",
        "addConvertContext",
        "containsConvertContext",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "a",
        "Lkotlin/Lazy;",
        "getHwrBundle",
        "()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "hwrBundle",
        "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;",
        "b",
        "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;",
        "getPenStatusBean",
        "()Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;",
        "setPenStatusBean",
        "(Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;)V",
        "penStatusBean",
        "Landroid/util/LruCache;",
        "c",
        "Landroid/util/LruCache;",
        "convertContextCache",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAIBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AIBundle.kt\ncom/onyx/android/sdk/universal/editor/AIBundle\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,57:1\n41#2,5:58\n41#2,5:63\n41#2,5:68\n*S KotlinDebug\n*F\n+ 1 AIBundle.kt\ncom/onyx/android/sdk/universal/editor/AIBundle\n*L\n40#1:58,5\n47#1:63,5\n55#1:68,5\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Long;",
            "Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/AIBundle$hwrBundle$2;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/AIBundle$hwrBundle$2;-><init>(Lcom/onyx/android/sdk/universal/editor/AIBundle;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/AIBundle;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/AIBundle;->b:Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/AIBundle;->c:Landroid/util/LruCache;

    return-void
.end method

.method public static final synthetic access$createHWRBundle(Lcom/onyx/android/sdk/universal/editor/AIBundle;)Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->a()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .locals 3

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->setRecognizerManager(Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;)V

    new-instance v0, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;-><init>(Lorg/greenrobot/eventbus/EventBus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->setEventBusHolder(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->setModel(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "FINGERPRINT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->setFingerprint(Ljava/lang/String;)V

    return-object p0
.end method

.method public final abortAndRemoveConvertContext(J)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/AIBundle;->c:Landroid/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    if-eqz p0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;->IGNORED:Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->setRecognizeState(Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final addConvertContext(JLcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;)V
    .locals 1
    .param p3    # Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "convertContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/AIBundle;->c:Landroid/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final containsConvertContext(J)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/AIBundle;->c:Landroid/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->getHwrBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->destroy()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/AIBundle;->c:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public final getHwrBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/AIBundle;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    return-object p0
.end method

.method public final getPenStatusBean()Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/AIBundle;->b:Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    return-object p0
.end method

.method public final isStrokeConverted(J)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/AIBundle;->c:Landroid/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getRecognizeState()Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;

    move-result-object p0

    sget-object p2, Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;->SUCCESS:Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;

    if-ne p0, p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public final removeConvertContext(J)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/AIBundle;->c:Landroid/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setPenStatusBean(Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/AIBundle;->b:Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    return-void
.end method
