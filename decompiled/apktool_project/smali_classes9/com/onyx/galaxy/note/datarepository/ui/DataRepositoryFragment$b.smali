.class public final synthetic Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->v0(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$b;->e:Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$b;->e:Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->access$createComplete(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$b;->a(Ljava/util/List;)V

    return-void
.end method
