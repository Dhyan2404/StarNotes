.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->importDocuments(Landroid/content/Context;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$d;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$d;->f:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

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
            "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$d;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$d;->f:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    invoke-virtual {v0, p1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->convertDocumentsOnline(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$d;->a(Ljava/util/List;)V

    return-void
.end method
