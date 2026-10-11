.class public final Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$create$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$create$2;->e:Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$create$2;->e:Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$create$2;->e:Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->access$getNoteCreateInfo$p(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$create$2$1;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$create$2;->e:Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$create$2$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$create$2;->a(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
