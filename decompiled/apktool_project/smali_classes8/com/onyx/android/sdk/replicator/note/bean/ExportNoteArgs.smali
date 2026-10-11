.class public final Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010#\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010A\u001a\u00020B2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00040DR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR&\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00170\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u000c\"\u0004\u0008\u001e\u0010\u000eR\u0017\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00040 \u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u000c\"\u0004\u0008%\u0010\u000eR\u001a\u0010&\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u000c\"\u0004\u0008(\u0010\u000eR\u001c\u0010)\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0006\"\u0004\u0008+\u0010\u0008R\u001c\u0010,\u001a\u0004\u0018\u00010-X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\"\u00102\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u000103X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u001a\u00108\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010\u000c\"\u0004\u0008:\u0010\u000eR\u001c\u0010;\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u0006\"\u0004\u0008=\u0010\u0008R\u001a\u0010>\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u000c\"\u0004\u0008@\u0010\u000e\u00a8\u0006E"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
        "",
        "()V",
        "documentId",
        "",
        "getDocumentId",
        "()Ljava/lang/String;",
        "setDocumentId",
        "(Ljava/lang/String;)V",
        "exportDebugData",
        "",
        "getExportDebugData",
        "()Z",
        "setExportDebugData",
        "(Z)V",
        "exportDirPath",
        "getExportDirPath",
        "setExportDirPath",
        "exportGlobalPage",
        "getExportGlobalPage",
        "setExportGlobalPage",
        "exportPdfPagesResult",
        "",
        "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;",
        "getExportPdfPagesResult",
        "()Ljava/util/Map;",
        "setExportPdfPagesResult",
        "(Ljava/util/Map;)V",
        "exportRemovedPages",
        "getExportRemovedPages",
        "setExportRemovedPages",
        "exportResourceIdSet",
        "",
        "getExportResourceIdSet",
        "()Ljava/util/Set;",
        "exportStashArchivedData",
        "getExportStashArchivedData",
        "setExportStashArchivedData",
        "exportTemplate",
        "getExportTemplate",
        "setExportTemplate",
        "exportThumbnailPath",
        "getExportThumbnailPath",
        "setExportThumbnailPath",
        "infoBean",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;",
        "getInfoBean",
        "()Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;",
        "setInfoBean",
        "(Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;)V",
        "pageIdList",
        "",
        "getPageIdList",
        "()Ljava/util/List;",
        "setPageIdList",
        "(Ljava/util/List;)V",
        "resetViewPortId",
        "getResetViewPortId",
        "setResetViewPortId",
        "title",
        "getTitle",
        "setTitle",
        "transformReferenceShape",
        "getTransformReferenceShape",
        "setTransformReferenceShape",
        "addGlobalPageId",
        "",
        "pageIds",
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
.field public documentId:Ljava/lang/String;

.field private exportDebugData:Z

.field private exportDirPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private exportGlobalPage:Z

.field private exportPdfPagesResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private exportRemovedPages:Z

.field private final exportResourceIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private exportStashArchivedData:Z

.field private exportTemplate:Z

.field private exportThumbnailPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private infoBean:Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pageIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resetViewPortId:Z

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transformReferenceShape:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportDirPath:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportTemplate:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportStashArchivedData:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->resetViewPortId:Z

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportPdfPagesResult:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportResourceIdSet:Ljava/util/Set;

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportRemovedPages:Z

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportDebugData:Z

    return-void
.end method


# virtual methods
.method public final addGlobalPageId(Ljava/util/List;)V
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

    const-string v0, "pageIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportGlobalPage:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->documentId:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "documentId"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getExportDebugData()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportDebugData:Z

    return p0
.end method

.method public final getExportDirPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportDirPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getExportGlobalPage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportGlobalPage:Z

    return p0
.end method

.method public final getExportPdfPagesResult()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportPdfPagesResult:Ljava/util/Map;

    return-object p0
.end method

.method public final getExportRemovedPages()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportRemovedPages:Z

    return p0
.end method

.method public final getExportResourceIdSet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportResourceIdSet:Ljava/util/Set;

    return-object p0
.end method

.method public final getExportStashArchivedData()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportStashArchivedData:Z

    return p0
.end method

.method public final getExportTemplate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportTemplate:Z

    return p0
.end method

.method public final getExportThumbnailPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportThumbnailPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getInfoBean()Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->infoBean:Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;

    return-object p0
.end method

.method public final getPageIdList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->pageIdList:Ljava/util/List;

    return-object p0
.end method

.method public final getResetViewPortId()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->resetViewPortId:Z

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getTransformReferenceShape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->transformReferenceShape:Z

    return p0
.end method

.method public final setDocumentId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->documentId:Ljava/lang/String;

    return-void
.end method

.method public final setExportDebugData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportDebugData:Z

    return-void
.end method

.method public final setExportDirPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportDirPath:Ljava/lang/String;

    return-void
.end method

.method public final setExportGlobalPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportGlobalPage:Z

    return-void
.end method

.method public final setExportPdfPagesResult(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportPdfPagesResult:Ljava/util/Map;

    return-void
.end method

.method public final setExportRemovedPages(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportRemovedPages:Z

    return-void
.end method

.method public final setExportStashArchivedData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportStashArchivedData:Z

    return-void
.end method

.method public final setExportTemplate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportTemplate:Z

    return-void
.end method

.method public final setExportThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->exportThumbnailPath:Ljava/lang/String;

    return-void
.end method

.method public final setInfoBean(Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->infoBean:Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;

    return-void
.end method

.method public final setPageIdList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->pageIdList:Ljava/util/List;

    return-void
.end method

.method public final setResetViewPortId(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->resetViewPortId:Z

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->title:Ljava/lang/String;

    return-void
.end method

.method public final setTransformReferenceShape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->transformReferenceShape:Z

    return-void
.end method
