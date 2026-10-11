.class public Lcom/dropbox/core/v2/files/SearchV2Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

.field public final b:Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchV2Builder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/dropbox/core/v2/files/SearchV2Builder;->b:Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;

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
.method public start()Lcom/dropbox/core/v2/files/SearchV2Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SearchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/files/SearchV2Builder;->b:Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;->build()Lcom/dropbox/core/v2/files/SearchV2Arg;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/SearchV2Builder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a0(Lcom/dropbox/core/v2/files/SearchV2Arg;)Lcom/dropbox/core/v2/files/SearchV2Result;

    move-result-object p0

    return-object p0
.end method

.method public withIncludeHighlights(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/SearchV2Builder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/SearchV2Builder;->b:Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;->withIncludeHighlights(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;

    return-object p0
.end method

.method public withMatchFieldOptions(Lcom/dropbox/core/v2/files/SearchMatchFieldOptions;)Lcom/dropbox/core/v2/files/SearchV2Builder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/SearchV2Builder;->b:Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;->withMatchFieldOptions(Lcom/dropbox/core/v2/files/SearchMatchFieldOptions;)Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;

    return-object p0
.end method

.method public withOptions(Lcom/dropbox/core/v2/files/SearchOptions;)Lcom/dropbox/core/v2/files/SearchV2Builder;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/SearchV2Builder;->b:Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;->withOptions(Lcom/dropbox/core/v2/files/SearchOptions;)Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;

    return-object p0
.end method
