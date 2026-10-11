.class public abstract Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;
.super Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseEraseHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseEraseHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,299:1\n1855#2,2:300\n766#2:303\n857#2,2:304\n1855#2,2:306\n1#3:302\n*S KotlinDebug\n*F\n+ 1 BaseEraseHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction\n*L\n135#1:300,2\n208#1:303\n208#1:304,2\n209#1:306,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000 I2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001IB\u0017\u0012\u0006\u0010D\u001a\u00020C\u0012\u0006\u0010F\u001a\u00020E\u00a2\u0006\u0004\u0008G\u0010HJ\u001a\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001a\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u0016\u0010\u000c\u001a\u00020\u00082\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0012\u0010\u000e\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0002J\u0016\u0010\u0011\u001a\u00020\n2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0002H\u0002J\u0016\u0010\u0013\u001a\u00020\n2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0008H\u0002J\u0014\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0006\u0010\u0014\u001a\u00020\u0008H\u0002J\u0008\u0010\u0018\u001a\u00020\u0017H\u0002J\u000e\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0014J\u0016\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00052\u0006\u0010\u001a\u001a\u00020\u0008H&J\u0016\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00052\u0006\u0010\u001a\u001a\u00020\u0008H&J\u001e\u0010$\u001a\u00020#2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020!J\u001c\u0010%\u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001d2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u0010\u0010&\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0003H\u0014J\u0010\u0010\'\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0003H\u0014J\u0010\u0010(\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0003H\u0014J\u0006\u0010*\u001a\u00020)J\u000e\u0010-\u001a\u00020\n2\u0006\u0010,\u001a\u00020+J\u0006\u0010.\u001a\u00020\u0008J\u0014\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00052\u0006\u0010\u0014\u001a\u00020\u0008J\u000e\u00102\u001a\u00020\n2\u0006\u00101\u001a\u000200J\u0016\u00107\u001a\u0002062\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u00020\u001dJ\u0012\u00108\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0006\u0010\u0014\u001a\u00020\u0008J\u0006\u00109\u001a\u00020\nR\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\"\u0010B\u001a\u000e\u0012\u0004\u0012\u00020?\u0012\u0004\u0012\u00020\u00080>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010A\u00a8\u0006J"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;",
        "",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "dataList",
        "Lio/reactivex/rxjava3/core/Observable;",
        "B",
        "r",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
        "s",
        "",
        "z",
        "v",
        "touchData",
        "A",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "changedShapeBeans",
        "o",
        "changedShapeBeanList",
        "y",
        "eraseContext",
        "x",
        "u",
        "",
        "t",
        "create",
        "downToUpEraseContext",
        "erasing",
        "endErase",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "pointList",
        "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;",
        "noteDrawingArgs",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;",
        "createEraseArgs",
        "collectErasePoint",
        "onTouchDown",
        "onTouchMove",
        "onTouchUp",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "createRenderContext",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;",
        "event",
        "startErasing",
        "createEraseContext",
        "endEraseImpl",
        "",
        "msg",
        "log",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "boxInfo",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "loadNotePage",
        "display",
        "onCancelErase",
        "",
        "k",
        "Ljava/lang/Object;",
        "quitEvent",
        "",
        "",
        "l",
        "Ljava/util/Map;",
        "downToUpEraseContextMap",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;",
        "touchReader",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V",
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
        "SMAP\nBaseEraseHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseEraseHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,299:1\n1855#2,2:300\n766#2:303\n857#2,2:304\n1855#2,2:306\n1#3:302\n*S KotlinDebug\n*F\n+ 1 BaseEraseHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction\n*L\n135#1:300,2\n208#1:303\n208#1:304,2\n209#1:306,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:I = 0x5


