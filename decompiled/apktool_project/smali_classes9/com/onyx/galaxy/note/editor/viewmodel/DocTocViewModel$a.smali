.class public final synthetic Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;->loadTocData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel$a;->e:Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/Tree;)Lcom/onyx/android/sdk/base/data/Tree;
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
            ">;)",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel$a;->e:Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;->access$filterBySearch(Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;Lcom/onyx/android/sdk/base/data/Tree;)Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel$a;->a(Lcom/onyx/android/sdk/base/data/Tree;)Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object p0

    return-object p0
.end method
