.class final Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt$appendPage$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt$appendPage$2;->invoke(Ljava/lang/Integer;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "workBundle",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
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


# instance fields
.field final synthetic $curViewInfo:Ljava/lang/String;

.field final synthetic $it:Ljava/lang/Integer;

.field final synthetic $pageIndex:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt$appendPage$2$1;->$pageIndex:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt$appendPage$2$1;->$it:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt$appendPage$2$1;->$curViewInfo:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt$appendPage$2$1;->invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->collectVirtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt$appendPage$2$1;->$pageIndex:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 4
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, v1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/Object;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appendPage failIndex:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt$appendPage$2$1;->$it:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", correctIndex:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt$appendPage$2$1;->$pageIndex:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt$appendPage$2$1;->$curViewInfo:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