# instance fields
.field public k:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchReader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->l:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$addCommand(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->o(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$erasing(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->r(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$erasingIf(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->s(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$filterByFingerGesture(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->t()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$forceRenderTrackRectIfNeed(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->u(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onError(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$postEraseResultEvent(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->x(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V

    return-void
.end method

.method public static final synthetic access$postFlushEvent(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->y(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$quitIfNeed(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->z()V

    return-void
.end method

.method public static final synthetic access$tryEndErasing(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->B(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->w(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->q(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V

    return-void
.end method

.method public static synthetic n(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->p(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final p(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final q(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eraseContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getErasingDataList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->A(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public static final w(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    return-object p0
.end method


# virtual methods
.method public final A(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getGroupId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDownToUpEraseContext, groupId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getGroupId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", removeSuccess = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", retainSize = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->l:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final B(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->isTouchDone(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->r(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final collectErasePoint(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "virtualBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->normalizeTouchPoints(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;)Lcom/onyx/android/sdk/base/data/TouchPointList;

    return-object v0
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->subscribeTouchData()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->touchBuffer$default(Lio/reactivex/rxjava3/core/Observable;JILio/reactivex/rxjava3/core/Scheduler;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "filter(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$create$3;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$create$3;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$create$4;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$create$4;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$create$5;

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$create$5;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V

    invoke-static {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final createEraseArgs(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;)Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "virtualBoxInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pointList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "noteDrawingArgs"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteNormalizeMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMinScale(Landroid/graphics/Matrix;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->setNormalizeScale(F)Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;

    move-result-object p0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getEraserWidth()F

    move-result p1

    const/4 p3, 0x2

    int-to-float p3, p3

    div-float/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->setDrawRadius(F)Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->setPartEraseTrackPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;

    move-result-object p0

    return-object p0
.end method

.method public final createEraseContext()Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserElementsOnlyOption()Lcom/onyx/android/sdk/data/utils/JSONListOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->setOnlyEraseShapeTypes(Ljava/util/Set;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserAllContainsSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->setEraseAllContains(Z)V

    return-object p0
.end method

.method public final createRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    return-object p0
.end method

.method public final display(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "eraseContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getEraseRect()Landroid/graphics/RectF;

    move-result-object v0

    const-string v1, "just(...)"

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->resetEraseRect()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getChangedPageSet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->findIntersectsVisibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$display$1;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$display$1;-><init>(Ljava/util/List;)V

    new-instance v3, Lcom/sunia/HTREnginev2/fn;

    invoke-direct {v3, v1}, Lcom/sunia/HTREnginev2/fn;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p1, v3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$d;

    invoke-direct {v2, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$d;-><init>(Landroid/graphics/RectF;Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "concatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$e;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$f;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    :goto_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public abstract endErase(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;
    .param p1    # Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final endEraseImpl(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "eraseContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getChangedShapeBeans()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$g;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$h;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$i;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$j;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$j;-><init>(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/gn;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/gn;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doFinally(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public abstract erasing(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;
    .param p1    # Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final loadNotePage(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "noteBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "boxInfo"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->ensureNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p0

    return-object p0
.end method

.method public final log(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getCommandManager()Lcom/onyx/android/sdk/note/common/command/CommandManager;

    move-result-object v0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    new-instance v2, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-direct {v2}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;-><init>()V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->addChangedShapeBean(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->addCommand(Lcom/onyx/android/sdk/note/common/command/Command;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/note/common/event/CommandEvent;

    invoke-direct {v3, v1}, Lcom/onyx/android/sdk/note/common/event/CommandEvent;-><init>(Lcom/onyx/android/sdk/note/common/command/Command;)V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/NoteBundle;->postEvent(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final onCancelErase()V
    .locals 8

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->isEraseComplete()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->isErasing()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->setEraseState(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->endErase(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$u;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$u;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnNext(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_3
    :goto_0
    return-void
.end method

.method public onTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "touchData"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTouchMove(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "touchData"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTouchUp(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "touchData"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final r(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$m;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$n;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$n;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$o;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$o;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$p;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$p;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$q;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$q;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$r;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$r;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$s;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$s;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "map(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final s(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->isTouchDone(Ljava/util/List;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->v(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getDownToUpDataList()Ljava/util/List;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->isErasing()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getErasingBufferDataList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getErasingBufferDataList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->detachErasingBufferDataList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->setErasingDataList(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->setEraseState(I)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->erasing(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$t;

    invoke-direct {p1, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$t;-><init>(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final startErasing(Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;->getQuitEvent()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->k:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;->getTouchData()Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object p1

    const-string v0, "startErasing, performTouchDown"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->performTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public final t()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$filterByFingerGesture$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$filterByFingerGesture$1;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->filterByFingerGesture(Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final u(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getChangedPageSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getDownToUpDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getDownToUpDataList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->hitTestVisibleBoxObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$forceRenderTrackRectIfNeed$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$forceRenderTrackRectIfNeed$1;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$forceRenderTrackRectIfNeed$2;

    invoke-direct {v2, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$forceRenderTrackRectIfNeed$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Ljava/util/List;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->hasTouchDown(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downToUpEraseContextMap.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clear, maybe missing undo command"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->logW(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->l:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getGroupId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$getDownToUpEraseContext$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$getDownToUpEraseContext$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V

    new-instance p0, Lcom/sunia/HTREnginev2/en;

    invoke-direct {p0, v1}, Lcom/sunia/HTREnginev2/en;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "computeIfAbsent(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    return-object p0
.end method

.method public final x(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getChangedRemovedShapes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getHitTestShapeTypes()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getDownToUpDataList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getDownToUpDataList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->getTouchDoneData(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->isSingleTapUp(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/TouchData;)Z

    move-result p0

    invoke-direct {v1, v2, v3, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;-><init>(Ljava/util/List;Ljava/util/Set;Z)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final y(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->Companion:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext$Companion;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext$Companion;->getAddedShapeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/NoteBundle;->postAddShapeEvent(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext$Companion;->getRemovedShapes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/NoteBundle;->postRemoveShapeEvent(Ljava/util/List;)V

    return-void
.end method

.method public final z()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->k:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->k:Ljava/lang/Object;

    return-void
.end method
