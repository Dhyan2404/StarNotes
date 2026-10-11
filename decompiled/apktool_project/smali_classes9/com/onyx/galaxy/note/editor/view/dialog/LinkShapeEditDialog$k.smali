.class public final Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->C(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$k;->e:Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$k;->f:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$k;->g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$k;->e:Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->access$getShapeLinkBean$p(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "shapeLinkBean"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->setValue(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$k;->f:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$k;->g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->setTitle(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$k;->f:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->setPageIndex(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$k;->a(I)V

    return-void
.end method
