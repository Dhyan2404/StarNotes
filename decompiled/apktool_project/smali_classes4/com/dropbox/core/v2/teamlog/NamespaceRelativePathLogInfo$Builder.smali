.class public Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected isSharedNamespace:Ljava/lang/Boolean;

.field protected nsId:Ljava/lang/String;

.field protected relativePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;->nsId:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;->relativePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;->isSharedNamespace:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;
    .locals 3

    new-instance v0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;->nsId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;->relativePath:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;->isSharedNamespace:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public withIsSharedNamespace(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;->isSharedNamespace:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withNsId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;->nsId:Ljava/lang/String;

    return-object p0
.end method

.method public withRelativePath(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;->relativePath:Ljava/lang/String;

    return-object p0
.end method
