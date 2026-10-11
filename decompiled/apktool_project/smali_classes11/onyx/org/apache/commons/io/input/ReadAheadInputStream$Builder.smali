.class public Lonyx/org/apache/commons/io/input/ReadAheadInputStream$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/ReadAheadInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/input/ReadAheadInputStream;",
        "Lonyx/org/apache/commons/io/input/ReadAheadInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream$Builder;->get()Lonyx/org/apache/commons/io/input/ReadAheadInputStream;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/input/ReadAheadInputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v6, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    move-result v2

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream$Builder;->l:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->H()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_0
    move-object v3, v0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream$Builder;->l:Ljava/util/concurrent/ExecutorService;

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    move v4, p0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;-><init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;ZLonyx/org/apache/commons/io/input/ReadAheadInputStream$a;)V

    return-object v6
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)Lonyx/org/apache/commons/io/input/ReadAheadInputStream$Builder;
    .locals 0

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream$Builder;->l:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method
