.class public final Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->i()V
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
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$b;->e:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Ljava/lang/Boolean;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;->Companion:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getPageNameList()Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$b;->e:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList$Companion;->contains(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$b;->e:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getPageIndex()I

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getPageNameList()Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList$Companion;->getSize(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$b;->a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
