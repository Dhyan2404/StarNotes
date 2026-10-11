.class public final Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->r()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisplayRenderSliceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayRenderSliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$renderPage$4\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,345:1\n1#2:346\n1747#3,3:347\n*S KotlinDebug\n*F\n+ 1 DisplayRenderSliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$renderPage$4\n*L\n279#1:347,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDisplayRenderSliceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayRenderSliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$renderPage$4\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,345:1\n1#2:346\n1747#3,3:347\n*S KotlinDebug\n*F\n+ 1 DisplayRenderSliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$renderPage$4\n*L\n279#1:347,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;->f:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)Ljava/lang/Boolean;
    .locals 5
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->access$getRenderRequestManager(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;)Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;->f:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->removePageRenderRequestInfo(Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;->f:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getRenderingSliceList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;->f:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getOutputSliceList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;->IN_CACHE:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->updateSliceListState(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->access$getSliceStateManager(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;)Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->saveBitmapListToCache(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;->f:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->isAbort()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAbort, inputSliceList = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outputList = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;->g:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->access$log(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveBitmapListResult fail, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;->getDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->access$logW(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->access$updateRenderSuccessSliceInfo(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Ljava/util/List;)V

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inputSize = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", outputSize = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", failAndCancelSize = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;->g:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq v2, p1, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->access$logW(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->access$log(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Ljava/lang/String;)V

    :goto_0
    check-cast v0, Ljava/lang/Iterable;

    instance-of p0, v0, Ljava/util/Collection;

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    move-object p0, v0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isContentNote()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    :cond_5
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$f;->a(Lkotlin/Unit;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
