.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->importImages(Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/data/NoteCreateFrom;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/NoteCreateFrom;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$g;->e:Lcom/onyx/android/sdk/data/NoteCreateFrom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$g;->e:Lcom/onyx/android/sdk/data/NoteCreateFrom;

    invoke-virtual {v0, p1, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->importImage(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;Lcom/onyx/android/sdk/data/NoteCreateFrom;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$g;->a(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;)V

    return-void
.end method
