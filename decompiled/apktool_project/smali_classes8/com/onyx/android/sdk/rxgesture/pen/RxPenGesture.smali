.class public final Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0018\u0000 =2\u00020\u0001:\u0001=B\u0007\u00a2\u0006\u0004\u0008;\u0010<J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007J\u0016\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nJ\u0006\u0010\u000f\u001a\u00020\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002R \u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00120\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001d\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u001d0%8\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R*\u0010:\u001a\u00020\n2\u0006\u00103\u001a\u00020\n8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109\u00a8\u0006>"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;",
        "",
        "",
        "resetPenStatus",
        "Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;",
        "status",
        "postEvent",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "data",
        "onTouchEvent",
        "",
        "x",
        "y",
        "",
        "isInLimitRect",
        "dispose",
        "a",
        "",
        "Lcom/onyx/android/sdk/rxgesture/pen/PenReader;",
        "Ljava/util/Map;",
        "readerMap",
        "Landroid/graphics/Rect;",
        "b",
        "Landroid/graphics/Rect;",
        "getLimitRect",
        "()Landroid/graphics/Rect;",
        "setLimitRect",
        "(Landroid/graphics/Rect;)V",
        "limitRect",
        "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;",
        "c",
        "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;",
        "getPenStatusBean",
        "()Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;",
        "setPenStatusBean",
        "(Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;)V",
        "penStatusBean",
        "Lcom/onyx/android/sdk/base/rx/ObservableHolder;",
        "d",
        "Lcom/onyx/android/sdk/base/rx/ObservableHolder;",
        "getObservableHolder",
        "()Lcom/onyx/android/sdk/base/rx/ObservableHolder;",
        "observableHolder",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "e",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getDownPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "setDownPoint",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "downPoint",
        "reader",
        "f",
        "I",
        "getActiveReader",
        "()I",
        "setActiveReader",
        "(I)V",
        "activeReader",
        "<init>",
        "()V",
        "Companion",
        "sdk-rxgesture_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DOWN_READER_TYPE:I = 0x1

.field public static final INIT_READER_TYPE:I = 0x0

.field public static final LONG_PRESSURE_MOVE_LIMIT_DISTANCE:I = 0x6

.field public static final LONG_PRESS_LIMIT_TIME_MS:J = 0x1f4L

.field public static final LONG_PRESS_READER_TYPE:I = 0x4

.field public static final MOVE_PAUSE_LIMIT_DISTANCE:I = 0x2

.field public static final MOVE_PAUSE_LIMIT_TIME_MS:J = 0x190L

.field public static final MOVE_READER_TYPE:I = 0x2

.field public static final UP_READER_TYPE:I = 0x3

.field public static final g:I


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/onyx/android/sdk/rxgesture/pen/PenReader;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/onyx/android/sdk/base/rx/ObservableHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/ObservableHolder<",
            "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->Companion:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture$Companion;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->a:Ljava/util/Map;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->b:Landroid/graphics/Rect;

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->c:Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    new-instance v0, Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->d:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/16 v10, 0x7f

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->e:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->a()V

    return-void
.end method

.method public static final synthetic access$getLONG_PRESS_LIMIT_DISTANCE$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->g:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->a:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/rxgesture/pen/PenInitReader;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenInitReader;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->a:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/rxgesture/pen/PenDownReader;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenDownReader;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->a:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/rxgesture/pen/PenLongPressReader;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenLongPressReader;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->a:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->a:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/rxgesture/pen/PenUpReader;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenUpReader;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final dispose()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->d:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->dispose()V

    return-void
.end method

.method public final getActiveReader()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->f:I

    return p0
.end method

.method public final getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->e:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getLimitRect()Landroid/graphics/Rect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->b:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getObservableHolder()Lcom/onyx/android/sdk/base/rx/ObservableHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/rx/ObservableHolder<",
            "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->d:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    return-object p0
.end method

.method public final getPenStatusBean()Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->c:Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    return-object p0
.end method

.method public final isInLimitRect(II)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public final onTouchEvent(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->a:Ljava/util/Map;

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->onTouchEvent(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    :cond_0
    return-void
.end method

.method public final postEvent()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->d:Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->c:Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->copy()Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->onNext(Ljava/lang/Object;)Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    return-void
.end method

.method public final postEvent(Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->c:Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->setPenStatus(Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;)V

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->postEvent()V

    return-void
.end method

.method public final resetPenStatus()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->c:Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    return-void
.end method

.method public final setActiveReader(I)V
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->f:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->onDeactivate()V

    :cond_1
    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->f:I

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->onActivate()V

    :cond_2
    return-void
.end method

.method public final setDownPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->e:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setLimitRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->b:Landroid/graphics/Rect;

    return-void
.end method

.method public final setPenStatusBean(Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->c:Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    return-void
.end method
