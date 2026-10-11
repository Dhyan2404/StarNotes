.class final Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$isDownloadComplete$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->isDownloadComplete(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "model",
        "Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;",
        "invoke",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $attachment:Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$isDownloadComplete$1$1;->$attachment:Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;)Ljava/lang/Boolean;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$isDownloadComplete$1$1;->$attachment:Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getMd5()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;->getFileMd5()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$isDownloadComplete$1$1;->$attachment:Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$isDownloadComplete$1$1;->$attachment:Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getSize()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;->getFileSize()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$isDownloadComplete$1$1;->invoke(Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
