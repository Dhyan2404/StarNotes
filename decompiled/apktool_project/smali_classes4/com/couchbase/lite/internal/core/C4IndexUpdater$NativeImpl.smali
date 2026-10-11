.class public interface abstract Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4IndexUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeImpl"
.end annotation


# virtual methods
.method public abstract nClose(J)V
.end method

.method public abstract nFinish(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method public abstract nGetCount(J)J
.end method

.method public abstract nGetValueAt(JJ)J
.end method

.method public abstract nSetVectorAt(JJ[F)V
    .param p5    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method public abstract nSkipVectorAt(JJ)Z
.end method
