.class public final Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->s(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemovePageByIdListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemovePageByIdListAction.kt\ncom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePageExcerpts$4\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,210:1\n215#2,2:211\n*S KotlinDebug\n*F\n+ 1 RemovePageByIdListAction.kt\ncom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePageExcerpts$4\n*L\n126#1:211,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRemovePageByIdListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemovePageByIdListAction.kt\ncom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePageExcerpts$4\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,210:1\n215#2,2:211\n*S KotlinDebug\n*F\n+ 1 RemovePageByIdListAction.kt\ncom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePageExcerpts$4\n*L\n126#1:211,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$y;->e:Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest;->getResultMap()Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$y;->e:Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/excerpt/DeleteExcerptResult;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;-><init>(Lcom/onyx/android/sdk/note/common/data/excerpt/DeleteExcerptResult;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$y;->a(Lcom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest;)V

    return-void
.end method
