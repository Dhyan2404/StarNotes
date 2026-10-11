.class public Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;
.super Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/FolderLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected fileCount:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;-><init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;->fileCount:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;->build()Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/dropbox/core/v2/teamlog/FolderLogInfo;
    .locals 7

    .line 2
    new-instance v6, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->displayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->fileId:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->fileSize:Ljava/lang/Long;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;->fileCount:Ljava/lang/Long;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;-><init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v6
.end method

.method public bridge synthetic withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;

    return-object p0
.end method

.method public withFileCount(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;->fileCount:Ljava/lang/Long;

    return-object p0
.end method

.method public bridge synthetic withFileId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;->withFileId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public withFileId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->withFileId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic withFileSize(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;->withFileSize(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public withFileSize(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->withFileSize(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;

    return-object p0
.end method
