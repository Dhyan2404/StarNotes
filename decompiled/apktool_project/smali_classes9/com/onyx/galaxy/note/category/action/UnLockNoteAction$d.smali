.class public final Lcom/onyx/galaxy/note/category/action/UnLockNoteAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/UnLockNoteAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/UnLockNoteAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/UnLockNoteAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/UnLockNoteAction$d;->e:Lcom/onyx/galaxy/note/category/action/UnLockNoteAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;
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
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/UnLockNoteAction$d;->e:Lcom/onyx/galaxy/note/category/action/UnLockNoteAction;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/action/UnLockNoteAction;->access$getActivityContext$p(Lcom/onyx/galaxy/note/category/action/UnLockNoteAction;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/UnLockNoteAction$d;->e:Lcom/onyx/galaxy/note/category/action/UnLockNoteAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/UnLockNoteAction;->access$getNoteIds$p(Lcom/onyx/galaxy/note/category/action/UnLockNoteAction;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/UnLockNoteAction$d;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
