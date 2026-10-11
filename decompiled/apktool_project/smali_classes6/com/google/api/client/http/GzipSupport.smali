.class final Lcom/google/api/client/http/GzipSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/GzipSupport$OptimisticAvailabilityInputStream;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newGzipInputStream(Ljava/io/InputStream;)Ljava/util/zip/GZIPInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Lcom/google/api/client/http/GzipSupport$OptimisticAvailabilityInputStream;

    invoke-direct {v1, p0}, Lcom/google/api/client/http/GzipSupport$OptimisticAvailabilityInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
