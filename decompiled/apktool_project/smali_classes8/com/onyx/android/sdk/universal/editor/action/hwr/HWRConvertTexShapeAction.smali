.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001e2\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u001eB=\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0012\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0014\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00020\u0004H\u0002J\"\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0002H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R \u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;",
        "l",
        "hwrTextBlocks",
        "m",
        "",
        "h",
        "Ljava/lang/String;",
        "pageId",
        "",
        "i",
        "I",
        "layerId",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "j",
        "Ljava/util/List;",
        "hwrBlockOutputs",
        "",
        "k",
        "F",
        "minFontSize",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;ILjava/util/List;F)V",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:F = 4.0f


# instance fields
.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:I

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;ILjava/util/List;F)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;>;F)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hwrBlockOutputs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;->h:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;->i:I

    .line 5
    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;->j:Ljava/util/List;

    .line 6
    iput p5, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;->k:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;ILjava/util/List;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;ILjava/util/List;F)V

    return-void
.end method

.method public static final synthetic access$convertTextBlocks(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convertTextShape(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;->m(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHwrBlockOutputs$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;->j:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getLayerId$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;->i:I

    return p0
.end method

.method public static final synthetic access$getMinFontSize$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;)F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;->k:F

    return p0
.end method

.method public static final synthetic access$getPageId$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;->h:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->getHwrBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getHwrObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$convertTextShape$1;

    invoke-direct {v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$convertTextShape$1;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createNoteObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
