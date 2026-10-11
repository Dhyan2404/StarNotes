.class public final Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$h;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$h;->e:Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$h;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$h;->g:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$h;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$h;->e:Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$h;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$h;->g:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$h;->h:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->access$updateLinkPageIndexObservable(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$h;->a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
