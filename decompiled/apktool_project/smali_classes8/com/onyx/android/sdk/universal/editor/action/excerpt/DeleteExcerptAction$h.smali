.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptAction$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptAction;->l()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest;Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptAction$h;->e:Lcom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptAction$h;->f:Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptAction$h;->e:Lcom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest;->getResultMap()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    const-string v0, "<get-entries>(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/data/excerpt/DeleteExcerptResult;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptAction$h;->f:Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptAction;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;-><init>(Lcom/onyx/android/sdk/note/common/data/excerpt/DeleteExcerptResult;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptAction;->access$setResultEvent$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptAction;Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptAction$h;->a(Lcom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest;)V

    return-void
.end method
