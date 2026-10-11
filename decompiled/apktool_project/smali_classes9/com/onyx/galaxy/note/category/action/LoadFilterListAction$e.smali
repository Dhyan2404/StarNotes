.class public final Lcom/onyx/galaxy/note/category/action/LoadFilterListAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction$e;->e:Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction$e;->e:Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;->access$getNoteProvider$p(Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;)Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "noteProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction$e;->e:Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;->access$getNoteExtraProvider$p(Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;)Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "noteExtraProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->fillList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction$e;->a(Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
