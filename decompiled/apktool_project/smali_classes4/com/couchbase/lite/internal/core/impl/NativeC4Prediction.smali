.class public Lcom/couchbase/lite/internal/core/impl/NativeC4Prediction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4Prediction$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native registerModel(Ljava/lang/String;J)V
.end method

.method private static native unregisterModel(Ljava/lang/String;)V
.end method


# virtual methods
.method public nRegisterModel(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/core/impl/NativeC4Prediction;->registerModel(Ljava/lang/String;J)V

    return-void
.end method

.method public nUnregisterModel(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/couchbase/lite/internal/core/impl/NativeC4Prediction;->unregisterModel(Ljava/lang/String;)V

    return-void
.end method
