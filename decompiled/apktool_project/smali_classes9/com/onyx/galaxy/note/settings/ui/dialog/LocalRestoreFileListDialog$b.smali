.class public final Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->F0()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$b;->e:Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$b;->e:Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->access$setList$p(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$b;->e:Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;

    invoke-static {p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->access$getAdapter$p(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;)Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$b;->e:Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->access$getList$p(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$b;->a(Ljava/util/List;)V

    return-void
.end method
