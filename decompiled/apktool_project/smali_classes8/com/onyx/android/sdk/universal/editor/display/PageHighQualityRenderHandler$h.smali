.class public final Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$h;->e:Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$h;->c(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;)V

    return-void
.end method

.method public static final c(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;)V
    .locals 1

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;->e()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$h;->b(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;)V

    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$h;->e:Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;

    const-string v1, "displayFilter, onNext"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$h;->e:Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->renderRequestManager()Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$h;->e:Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->access$getPENDING_RENDER_TASK_MAX_COUNT$p(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->cancelLimitPendingRequestList(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$h;->e:Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->access$displayBoxImpl(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/jsk;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/jsk;-><init>(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$a;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doOnComplete(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
