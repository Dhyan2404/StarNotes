.class public final Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static closedOtherTab(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;Ljava/util/List;)V
    .locals 1
    .param p0    # Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "closedTabs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener$DefaultImpls;->closedOtherTab(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;Ljava/util/List;)V

    return-void
.end method

.method public static onCloseTab(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 1
    .param p0    # Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "prepareOpenTab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener$DefaultImpls;->onCloseTab(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    return-void
.end method
