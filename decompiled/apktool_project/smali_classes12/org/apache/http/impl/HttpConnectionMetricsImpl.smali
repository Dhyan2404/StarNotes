.class public Lorg/apache/http/impl/HttpConnectionMetricsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpConnectionMetrics;


# static fields
.field public static final RECEIVED_BYTES_COUNT:Ljava/lang/String; = "http.received-bytes-count"

.field public static final REQUEST_COUNT:Ljava/lang/String; = "http.request-count"

.field public static final RESPONSE_COUNT:Ljava/lang/String; = "http.response-count"

.field public static final SENT_BYTES_COUNT:Ljava/lang/String; = "http.sent-bytes-count"


# instance fields
.field public final a:Lorg/apache/http/io/HttpTransportMetrics;

.field public final b:Lorg/apache/http/io/HttpTransportMetrics;

.field public c:J

.field public d:J

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/io/HttpTransportMetrics;Lorg/apache/http/io/HttpTransportMetrics;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->c:J

    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->d:J

    iput-object p1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->a:Lorg/apache/http/io/HttpTransportMetrics;

    iput-object p2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->b:Lorg/apache/http/io/HttpTransportMetrics;

    return-void
.end method


# virtual methods
.method public getMetric(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->e:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_6

    const-string v2, "http.request-count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide p0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->c:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v2, "http.response-count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide p0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->d:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, "http.received-bytes-count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->a:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    const-string v2, "http.sent-bytes-count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->b:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_5
    return-object v1

    :cond_6
    :goto_1
    return-object v0
.end method

.method public getReceivedBytesCount()J
    .locals 2

    iget-object p0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->a:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getRequestCount()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->c:J

    return-wide v0
.end method

.method public getResponseCount()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->d:J

    return-wide v0
.end method

.method public getSentBytesCount()J
    .locals 2

    iget-object p0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->b:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public incrementRequestCount()V
    .locals 4

    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->c:J

    return-void
.end method

.method public incrementResponseCount()V
    .locals 4

    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->d:J

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->b:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->reset()V

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->a:Lorg/apache/http/io/HttpTransportMetrics;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->reset()V

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->c:J

    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->e:Ljava/util/Map;

    return-void
.end method

.method public setMetric(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->e:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->e:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
