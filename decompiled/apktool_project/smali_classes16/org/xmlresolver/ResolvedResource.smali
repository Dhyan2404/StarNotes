.class public abstract Lorg/xmlresolver/ResolvedResource;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getLocalURI()Ljava/net/URI;
.end method

.method public abstract getResolvedURI()Ljava/net/URI;
.end method
