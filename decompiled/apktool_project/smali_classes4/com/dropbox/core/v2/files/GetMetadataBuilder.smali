.class public Lcom/dropbox/core/v2/files/GetMetadataBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

.field public final b:Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetMetadataBuilder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/files/GetMetadataBuilder;->b:Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "_builder"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "_client"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/files/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetMetadataBuilder;->b:Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->build()Lcom/dropbox/core/v2/files/GetMetadataArg;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/GetMetadataBuilder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->w(Lcom/dropbox/core/v2/files/GetMetadataArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetMetadataBuilder;->b:Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    return-object p0
.end method

.method public withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetMetadataBuilder;->b:Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    return-object p0
.end method

.method public withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetMetadataBuilder;->b:Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    return-object p0
.end method

.method public withIncludePropertyGroups(Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;)Lcom/dropbox/core/v2/files/GetMetadataBuilder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetMetadataBuilder;->b:Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->withIncludePropertyGroups(Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    return-object p0
.end method
