.class public final Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->A()V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$g;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "noteModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentDataAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$g;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;->createFrom(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentDataAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$g$a;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$g$a;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$g;->a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
