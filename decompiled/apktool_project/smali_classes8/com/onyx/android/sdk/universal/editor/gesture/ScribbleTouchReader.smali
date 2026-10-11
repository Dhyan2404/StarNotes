.class public final Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion;,
        Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScribbleTouchReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScribbleTouchReader.kt\ncom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,216:1\n1#2:217\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 :2\u00020\u0001:\u0001:B\u0011\u0012\u0008\u0008\u0002\u0010,\u001a\u00020\u0006\u00a2\u0006\u0004\u00089\u0010+J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cJ\u000e\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\tJ\u000e\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0006J\u001a\u0010\u0016\u001a\u00020\u000e2\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u0017J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0008\u0010 \u001a\u00020\u000eH\u0002J\u0010\u0010!\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\tH\u0002J\u0010\u0010\"\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\tH\u0002J\u0010\u0010#\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010&\u001a\u00020\u000eH\u0002R\"\u0010,\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001a\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\t0-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010.R\u0018\u00102\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u00101R\"\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u00103R\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u00105R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u00106R\u0018\u00108\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u00107\u00a8\u0006;"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;",
        "",
        "Landroid/view/View;",
        "v",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouchEvent",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "getObservable",
        "isAcceptEvent",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "setEditorBundle",
        "touchData",
        "onTouchData",
        "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
        "touchMode",
        "updateTouchMode",
        "stylusOnly",
        "setEventFilter",
        "Lkotlin/Function1;",
        "filter",
        "i",
        "",
        "action",
        "a",
        "",
        "groupId",
        "f",
        "h",
        "c",
        "b",
        "e",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "d",
        "g",
        "Z",
        "getEnableEstimation",
        "()Z",
        "setEnableEstimation",
        "(Z)V",
        "enableEstimation",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "publisher",
        "Lcom/onyx/android/sdk/prediction/IEstimate;",
        "Lcom/onyx/android/sdk/prediction/IEstimate;",
        "estimateHolder",
        "Lkotlin/jvm/functions/Function1;",
        "eventFilter",
        "J",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "lastTouchData",
        "<init>",
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
        "SMAP\nScribbleTouchReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScribbleTouchReader.kt\ncom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,216:1\n1#2:217\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INVALID_GROUP_ID:J

.field public static final h:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Z

.field public final b:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/prediction/IEstimate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:J

.field public f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/geometry/data/TouchData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->Companion:Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion$ALL_EVENT_FILTER$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion$ALL_EVENT_FILTER$1;

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->h:Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion$STYLUS_EVENT_FILTER$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion$STYLUS_EVENT_FILTER$1;

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->i:Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion$FINGER_EVENT_FILTER$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion$FINGER_EVENT_FILTER$1;

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->j:Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion$DISABLE_EVENT_FILTER$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion$DISABLE_EVENT_FILTER$1;

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->k:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->a:Z

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p1

    const-string v0, "create(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 4
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->i:Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;-><init>(Z)V

    return-void
.end method

.method public static final synthetic access$getALL_EVENT_FILTER$cp()Lkotlin/jvm/functions/Function1;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->h:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getDISABLE_EVENT_FILTER$cp()Lkotlin/jvm/functions/Function1;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->k:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getFINGER_EVENT_FILTER$cp()Lkotlin/jvm/functions/Function1;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->j:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getSTYLUS_EVENT_FILTER$cp()Lkotlin/jvm/functions/Function1;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->i:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->g:Lcom/onyx/android/sdk/geometry/data/TouchData;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->isFingerToolType()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->isTouchDone()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    const p1, 0x3dd70a3e    # 0.105000004f

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setPressure(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    const p1, 0x3f333333    # 0.7f

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setPressure(F)V

    :goto_0
    return-void
.end method

.method public final c(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->b(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getPressure()F

    move-result p1

    const v0, 0x3a83126f    # 0.001f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setPressure(F)V

    return-void
.end method

.method public final d(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->c:Lcom/onyx/android/sdk/prediction/IEstimate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/prediction/IEstimate;->estimate(Landroid/view/MotionEvent;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public final e(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->c:Lcom/onyx/android/sdk/prediction/IEstimate;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/prediction/EstimateManager;->INSTANCE:Lcom/onyx/android/sdk/prediction/EstimateManager;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/prediction/EstimateManager;->createEstimate(Landroid/content/Context;)Lcom/onyx/android/sdk/prediction/IEstimate;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->c:Lcom/onyx/android/sdk/prediction/IEstimate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/prediction/IEstimate;->init(Landroid/view/View;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final f(J)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "groupId is invalid, down missing?"

    invoke-virtual {v0, p0, p2, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->c:Lcom/onyx/android/sdk/prediction/IEstimate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/android/sdk/prediction/IEstimate;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final getEnableEstimation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->a:Z

    return p0
.end method

.method public final getObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0
.end method

.method public final h()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->e:J

    return-void
.end method

.method public final i(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/geometry/data/TouchData;
    .locals 10

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->d(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iget-wide v1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->e:J

    sget-object v3, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->normalizeTouchAction(Landroid/view/MotionEvent;)I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v3, 0x1

    if-eq v7, v3, :cond_3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v7, v3, :cond_0

    const/4 v0, 0x3

    if-eq v7, v0, :cond_3

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->f(J)V

    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->e:J

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_2
    move-object v5, v4

    :goto_0
    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/geometry/extension/MotionEventKt;->toTouchData$default(Landroid/view/MotionEvent;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;IILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v7, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->a(ILandroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->g()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->h()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/geometry/extension/MotionEventKt;->toTouchData$default(Landroid/view/MotionEvent;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;IILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->e:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/geometry/extension/MotionEventKt;->toTouchData$default(Landroid/view/MotionEvent;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;IILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v1, v2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->setGroupId(J)V

    :goto_2
    if-eqz v4, :cond_6

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->c(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getRulerTransformHandler()Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, p1, v4}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;->processTouchData(Landroid/view/MotionEvent;Lcom/onyx/android/sdk/geometry/data/TouchData;)Lcom/onyx/android/sdk/geometry/data/TouchData;

    :cond_6
    iput-object v4, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->g:Lcom/onyx/android/sdk/geometry/data/TouchData;

    return-object v4
.end method

.method public final isAcceptEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final onTouchData(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->isAcceptEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->e(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->i(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->onTouchData(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setEnableEstimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->a:Z

    return-void
.end method

.method public final setEventFilter(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setEventFilter(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->i:Lkotlin/jvm/functions/Function1;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->h:Lkotlin/jvm/functions/Function1;

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->setEventFilter(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final updateTouchMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->k:Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->h:Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->i:Lkotlin/jvm/functions/Function1;

    :goto_0
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method
