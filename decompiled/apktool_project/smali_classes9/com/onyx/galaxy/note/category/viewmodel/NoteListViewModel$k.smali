.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->y()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/data/FilterInfo;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/galaxy/note/category/data/FilterInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$k;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$k;->f:Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$k;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$k;->f:Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->access$getNoteCBArgsByFilterInfo(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/galaxy/note/category/data/FilterInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$k;->a(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
