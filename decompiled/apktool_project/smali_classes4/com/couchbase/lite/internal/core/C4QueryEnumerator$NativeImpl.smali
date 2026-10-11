.class public interface abstract Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4QueryEnumerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeImpl"
.end annotation


# virtual methods
.method public abstract nFree(J)V
.end method

.method public abstract nGetColumns(J)J
.end method

.method public abstract nGetMissingColumns(J)J
.end method

.method public abstract nNext(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method
