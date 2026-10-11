.class public Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$a;,
        Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;
    }
.end annotation


# instance fields
.field protected final displayName:Ljava/lang/String;

.field protected final fileId:Ljava/lang/String;

.field protected final fileSize:Ljava/lang/Long;

.field protected final path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;-><init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    .line 3
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->displayName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->fileId:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->fileSize:Ljava/lang/Long;

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'path\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/teamlog/PathLogInfo;)Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;-><init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    check-cast p1, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->displayName:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->fileId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->fileId:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->fileSize:Ljava/lang/Long;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->fileSize:Ljava/lang/Long;

    if-eq p0, p1, :cond_6

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->fileId:Ljava/lang/String;

    return-object p0
.end method

.method public getFileSize()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->fileSize:Ljava/lang/Long;

    return-object p0
.end method

.method public getPath()Lcom/dropbox/core/v2/teamlog/PathLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->displayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->fileId:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;->fileSize:Ljava/lang/Long;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$a;->b:Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$a;->b:Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
