.class public final Lcom/google/android/exoplayer2/source/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;
.implements Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Landroid/net/Uri;

.field public final c:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

.field public final d:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

.field public final e:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public final f:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field public final g:Lcom/google/android/exoplayer2/extractor/PositionHolder;

.field public volatile h:Z

.field public i:Z

.field public j:J

.field public k:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public l:J

.field public m:Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:Z

.field public final synthetic o:Lcom/google/android/exoplayer2/source/b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/b;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/util/ConditionVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b$a;->o:Lcom/google/android/exoplayer2/source/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/b$a;->b:Landroid/net/Uri;

    new-instance p1, Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b$a;->c:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/b$a;->d:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/b$a;->e:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iput-object p6, p0, Lcom/google/android/exoplayer2/source/b$a;->f:Lcom/google/android/exoplayer2/util/ConditionVariable;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/PositionHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b$a;->g:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/b$a;->i:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/b$a;->l:J

    invoke-static {}, Lcom/google/android/exoplayer2/source/LoadEventInfo;->getNewId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/b$a;->a:J

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/b$a;->g(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b$a;->k:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/source/b$a;)Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/b$a;->c:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/source/b$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/b$a;->a:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/source/b$a;)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/b$a;->k:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/source/b$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/b$a;->j:J

    return-wide v0
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/source/b$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/b$a;->l:J

    return-wide v0
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/source/b$a;JJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/b$a;->h(JJ)V

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/b$a;->h:Z

    return-void
.end method

.method public final g(J)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b$a;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/b$a;->o:Lcom/google/android/exoplayer2/source/b;

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/b;->h(Lcom/google/android/exoplayer2/source/b;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p0

    invoke-static {}, Lcom/google/android/exoplayer2/source/b;->g()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p0

    return-object p0
.end method

.method public final h(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b$a;->g:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iput-wide p1, v0, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/b$a;->j:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/b$a;->i:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/b$a;->n:Z

    return-void
.end method

.method public load()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-nez v2, :cond_9

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/source/b$a;->h:Z

    if-nez v3, :cond_9

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    :try_start_0
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/b$a;->g:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-wide v13, v6, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    invoke-virtual {v1, v13, v14}, Lcom/google/android/exoplayer2/source/b$a;->g(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/source/b$a;->k:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/b$a;->c:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/exoplayer2/source/b$a;->l:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    add-long/2addr v6, v13

    iput-wide v6, v1, Lcom/google/android/exoplayer2/source/b$a;->l:J

    :cond_0
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/b$a;->o:Lcom/google/android/exoplayer2/source/b;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/b$a;->c:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->parse(Ljava/util/Map;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/source/b;->j(Lcom/google/android/exoplayer2/source/b;Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/b$a;->c:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/b$a;->o:Lcom/google/android/exoplayer2/source/b;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/b;->i(Lcom/google/android/exoplayer2/source/b;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/b$a;->o:Lcom/google/android/exoplayer2/source/b;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/b;->i(Lcom/google/android/exoplayer2/source/b;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    new-instance v6, Lcom/google/android/exoplayer2/source/IcyDataSource;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/b$a;->c:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/b$a;->o:Lcom/google/android/exoplayer2/source/b;

    invoke-static {v8}, Lcom/google/android/exoplayer2/source/b;->i(Lcom/google/android/exoplayer2/source/b;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v8

    iget v8, v8, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-direct {v6, v7, v8, v1}, Lcom/google/android/exoplayer2/source/IcyDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/IcyDataSource$Listener;)V

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/b$a;->o:Lcom/google/android/exoplayer2/source/b;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/b;->s()Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/exoplayer2/source/b$a;->m:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {}, Lcom/google/android/exoplayer2/source/b;->k()Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    :cond_1
    move-object v8, v6

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/b$a;->d:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/b$a;->b:Landroid/net/Uri;

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/b$a;->c:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v10

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/b$a;->l:J

    iget-object v15, v1, Lcom/google/android/exoplayer2/source/b$a;->e:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    move-wide/from16 v16, v11

    move-wide v11, v13

    move-wide v4, v13

    move-wide/from16 v13, v16

    invoke-interface/range {v7 .. v15}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->init(Lcom/google/android/exoplayer2/upstream/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/b$a;->o:Lcom/google/android/exoplayer2/source/b;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/b;->i(Lcom/google/android/exoplayer2/source/b;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/b$a;->d:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->disableSeekingOnMp3Streams()V

    :cond_2
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/source/b$a;->i:Z

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/b$a;->d:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/b$a;->j:J

    invoke-interface {v6, v4, v5, v7, v8}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->seek(JJ)V

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/source/b$a;->i:Z

    :cond_3
    :goto_1
    move-wide v13, v4

    :cond_4
    if-nez v2, :cond_5

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/source/b$a;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    :try_start_1
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/b$a;->f:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/b$a;->d:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/b$a;->g:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->read(Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v2

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/b$a;->d:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v4

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/b$a;->o:Lcom/google/android/exoplayer2/source/b;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/b;->l(Lcom/google/android/exoplayer2/source/b;)J

    move-result-wide v6

    add-long/2addr v6, v13

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/b$a;->f:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/b$a;->o:Lcom/google/android/exoplayer2/source/b;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/b;->e(Lcom/google/android/exoplayer2/source/b;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/b$a;->o:Lcom/google/android/exoplayer2/source/b;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/b;->d(Lcom/google/android/exoplayer2/source/b;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    if-ne v2, v3, :cond_6

    move v2, v0

    goto :goto_2

    :cond_6
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/b$a;->d:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/b$a;->g:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/b$a;->d:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    :cond_7
    :goto_2
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/b$a;->c:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v3}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eq v2, v3, :cond_8

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/b$a;->d:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/b$a;->g:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/b$a;->d:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    :cond_8
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/b$a;->c:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw v0

    :cond_9
    return-void
.end method

.method public onIcyMetadata(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b$a;->n:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/b$a;->j:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b$a;->o:Lcom/google/android/exoplayer2/source/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/b;->f(Lcom/google/android/exoplayer2/source/b;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/b$a;->j:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b$a;->m:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, p1, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/b$a;->n:Z

    return-void
.end method
