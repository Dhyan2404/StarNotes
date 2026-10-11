.class public final Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->r(Ljava/util/List;Ljava/util/List;)V
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


# instance fields
.field public final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2;->f:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "indexedPageIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2$1;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2;->f:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2;->e:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;Ljava/util/List;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ifNotEmpty(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2;->e:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2;->a(Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
