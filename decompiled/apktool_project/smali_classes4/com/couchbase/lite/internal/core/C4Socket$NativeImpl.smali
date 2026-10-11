.class public interface abstract Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeImpl"
.end annotation


# virtual methods
.method public abstract nCloseRequested(JILjava/lang/String;)V
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract nClosed(JIILjava/lang/String;)V
.end method

.method public abstract nCompletedWrite(JJ)V
.end method

.method public abstract nFromNative(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)J
.end method

.method public abstract nGotHTTPResponse(JI[B)V
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract nOpened(J)V
.end method

.method public abstract nReceived(J[B)V
.end method

.method public abstract nRetain(J)V
.end method
