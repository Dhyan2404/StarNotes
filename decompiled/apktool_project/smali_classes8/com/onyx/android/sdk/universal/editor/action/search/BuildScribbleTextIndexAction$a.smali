.class public final Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;->l()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;

.field public final synthetic f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$a;->f:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$a;->f:Ljava/util/Set;

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;->saveToDatabase(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Collection;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$a;->a(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;)V

    return-void
.end method
