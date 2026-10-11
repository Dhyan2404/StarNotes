.class public final Lcom/onyx/galaxy/note/category/action/MoveNoteAction$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->p(Z)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/MoveNoteAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$j;->e:Lcom/onyx/galaxy/note/category/action/MoveNoteAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/OnMoveNoteEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$j;->e:Lcom/onyx/galaxy/note/category/action/MoveNoteAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->access$getNodes$p(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/event/OnMoveNoteEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$j;->a(Z)V

    return-void
.end method
