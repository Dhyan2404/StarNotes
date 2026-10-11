.class public final Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->loadFromLocal()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$b;->e:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$b;->e:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->access$createDefaultFont(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$b;->e:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->getFontList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->reset(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$b;->e:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/InkFontLoadedEvent;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/event/InkFontLoadedEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$b;->a(Ljava/util/List;)V

    return-void
.end method
