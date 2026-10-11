.class public Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/ThumbnailV2Arg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

.field protected mode:Lcom/dropbox/core/v2/files/ThumbnailMode;

.field protected final resource:Lcom/dropbox/core/v2/files/PathOrLink;

.field protected size:Lcom/dropbox/core/v2/files/ThumbnailSize;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/PathOrLink;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;->resource:Lcom/dropbox/core/v2/files/PathOrLink;

    sget-object p1, Lcom/dropbox/core/v2/files/ThumbnailFormat;->JPEG:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    sget-object p1, Lcom/dropbox/core/v2/files/ThumbnailSize;->W64H64:Lcom/dropbox/core/v2/files/ThumbnailSize;

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    sget-object p1, Lcom/dropbox/core/v2/files/ThumbnailMode;->STRICT:Lcom/dropbox/core/v2/files/ThumbnailMode;

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;->mode:Lcom/dropbox/core/v2/files/ThumbnailMode;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'resource\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/ThumbnailV2Arg;
    .locals 4

    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;->resource:Lcom/dropbox/core/v2/files/PathOrLink;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;->mode:Lcom/dropbox/core/v2/files/ThumbnailMode;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/dropbox/core/v2/files/ThumbnailV2Arg;-><init>(Lcom/dropbox/core/v2/files/PathOrLink;Lcom/dropbox/core/v2/files/ThumbnailFormat;Lcom/dropbox/core/v2/files/ThumbnailSize;Lcom/dropbox/core/v2/files/ThumbnailMode;)V

    return-object v0
.end method

.method public withFormat(Lcom/dropbox/core/v2/files/ThumbnailFormat;)Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/dropbox/core/v2/files/ThumbnailFormat;->JPEG:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    :goto_0
    return-object p0
.end method

.method public withMode(Lcom/dropbox/core/v2/files/ThumbnailMode;)Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;->mode:Lcom/dropbox/core/v2/files/ThumbnailMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/dropbox/core/v2/files/ThumbnailMode;->STRICT:Lcom/dropbox/core/v2/files/ThumbnailMode;

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;->mode:Lcom/dropbox/core/v2/files/ThumbnailMode;

    :goto_0
    return-object p0
.end method

.method public withSize(Lcom/dropbox/core/v2/files/ThumbnailSize;)Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/dropbox/core/v2/files/ThumbnailSize;->W64H64:Lcom/dropbox/core/v2/files/ThumbnailSize;

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Arg$Builder;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    :goto_0
    return-object p0
.end method
