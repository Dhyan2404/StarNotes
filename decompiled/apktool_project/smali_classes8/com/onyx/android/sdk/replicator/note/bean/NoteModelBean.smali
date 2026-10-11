.class public final Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
.super Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u000cJ\u0006\u0010\u001c\u001a\u00020\u000cJ\u0006\u0010\u001d\u001a\u00020\u001eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "()V",
        "bean",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V",
        "docProgress",
        "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;",
        "getDocProgress",
        "()Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;",
        "setDocProgress",
        "(Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V",
        "isPortrait",
        "",
        "()Z",
        "setPortrait",
        "(Z)V",
        "saved",
        "getSaved",
        "setSaved",
        "sortModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;",
        "getSortModel",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;",
        "setSortModel",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;)V",
        "getIconColorStateList",
        "Landroid/content/res/ColorStateList;",
        "isDocumentNoteScene",
        "isPdfScene",
        "setNotSaved",
        "",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private docProgress:Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isPortrait:Z

.field private saved:Z

.field private sortModel:Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->isPortrait:Z

    .line 3
    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->saved:Z

    .line 4
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->sortModel:Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->isPortrait:Z

    .line 7
    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->saved:Z

    .line 8
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->sortModel:Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    .line 9
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->updateModelField(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method


# virtual methods
.method public final getDocProgress()Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->docProgress:Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    return-object p0
.end method

.method public final getIconColorStateList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/replicator/R$integer;->tree_folder_icon_alpha:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result p0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    const-string v0, "valueOf(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getSaved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->saved:Z

    return p0
.end method

.method public final getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->sortModel:Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    return-object p0
.end method

.method public final isDocumentNoteScene()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getActiveScene()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->isNoteScene(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPdfScene()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getActiveScene()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->isPdfScribbleScene(I)Z

    move-result p0

    return p0
.end method

.method public final isPortrait()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->isPortrait:Z

    return p0
.end method

.method public final setDocProgress(Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->docProgress:Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    return-void
.end method

.method public final setNotSaved()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->saved:Z

    return-void
.end method

.method public final setPortrait(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->isPortrait:Z

    return-void
.end method

.method public final setSaved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->saved:Z

    return-void
.end method

.method public final setSortModel(Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->sortModel:Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    return-void
.end method
