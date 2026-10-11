.class public final Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScrollToRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScrollToRequest.kt\ncom/onyx/android/sdk/universal/editor/request/ScrollToRequest\n+ 2 Timing.kt\nkotlin/system/TimingKt\n*L\n1#1,62:1\n17#2,6:63\n*S KotlinDebug\n*F\n+ 1 ScrollToRequest.kt\ncom/onyx/android/sdk/universal/editor/request/ScrollToRequest\n*L\n32#1:63,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u000c\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u000bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u000bR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;",
        "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;",
        "boxManager",
        "g",
        "f",
        "",
        "F",
        "newX",
        "newY",
        "",
        "h",
        "I",
        "source",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "getVirtualDocViewInfo",
        "()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "setVirtualDocViewInfo",
        "(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V",
        "virtualDocViewInfo",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;FFI)V",
        "Companion",
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
        "SMAP\nScrollToRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScrollToRequest.kt\ncom/onyx/android/sdk/universal/editor/request/ScrollToRequest\n+ 2 Timing.kt\nkotlin/system/TimingKt\n*L\n1#1,62:1\n17#2,6:63\n*S KotlinDebug\n*F\n+ 1 ScrollToRequest.kt\ncom/onyx/android/sdk/universal/editor/request/ScrollToRequest\n*L\n32#1:63,6\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final f:F

.field public final g:F

.field public final h:I

.field public i:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->Companion:Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest$Companion;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest$Companion$scrollTimeHistogram$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest$Companion$scrollTimeHistogram$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->j:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;FFI)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    .line 3
    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->f:F

    .line 4
    iput p3, p0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->g:F

    .line 5
    iput p4, p0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->h:I

    .line 6
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->i:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;FFI)V

    return-void
.end method

.method public static final synthetic access$getScrollTimeHistogram$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->j:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getBoxManager()Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->g(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->Companion:Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest$Companion;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest$Companion;->access$getScrollTimeHistogram(Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest$Companion;)Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;->addTimeIf(J)V

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;)V
    .locals 7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->isEnabledContinuousScroll()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->h:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->visibleBoxes()Ljava/util/List;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentBoxId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->scrollTo$default(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;Ljava/lang/String;FFILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final g(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;)V
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->f:F

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->g:F

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->scrollTo(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->f(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->f:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", newY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->g:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->collectVirtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->i:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    return-void
.end method

.method public final getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->i:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    return-object p0
.end method

.method public final setVirtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->i:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    return-void
.end method
