.class public Lio/opencensus/contrib/http/HttpRequestContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:J = -0x1L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final i:Lio/opencensus/tags/TagMetadata;


# instance fields
.field public final a:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final b:Lio/opencensus/trace/Span;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public c:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public d:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public e:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public f:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final g:Lio/opencensus/tags/TagContext;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/opencensus/tags/TagMetadata$TagTtl;->NO_PROPAGATION:Lio/opencensus/tags/TagMetadata$TagTtl;

    invoke-static {v0}, Lio/opencensus/tags/TagMetadata;->create(Lio/opencensus/tags/TagMetadata$TagTtl;)Lio/opencensus/tags/TagMetadata;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/HttpRequestContext;->i:Lio/opencensus/tags/TagMetadata;

    return-void
.end method

.method public constructor <init>(Lio/opencensus/trace/Span;Lio/opencensus/tags/TagContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/opencensus/contrib/http/HttpRequestContext;->c:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/opencensus/contrib/http/HttpRequestContext;->d:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/opencensus/contrib/http/HttpRequestContext;->e:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/opencensus/contrib/http/HttpRequestContext;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "span"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tagContext"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lio/opencensus/contrib/http/HttpRequestContext;->b:Lio/opencensus/trace/Span;

    iput-object p2, p0, Lio/opencensus/contrib/http/HttpRequestContext;->g:Lio/opencensus/tags/TagContext;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lio/opencensus/contrib/http/HttpRequestContext;->a:J

    return-void
.end method
