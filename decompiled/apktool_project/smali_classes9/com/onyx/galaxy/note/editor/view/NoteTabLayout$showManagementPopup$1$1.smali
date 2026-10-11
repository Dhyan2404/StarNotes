.class public final Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->showManagementPopup(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteTabLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTabLayout.kt\ncom/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,422:1\n1#2:423\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0005H\u0016J\u001a\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1",
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;",
        "onCloseLastTab",
        "",
        "closedTab",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        "onCloseOtherTab",
        "onCloseTab",
        "tab",
        "onSelectedChanged",
        "oldTab",
        "newTab",
        "onTabVisibilityChanged",
        "visibility",
        "",
        "onToggleTabVisibility",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteTabLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTabLayout.kt\ncom/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,422:1\n1#2:423\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

.field public final synthetic b:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1;->a:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1;->b:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closedOtherTab(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener$DefaultImpls;->closedOtherTab(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;Ljava/util/List;)V

    return-void
.end method

.method public onCloseLastTab(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1;->a:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->closeTab(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    :cond_0
    return-void
.end method

.method public onCloseOtherTab()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1;->a:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$closeOtherTab(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)V

    return-void
.end method

.method public onCloseTab(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1;->a:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->closeTab(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    .line 3
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1;->b:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1;->a:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->submitList(Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1;->b:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1;->a:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->setSelectedItem(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    return-void
.end method

.method public onCloseTab(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener$DefaultImpls;->onCloseTab(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    return-void
.end method

.method public onSelectedChanged(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "newTab"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1;->a:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {p0, p2}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$onItemSelected(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    return-void
.end method

.method public onTabVisibilityChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1;->a:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$getTabListener$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;->onTabVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public onToggleTabVisibility()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1;->a:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$getTabListener$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;->onToggleTabVisibility()V

    :cond_0
    return-void
.end method
