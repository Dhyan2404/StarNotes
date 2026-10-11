.class public final Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction;

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

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getDocFtsProvider(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction;->access$getPageIds$p(Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction;->access$getContentTypes$p(Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->removeAllPageData(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/RemoveTextIndexByPageAction$a;->a(Lkotlin/Unit;)V

    return-void
.end method
