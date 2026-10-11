.class public final Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;->saveToDatabaseObservable(Ljava/util/List;Ljava/util/Collection;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;Ljava/util/List;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$a;->f:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$a;->g:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)V
    .locals 1
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$a;->f:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$a;->g:Ljava/util/Collection;

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;->saveToDatabase(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Collection;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$a;->a(Lkotlin/Unit;)V

    return-void
.end method
