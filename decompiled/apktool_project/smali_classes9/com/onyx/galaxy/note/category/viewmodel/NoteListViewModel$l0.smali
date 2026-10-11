.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->D()Lio/reactivex/rxjava3/core/Observable;
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
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/data/FilterInfo;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$l0;->e:Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)Z
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$l0;->e:Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$l0;->a(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)Z

    move-result p0

    return p0
.end method
