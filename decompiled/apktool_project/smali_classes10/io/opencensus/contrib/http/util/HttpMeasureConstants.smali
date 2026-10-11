.class public final Lio/opencensus/contrib/http/util/HttpMeasureConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HTTP_CLIENT_HOST:Lio/opencensus/tags/TagKey;

.field public static final HTTP_CLIENT_METHOD:Lio/opencensus/tags/TagKey;

.field public static final HTTP_CLIENT_PATH:Lio/opencensus/tags/TagKey;

.field public static final HTTP_CLIENT_RECEIVED_BYTES:Lio/opencensus/stats/Measure$MeasureLong;

.field public static final HTTP_CLIENT_ROUNDTRIP_LATENCY:Lio/opencensus/stats/Measure$MeasureDouble;

.field public static final HTTP_CLIENT_SENT_BYTES:Lio/opencensus/stats/Measure$MeasureLong;

.field public static final HTTP_CLIENT_STATUS:Lio/opencensus/tags/TagKey;

.field public static final HTTP_SERVER_HOST:Lio/opencensus/tags/TagKey;

.field public static final HTTP_SERVER_LATENCY:Lio/opencensus/stats/Measure$MeasureDouble;

.field public static final HTTP_SERVER_METHOD:Lio/opencensus/tags/TagKey;

.field public static final HTTP_SERVER_PATH:Lio/opencensus/tags/TagKey;

.field public static final HTTP_SERVER_RECEIVED_BYTES:Lio/opencensus/stats/Measure$MeasureLong;

.field public static final HTTP_SERVER_ROUTE:Lio/opencensus/tags/TagKey;

.field public static final HTTP_SERVER_SENT_BYTES:Lio/opencensus/stats/Measure$MeasureLong;

.field public static final HTTP_SERVER_STATUS:Lio/opencensus/tags/TagKey;

.field public static final a:Ljava/lang/String; = "By"

.field public static final b:Ljava/lang/String; = "ms"


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "opencensus.io/http/client/sent_bytes"

    const-string v1, "Client-side total bytes sent in request body (uncompressed)"

    const-string v2, "By"

    invoke-static {v0, v1, v2}, Lio/opencensus/stats/Measure$MeasureLong;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/opencensus/stats/Measure$MeasureLong;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_SENT_BYTES:Lio/opencensus/stats/Measure$MeasureLong;

    const-string v0, "opencensus.io/http/client/received_bytes"

    const-string v1, "Client-side total bytes received in response bodies (uncompressed)"

    invoke-static {v0, v1, v2}, Lio/opencensus/stats/Measure$MeasureLong;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/opencensus/stats/Measure$MeasureLong;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_RECEIVED_BYTES:Lio/opencensus/stats/Measure$MeasureLong;

    const-string v0, "opencensus.io/http/client/roundtrip_latency"

    const-string v1, "Client-side time between first byte of request headers sent to last byte of response received, or terminal error"

    const-string v3, "ms"

    invoke-static {v0, v1, v3}, Lio/opencensus/stats/Measure$MeasureDouble;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/opencensus/stats/Measure$MeasureDouble;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_ROUNDTRIP_LATENCY:Lio/opencensus/stats/Measure$MeasureDouble;

    const-string v0, "opencensus.io/http/server/received_bytes"

    const-string v1, "Server-side total bytes received in request body (uncompressed)"

    invoke-static {v0, v1, v2}, Lio/opencensus/stats/Measure$MeasureLong;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/opencensus/stats/Measure$MeasureLong;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_SERVER_RECEIVED_BYTES:Lio/opencensus/stats/Measure$MeasureLong;

    const-string v0, "opencensus.io/http/server/sent_bytes"

    const-string v1, "Server-side total bytes sent in response bodies (uncompressed)"

    invoke-static {v0, v1, v2}, Lio/opencensus/stats/Measure$MeasureLong;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/opencensus/stats/Measure$MeasureLong;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_SERVER_SENT_BYTES:Lio/opencensus/stats/Measure$MeasureLong;

    const-string v0, "opencensus.io/http/server/server_latency"

    const-string v1, "Server-side time between first byte of request headers received to last byte of response sent, or terminal error"

    invoke-static {v0, v1, v3}, Lio/opencensus/stats/Measure$MeasureDouble;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/opencensus/stats/Measure$MeasureDouble;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_SERVER_LATENCY:Lio/opencensus/stats/Measure$MeasureDouble;

    const-string v0, "http_client_host"

    invoke-static {v0}, Lio/opencensus/tags/TagKey;->create(Ljava/lang/String;)Lio/opencensus/tags/TagKey;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_HOST:Lio/opencensus/tags/TagKey;

    const-string v0, "http_server_host"

    invoke-static {v0}, Lio/opencensus/tags/TagKey;->create(Ljava/lang/String;)Lio/opencensus/tags/TagKey;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_SERVER_HOST:Lio/opencensus/tags/TagKey;

    const-string v0, "http_client_status"

    invoke-static {v0}, Lio/opencensus/tags/TagKey;->create(Ljava/lang/String;)Lio/opencensus/tags/TagKey;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_STATUS:Lio/opencensus/tags/TagKey;

    const-string v0, "http_server_status"

    invoke-static {v0}, Lio/opencensus/tags/TagKey;->create(Ljava/lang/String;)Lio/opencensus/tags/TagKey;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_SERVER_STATUS:Lio/opencensus/tags/TagKey;

    const-string v0, "http_client_path"

    invoke-static {v0}, Lio/opencensus/tags/TagKey;->create(Ljava/lang/String;)Lio/opencensus/tags/TagKey;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_PATH:Lio/opencensus/tags/TagKey;

    const-string v0, "http_server_path"

    invoke-static {v0}, Lio/opencensus/tags/TagKey;->create(Ljava/lang/String;)Lio/opencensus/tags/TagKey;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_SERVER_PATH:Lio/opencensus/tags/TagKey;

    const-string v0, "http_client_method"

    invoke-static {v0}, Lio/opencensus/tags/TagKey;->create(Ljava/lang/String;)Lio/opencensus/tags/TagKey;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_METHOD:Lio/opencensus/tags/TagKey;

    const-string v0, "http_server_method"

    invoke-static {v0}, Lio/opencensus/tags/TagKey;->create(Ljava/lang/String;)Lio/opencensus/tags/TagKey;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_SERVER_METHOD:Lio/opencensus/tags/TagKey;

    const-string v0, "http_server_route"

    invoke-static {v0}, Lio/opencensus/tags/TagKey;->create(Ljava/lang/String;)Lio/opencensus/tags/TagKey;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_SERVER_ROUTE:Lio/opencensus/tags/TagKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
