.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText;->commitTitleEdit()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText$c;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText$c;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/onyx/galaxy/note/editor/action/doc/UpdateNoteDocTitleAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText$c;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText$c;->f:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Lcom/onyx/galaxy/note/editor/action/doc/UpdateNoteDocTitleAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText$c;->a(Z)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
