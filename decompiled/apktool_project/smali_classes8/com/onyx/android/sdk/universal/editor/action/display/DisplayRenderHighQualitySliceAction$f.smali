.class public final Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;->s()Lio/reactivex/rxjava3/core/Observable;
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
    value = "SMAP\nDisplayRenderHighQualitySliceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayRenderHighQualitySliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$renderPage$4\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,290:1\n1#2:291\n1747#3,3:292\n*S KotlinDebug\n*F\n+ 1 DisplayRenderHighQualitySliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$renderPage$4\n*L\n225#1:292,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDisplayRenderHighQualitySliceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayRenderHighQualitySliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$renderPage$4\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,290:1\n1#2:291\n1747#3,3:292\n*S KotlinDebug\n*F\n+ 1 DisplayRenderHighQualitySliceAction.kt\ncom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$renderPage$4\n*L\n225#1:292,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->f:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)Ljava/lang/Boolean;
    .locals 7
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;->access$getRenderRequestManager(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;)Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->f:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderRequestManager;->removePageRenderRequestInfo(Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->f:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->isAbort()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;->access$isPinchZooming(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    const-string v2, ", "

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAbort, isPinchZooming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;->access$isPinchZooming(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;->access$log(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->f:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getRenderingSliceList()Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->f:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getOutputSliceList()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;->IN_CACHE:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->updateSliceListState(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;)V

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;

    invoke-static {v4}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;->access$getSliceStateManager(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;)Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/universal/editor/display/SliceStateManager;->saveBitmapListToCache(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveBitmapListResult fail, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;->getDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;->access$logW(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;

    invoke-static {v4, v3}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;->access$updateRenderSuccessSliceInfo(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;Ljava/util/List;)V

    move-object v4, p1

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inputSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", outputSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", failAndCancelSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->g:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq v4, p1, :cond_4

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;->access$logW(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;->access$log(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction;Ljava/lang/String;)V

    :goto_2
    check-cast v3, Ljava/lang/Iterable;

    instance-of p0, v3, Ljava/util/Collection;

    if-eqz p0, :cond_6

    move-object p0, v3

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isContentNote()Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderHighQualitySliceAction$f;->a(Lkotlin/Unit;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
