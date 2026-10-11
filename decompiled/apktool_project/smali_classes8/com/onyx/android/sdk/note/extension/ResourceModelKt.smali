.class public final Lcom/onyx/android/sdk/note/extension/ResourceModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "loadAndSaveResource",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;",
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
        "localPath",
        "",
        "documentId",
        "sdk-note_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final loadAndSaveResource(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;
    .locals 4
    .param p0    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->computeFullMD5Safely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ResourcePaths;

    invoke-virtual {v2, p2, v1}, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->appResourceDataFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteResourceProvider()Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;

    move-result-object p0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, v1}, Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;->loadFromPath(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/note/extension/ResourceModelKt$loadAndSaveResource$1;

    invoke-direct {v2, p1, v1}, Lcom/onyx/android/sdk/note/extension/ResourceModelKt$loadAndSaveResource$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->takeIfFalse(Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;)V

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;-><init>()V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->setLocalPath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-virtual {v2, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->setType(I)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;->saveResourceModel(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;->saveResourceModel(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)V

    :cond_3
    :goto_1
    return-object v2
.end method
