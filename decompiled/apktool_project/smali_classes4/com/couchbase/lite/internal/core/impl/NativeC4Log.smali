.class public final Lcom/couchbase/lite/internal/core/impl/NativeC4Log;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4Log$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native log(Ljava/lang/String;ILjava/lang/String;)V
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native setBinaryFileLevel(I)V
.end method

.method private static native setCallbackLevel(I)V
.end method

.method private static native setLevel(Ljava/lang/String;I)V
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native writeToBinaryFile(Ljava/lang/String;IIJZLjava/lang/String;)V
.end method


# virtual methods
.method public nLog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/core/impl/NativeC4Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public nSetBinaryFileLevel(I)V
    .locals 0

    invoke-static {p1}, Lcom/couchbase/lite/internal/core/impl/NativeC4Log;->setBinaryFileLevel(I)V

    return-void
.end method

.method public nSetCallbackLevel(I)V
    .locals 0

    invoke-static {p1}, Lcom/couchbase/lite/internal/core/impl/NativeC4Log;->setCallbackLevel(I)V

    return-void
.end method

.method public nSetLevel(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Log;->setLevel(Ljava/lang/String;I)V

    return-void
.end method

.method public nWriteToBinaryFile(Ljava/lang/String;IIJZLjava/lang/String;)V
    .locals 0

    invoke-static/range {p1 .. p7}, Lcom/couchbase/lite/internal/core/impl/NativeC4Log;->writeToBinaryFile(Ljava/lang/String;IIJZLjava/lang/String;)V

    return-void
.end method
