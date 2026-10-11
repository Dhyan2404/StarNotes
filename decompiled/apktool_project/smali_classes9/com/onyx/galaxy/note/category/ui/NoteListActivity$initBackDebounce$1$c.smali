.class public final Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initBackDebounce$1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initBackDebounce$1;->onResume(Landroidx/lifecycle/LifecycleOwner;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initBackDebounce$1$c;->e:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/rxjava3/schedulers/Timed;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/schedulers/Timed;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/schedulers/Timed<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initBackDebounce$1$c;->e:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/reactivex/rxjava3/schedulers/Timed;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initBackDebounce$1$c;->a(Lio/reactivex/rxjava3/schedulers/Timed;)V

    return-void
.end method
