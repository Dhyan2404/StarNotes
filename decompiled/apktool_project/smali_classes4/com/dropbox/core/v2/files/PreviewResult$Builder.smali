.class public Lcom/dropbox/core/v2/files/PreviewResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/PreviewResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected fileMetadata:Lcom/dropbox/core/v2/files/FileMetadata;

.field protected linkMetadata:Lcom/dropbox/core/v2/files/MinimalFileLinkMetadata;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/files/PreviewResult$Builder;->fileMetadata:Lcom/dropbox/core/v2/files/FileMetadata;

    iput-object v0, p0, Lcom/dropbox/core/v2/files/PreviewResult$Builder;->linkMetadata:Lcom/dropbox/core/v2/files/MinimalFileLinkMetadata;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/PreviewResult;
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/files/PreviewResult;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/PreviewResult$Builder;->fileMetadata:Lcom/dropbox/core/v2/files/FileMetadata;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/PreviewResult$Builder;->linkMetadata:Lcom/dropbox/core/v2/files/MinimalFileLinkMetadata;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/PreviewResult;-><init>(Lcom/dropbox/core/v2/files/FileMetadata;Lcom/dropbox/core/v2/files/MinimalFileLinkMetadata;)V

    return-object v0
.end method

.method public withFileMetadata(Lcom/dropbox/core/v2/files/FileMetadata;)Lcom/dropbox/core/v2/files/PreviewResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/files/PreviewResult$Builder;->fileMetadata:Lcom/dropbox/core/v2/files/FileMetadata;

    return-object p0
.end method

.method public withLinkMetadata(Lcom/dropbox/core/v2/files/MinimalFileLinkMetadata;)Lcom/dropbox/core/v2/files/PreviewResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/files/PreviewResult$Builder;->linkMetadata:Lcom/dropbox/core/v2/files/MinimalFileLinkMetadata;

    return-object p0
.end method
