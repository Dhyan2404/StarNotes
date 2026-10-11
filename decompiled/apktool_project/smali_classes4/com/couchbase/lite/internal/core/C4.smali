.class public final Lcom/couchbase/lite/internal/core/C4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4$NativeImpl;
    }
.end annotation


# static fields
.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4$NativeImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Z)V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/core/C4;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4$NativeImpl;

    invoke-interface {v0, p0}, Lcom/couchbase/lite/internal/core/C4$NativeImpl;->nDebug(Z)V

    return-void
.end method

.method public static enableExtension(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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

    sget-object v0, Lcom/couchbase/lite/internal/core/C4;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4$NativeImpl;

    invoke-interface {v0, p0, p1}, Lcom/couchbase/lite/internal/core/C4$NativeImpl;->nEnableExtension(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getBuildInfo()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4$NativeImpl;

    invoke-interface {v0}, Lcom/couchbase/lite/internal/core/C4$NativeImpl;->nGetBuildInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessage(III)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4$NativeImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4$NativeImpl;->nGetMessage(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4$NativeImpl;

    invoke-interface {v0}, Lcom/couchbase/lite/internal/core/C4$NativeImpl;->nGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setEnv(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/core/C4;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4$NativeImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4$NativeImpl;->nSetenv(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setTempDir(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4$NativeImpl;

    invoke-interface {v0, p0}, Lcom/couchbase/lite/internal/core/C4$NativeImpl;->nSetTempDir(Ljava/lang/String;)V

    return-void
.end method
