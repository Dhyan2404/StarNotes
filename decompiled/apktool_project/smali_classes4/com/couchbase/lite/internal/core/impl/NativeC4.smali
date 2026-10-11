.class public final Lcom/couchbase/lite/internal/core/impl/NativeC4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native debug(Z)V
.end method

.method private static native enableExtension(Ljava/lang/String;Ljava/lang/String;)V
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method public static native getBuildInfo()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method private static native getMessage(III)Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public static native getVersion()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method private static native setTempDir(Ljava/lang/String;)V
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method public static native setenv(Ljava/lang/String;Ljava/lang/String;I)V
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method


# virtual methods
.method public nDebug(Z)V
    .locals 0

    invoke-static {p1}, Lcom/couchbase/lite/internal/core/impl/NativeC4;->debug(Z)V

    return-void
.end method

.method public nEnableExtension(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4;->enableExtension(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public nGetBuildInfo()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/couchbase/lite/internal/core/impl/NativeC4;->getBuildInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nGetMessage(III)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/core/impl/NativeC4;->getMessage(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nGetVersion()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/couchbase/lite/internal/core/impl/NativeC4;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nSetTempDir(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1}, Lcom/couchbase/lite/internal/core/impl/NativeC4;->setTempDir(Ljava/lang/String;)V

    return-void
.end method

.method public nSetenv(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/core/impl/NativeC4;->setenv(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
