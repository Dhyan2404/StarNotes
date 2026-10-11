.class public interface abstract Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/fleece/FLDict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeImpl"
.end annotation


# virtual methods
.method public abstract nCount(J)J
.end method

.method public abstract nFree(J)V
.end method

.method public abstract nGet(J[B)J
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract nGetCount(J)J
.end method

.method public abstract nGetKey(J)Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract nGetValue(J)J
.end method

.method public abstract nInit(J)J
.end method

.method public abstract nNext(J)Z
.end method
