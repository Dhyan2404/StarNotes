.class public final Lcom/couchbase/lite/internal/core/impl/NativeC4Socket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native closeRequested(JILjava/lang/String;)V
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native closed(JIILjava/lang/String;)V
.end method

.method private static native completedWrite(JJ)V
.end method

.method private static native fromNative(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)J
.end method

.method private static native gotHTTPResponse(JI[B)V
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native opened(J)V
.end method

.method private static native received(J[B)V
.end method

.method private static native retain(J)V
.end method


# virtual methods
.method public nCloseRequested(JILjava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/impl/NativeC4Socket;->closeRequested(JILjava/lang/String;)V

    return-void
.end method

.method public nClosed(JIILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/couchbase/lite/internal/core/impl/NativeC4Socket;->closed(JIILjava/lang/String;)V

    return-void
.end method

.method public nCompletedWrite(JJ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/impl/NativeC4Socket;->completedWrite(JJ)V

    return-void
.end method

.method public nFromNative(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)J
    .locals 0

    invoke-static/range {p1 .. p7}, Lcom/couchbase/lite/internal/core/impl/NativeC4Socket;->fromNative(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGotHTTPResponse(JI[B)V
    .locals 0
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/impl/NativeC4Socket;->gotHTTPResponse(JI[B)V

    return-void
.end method

.method public nOpened(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Socket;->opened(J)V

    return-void
.end method

.method public nReceived(J[B)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/core/impl/NativeC4Socket;->received(J[B)V

    return-void
.end method

.method public nRetain(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Socket;->retain(J)V

    return-void
.end method
