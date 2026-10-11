.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRGestureConvertAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRGestureConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,230:1\n1#2:231\n766#3:232\n857#3,2:233\n766#3:235\n857#3,2:236\n766#3:238\n857#3,2:239\n533#3,6:241\n*S KotlinDebug\n*F\n+ 1 HWRGestureConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction\n*L\n102#1:232\n102#1:233,2\n170#1:235\n170#1:236,2\n171#1:238\n171#1:239,2\n175#1:241,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 ,2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001,B\u0017\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010\"\u001a\u00020\u001f\u00a2\u0006\u0004\u0008*\u0010+J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u000c\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u0014\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u0004H\u0002J\u000c\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J.\u0010\u0011\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00100\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\"\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0018\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0008\u0010\u001b\u001a\u00020\u0019H\u0002J\u0010\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u000fH\u0002J\u0010\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u000fH\u0002R\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u001a\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020$0#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;",
        "r",
        "u",
        "candidate",
        "m",
        "n",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualPageBoxInfo",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "",
        "s",
        "shapes",
        "",
        "addToCmdStack",
        "q",
        "boxInfo",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "pointList",
        "",
        "w",
        "v",
        "shape",
        "p",
        "o",
        "Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;",
        "convertContext",
        "",
        "",
        "i",
        "[Ljava/lang/String;",
        "supportTypes",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;)V",
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
        "SMAP\nHWRGestureConvertAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRGestureConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,230:1\n1#2:231\n766#3:232\n857#3,2:233\n766#3:235\n857#3,2:236\n766#3:238\n857#3,2:239\n533#3,6:241\n*S KotlinDebug\n*F\n+ 1 HWRGestureConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction\n*L\n102#1:232\n102#1:233,2\n170#1:235\n170#1:236,2\n171#1:238\n171#1:239,2\n175#1:241,6\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MIN_SCRIBBLE_ERASE_POINTS:I = 0x14

.field public static final MIN_SCRIBBLE_ERASE_TIME:J = 0x1f4L

.field public static final j:Z


# instance fields
.field public final h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "convertContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    const-string p1, "scribble"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->i:[Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$apply(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->m(Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$deleteShapes(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->q(Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getConvertContext$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    return-object p0
.end method

.method public static final synthetic access$getSupportType(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->r()Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$hitTestShapes(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lkotlin/Pair;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->s(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onFail(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->u()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeConvertContext(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->v()V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->t(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    return p0
.end method

.method public static final t(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->p(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$create$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$create$2;

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$create$3;

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$create$3;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)V

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$create$4;

    invoke-direct {v4, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$create$4;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)V

    invoke-static {v0, v2, v3, v4}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$d;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/HWRLogUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRLogUtils;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convert gesture type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getGestureType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/utils/HWRLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getGestureType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "scribble"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->u()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getTouchPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->u()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getTouchPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->visibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$a;

    invoke-direct {v3, v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$a;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)V

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$b;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$b;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string v2, "doOnNext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$3;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$4;

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$4;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)V

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$5;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$5;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$6;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$6;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)V

    invoke-static {v1, v2, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 4

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getPointDownSystemTime()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getCreatedAt()Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$canEraseByTime$1;

    invoke-direct {v2, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$canEraseByTime$1;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElseNull(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$canEraseByTime$2;

    invoke-direct {v2, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$canEraseByTime$2;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    const-wide/16 v2, 0x1f4

    add-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final p(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isPenShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isHwrTextShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isUniversalShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final q(Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$e;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$f;

    invoke-direct {v0, p0, p2}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;Z)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$g;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$h;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r()Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getCandidates()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->i:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getGestureType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$getSupportType$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$getSupportType$2;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    return-object p0
.end method

.method public final s(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lkotlin/Pair;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v9, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-direct {v9}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>()V

    invoke-virtual {v9}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->setSelectionType(I)V

    invoke-virtual {v9}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object v2

    iget-object v3, v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getTouchPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->getSelectionPointsByType(Lcom/onyx/android/sdk/base/data/TouchPointList;)Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteNormalizeMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/geometry/algorithm/ConvexHullAlgorithm;->INSTANCE:Lcom/onyx/android/sdk/geometry/algorithm/ConvexHullAlgorithm;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/geometry/algorithm/ConvexHullAlgorithm;->findConvexHull(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPointList;

    sget-object v12, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    const/4 v14, 0x0

    new-instance v15, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$hitTestShapes$hitTestPoints$1$1;

    invoke-direct {v15, v13}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$hitTestShapes$hitTestPoints$1$1;-><init>(Ljava/util/List;)V

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->resample$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>(Ljava/util/List;)V

    const/high16 v5, 0x41200000    # 10.0f

    new-instance v12, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v12

    move-object v3, v9

    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;-><init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/base/data/TouchPointList;FIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-direct {v2, v3, v9, v4, v11}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->setVirtualBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->setSelectionType(I)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->setHitTestsHelper(Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/bfh;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/bfh;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->setShapePredicate(Lio/reactivex/rxjava3/functions/Predicate;)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->getSelectedShapes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v6}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPointList;->first()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_1
    iget-object v7, v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getTouchPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TouchPointList;->first()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :cond_2
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v10

    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0, v6}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->o(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v10

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, v5

    :goto_3
    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v10

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v6, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v4

    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPointList;->first()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_4

    :cond_8
    move-object v4, v5

    :goto_4
    iget-object v6, v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getTouchPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPointList;->first()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_5

    :cond_9
    move-object v6, v5

    :goto_5
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v5, v3

    :cond_a
    check-cast v5, Lcom/onyx/android/sdk/note/common/shape/Shape;

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v5, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_b
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v5, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final u()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->trampolineMainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getTouchPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->removeConvertContext(J)Z

    return-void
.end method

.method public final w(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;)V
    .locals 7

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDrawingArgs()Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-direct {v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->createFreeShape(Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->ensureShapeUniqueId()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->clone()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->addPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setPageUniqueId(Ljava/lang/String;)V

    new-instance p2, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-direct {p2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;-><init>()V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setTransformShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setUseAddTransformedMethod(Z)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setForceUpdateOnQuit(Z)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>()V

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
