.class public final Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;->n(Ljava/util/Collection;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;->getIndexedPageIds()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction$e;->a(Ljava/util/Set;)V

    return-void
.end method
