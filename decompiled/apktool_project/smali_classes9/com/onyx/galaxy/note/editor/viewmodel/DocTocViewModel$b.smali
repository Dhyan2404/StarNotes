.class public final Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;->loadTocData()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel$b;->e:Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel$b;->e:Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;->getTocData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel$b;->a(Lcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method
