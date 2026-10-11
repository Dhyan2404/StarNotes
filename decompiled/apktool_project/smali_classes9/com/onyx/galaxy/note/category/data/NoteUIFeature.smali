.class public final Lcom/onyx/galaxy/note/category/data/NoteUIFeature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u0008\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/data/NoteUIFeature;",
        "Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;",
        "syncNoteModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V",
        "supportAddTags",
        "",
        "supportChangeTemplate",
        "supportExport",
        "supportLock",
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


# instance fields
.field private final syncNoteModel:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "syncNoteModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/data/NoteUIFeature;->syncNoteModel:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-void
.end method


# virtual methods
.method public getTemplateType()I
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$DefaultImpls;->getTemplateType(Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;)I

    move-result p0

    return p0
.end method

.method public limitShapeRectInCurrentPage()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$DefaultImpls;->limitShapeRectInCurrentPage(Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;)Z

    move-result p0

    return p0
.end method

.method public final supportAddTags()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NoteUIFeature;->syncNoteModel:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result p0

    return p0
.end method

.method public supportAddToOutline()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$DefaultImpls;->supportAddToOutline(Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;)Z

    move-result p0

    return p0
.end method

.method public final supportChangeTemplate()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/data/NoteUIFeature;->syncNoteModel:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NoteUIFeature;->syncNoteModel:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getActiveScene()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->isDraft(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportClearPage()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$DefaultImpls;->supportClearPage(Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;)Z

    move-result p0

    return p0
.end method

.method public supportCreatePageLink()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$DefaultImpls;->supportCreatePageLink(Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;)Z

    move-result p0

    return p0
.end method

.method public supportDrawPageLayer()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$DefaultImpls;->supportDrawPageLayer(Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;)Z

    move-result p0

    return p0
.end method

.method public supportEditPage()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$DefaultImpls;->supportEditPage(Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;)Z

    move-result p0

    return p0
.end method

.method public final supportExport()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NoteUIFeature;->syncNoteModel:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result p0

    return p0
.end method

.method public supportExportPageAsImage()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$DefaultImpls;->supportExportPageAsImage(Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;)Z

    move-result p0

    return p0
.end method

.method public final supportLock()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NoteUIFeature;->syncNoteModel:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result p0

    return p0
.end method

.method public supportMultiPage()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$DefaultImpls;->supportMultiPage(Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;)Z

    move-result p0

    return p0
.end method

.method public supportPageBackground()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$DefaultImpls;->supportPageBackground(Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;)Z

    move-result p0

    return p0
.end method

.method public supportPageBorder()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$DefaultImpls;->supportPageBorder(Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;)Z

    move-result p0

    return p0
.end method

.method public supportRectExcerptLimitRect()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$DefaultImpls;->supportRectExcerptLimitRect(Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;)Z

    move-result p0

    return p0
.end method

.method public supportRenderPageContentBitmap()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$DefaultImpls;->supportRenderPageContentBitmap(Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;)Z

    move-result p0

    return p0
.end method

.method public supportShapesLocationBar()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$DefaultImpls;->supportShapesLocationBar(Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;)Z

    move-result p0

    return p0
.end method
