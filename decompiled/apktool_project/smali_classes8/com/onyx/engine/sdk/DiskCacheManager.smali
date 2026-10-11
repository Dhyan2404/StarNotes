.class public Lcom/onyx/engine/sdk/DiskCacheManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/engine/sdk/DiskCacheManager$Metadata;
    }
.end annotation


# instance fields
.field private cacheDir:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "engine_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/engine/sdk/DiskCacheManager;->cacheDir:Ljava/lang/String;

    return-void
.end method

.method private native nativeGetMetadata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeWriteMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method


# virtual methods
.method public getCacheDir()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/DiskCacheManager;->cacheDir:Ljava/lang/String;

    return-object p0
.end method

.method public getMetadata(Ljava/lang/String;)Lcom/onyx/engine/sdk/DiskCacheManager$Metadata;
    .locals 1

    iget-object v0, p0, Lcom/onyx/engine/sdk/DiskCacheManager;->cacheDir:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/onyx/engine/sdk/DiskCacheManager;->nativeGetMetadata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/onyx/engine/sdk/DiskCacheManager$Metadata;

    invoke-static {p0, p1}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/DiskCacheManager$Metadata;

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/engine/sdk/DiskCacheManager$Metadata;

    invoke-direct {p0}, Lcom/onyx/engine/sdk/DiskCacheManager$Metadata;-><init>()V

    :cond_0
    return-object p0
.end method

.method public writeMetadata(Ljava/lang/String;Lcom/onyx/engine/sdk/DiskCacheManager$Metadata;)Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/engine/sdk/DiskCacheManager;->cacheDir:Ljava/lang/String;

    invoke-static {p2}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/onyx/engine/sdk/DiskCacheManager;->nativeWriteMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
