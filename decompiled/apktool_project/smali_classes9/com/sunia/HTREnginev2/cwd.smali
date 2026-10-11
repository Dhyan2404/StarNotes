.class public final synthetic Lcom/sunia/HTREnginev2/cwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smart/refresh/layout/listener/OnLoadMoreListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cwd;->e:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    return-void
.end method


# virtual methods
.method public final onLoadMore(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cwd;->e:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->t0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    return-void
.end method
