.class public final Lio/opencensus/contrib/http/util/HttpViewConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HTTP_CLIENT_COMPLETED_COUNT_VIEW:Lio/opencensus/stats/View;

.field public static final HTTP_CLIENT_RECEIVED_BYTES_VIEW:Lio/opencensus/stats/View;

.field public static final HTTP_CLIENT_ROUNDTRIP_LATENCY_VIEW:Lio/opencensus/stats/View;

.field public static final HTTP_CLIENT_SENT_BYTES_VIEW:Lio/opencensus/stats/View;

.field public static final HTTP_SERVER_COMPLETED_COUNT_VIEW:Lio/opencensus/stats/View;

.field public static final HTTP_SERVER_LATENCY_VIEW:Lio/opencensus/stats/View;

.field public static final HTTP_SERVER_RECEIVED_BYTES_VIEW:Lio/opencensus/stats/View;

.field public static final HTTP_SERVER_SENT_BYTES_VIEW:Lio/opencensus/stats/View;

.field public static final a:Lio/opencensus/stats/Aggregation;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final b:Lio/opencensus/stats/Aggregation;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final c:Lio/opencensus/stats/Aggregation;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    invoke-static {}, Lio/opencensus/stats/Aggregation$Count;->create()Lio/opencensus/stats/Aggregation$Count;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpViewConstants;->a:Lio/opencensus/stats/Aggregation;

    const/16 v1, 0xe

    new-array v2, v1, [Ljava/lang/Double;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const-wide/high16 v7, 0x40a0000000000000L    # 2048.0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v2, v7

    const-wide/high16 v8, 0x40b0000000000000L    # 4096.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v2, v8

    const-wide/high16 v9, 0x40d0000000000000L    # 16384.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v9, 0x4

    aput-object v5, v2, v9

    const-wide/high16 v10, 0x40f0000000000000L    # 65536.0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v10, 0x5

    aput-object v5, v2, v10

    const-wide/high16 v11, 0x4110000000000000L    # 262144.0

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v11, 0x6

    aput-object v5, v2, v11

    const-wide/high16 v12, 0x4130000000000000L    # 1048576.0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v12, 0x7

    aput-object v5, v2, v12

    const-wide/high16 v13, 0x4150000000000000L    # 4194304.0

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/16 v13, 0x8

    aput-object v5, v2, v13

    const-wide/high16 v14, 0x4170000000000000L    # 1.6777216E7

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/16 v14, 0x9

    aput-object v5, v2, v14

    const-wide/high16 v15, 0x4190000000000000L    # 6.7108864E7

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/16 v15, 0xa

    aput-object v5, v2, v15

    const-wide/high16 v16, 0x41b0000000000000L    # 2.68435456E8

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/16 v16, 0xb

    aput-object v5, v2, v16

    const-wide/high16 v17, 0x41d0000000000000L    # 1.073741824E9

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/16 v17, 0xc

    aput-object v5, v2, v17

    const-wide/high16 v18, 0x41f0000000000000L    # 4.294967296E9

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/16 v18, 0xd

    aput-object v5, v2, v18

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lio/opencensus/stats/BucketBoundaries;->create(Ljava/util/List;)Lio/opencensus/stats/BucketBoundaries;

    move-result-object v2

    invoke-static {v2}, Lio/opencensus/stats/Aggregation$Distribution;->create(Lio/opencensus/stats/BucketBoundaries;)Lio/opencensus/stats/Aggregation$Distribution;

    move-result-object v2

    sput-object v2, Lio/opencensus/contrib/http/util/HttpViewConstants;->b:Lio/opencensus/stats/Aggregation;

    const/16 v5, 0x23

    new-array v5, v5, [Ljava/lang/Double;

    aput-object v3, v5, v4

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v6

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v7

    const-wide/high16 v19, 0x4008000000000000L    # 3.0

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v8

    const-wide/high16 v19, 0x4010000000000000L    # 4.0

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v9

    const-wide/high16 v19, 0x4014000000000000L    # 5.0

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v10

    const-wide/high16 v9, 0x4018000000000000L    # 6.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v11

    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v12

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v13

    const-wide/high16 v9, 0x402a000000000000L    # 13.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v14

    const-wide/high16 v9, 0x4030000000000000L    # 16.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v15

    const-wide/high16 v9, 0x4034000000000000L    # 20.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v16

    const-wide/high16 v9, 0x4039000000000000L    # 25.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v17

    const-wide/high16 v9, 0x403e000000000000L    # 30.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v18

    const-wide/high16 v9, 0x4044000000000000L    # 40.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v1

    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0xf

    aput-object v1, v5, v3

    const-wide v9, 0x4050400000000000L    # 65.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x10

    aput-object v1, v5, v3

    const-wide/high16 v9, 0x4054000000000000L    # 80.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x11

    aput-object v1, v5, v3

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x12

    aput-object v1, v5, v3

    const-wide v9, 0x4060400000000000L    # 130.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x13

    aput-object v1, v5, v3

    const-wide/high16 v9, 0x4064000000000000L    # 160.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x14

    aput-object v1, v5, v3

    const-wide/high16 v9, 0x4069000000000000L    # 200.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x15

    aput-object v1, v5, v3

    const-wide v9, 0x406f400000000000L    # 250.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x16

    aput-object v1, v5, v3

    const-wide v9, 0x4072c00000000000L    # 300.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x17

    aput-object v1, v5, v3

    const-wide/high16 v9, 0x4079000000000000L    # 400.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x18

    aput-object v1, v5, v3

    const-wide v9, 0x407f400000000000L    # 500.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x19

    aput-object v1, v5, v3

    const-wide v9, 0x4084500000000000L    # 650.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x1a

    aput-object v1, v5, v3

    const-wide/high16 v9, 0x4089000000000000L    # 800.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x1b

    aput-object v1, v5, v3

    const-wide v9, 0x408f400000000000L    # 1000.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x1c

    aput-object v1, v5, v3

    const-wide v9, 0x409f400000000000L    # 2000.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x1d

    aput-object v1, v5, v3

    const-wide v9, 0x40b3880000000000L    # 5000.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x1e

    aput-object v1, v5, v3

    const-wide v9, 0x40c3880000000000L    # 10000.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x1f

    aput-object v1, v5, v3

    const-wide v9, 0x40d3880000000000L    # 20000.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x20

    aput-object v1, v5, v3

    const-wide v9, 0x40e86a0000000000L    # 50000.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x21

    aput-object v1, v5, v3

    const-wide v9, 0x40f86a0000000000L    # 100000.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v3, 0x22

    aput-object v1, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lio/opencensus/stats/BucketBoundaries;->create(Ljava/util/List;)Lio/opencensus/stats/BucketBoundaries;

    move-result-object v1

    invoke-static {v1}, Lio/opencensus/stats/Aggregation$Distribution;->create(Lio/opencensus/stats/BucketBoundaries;)Lio/opencensus/stats/Aggregation$Distribution;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpViewConstants;->c:Lio/opencensus/stats/Aggregation;

    const-string v3, "opencensus.io/http/client/completed_count"

    invoke-static {v3}, Lio/opencensus/stats/View$Name;->create(Ljava/lang/String;)Lio/opencensus/stats/View$Name;

    move-result-object v3

    sget-object v5, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_ROUNDTRIP_LATENCY:Lio/opencensus/stats/Measure$MeasureDouble;

    new-array v9, v7, [Lio/opencensus/tags/TagKey;

    sget-object v10, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_METHOD:Lio/opencensus/tags/TagKey;

    aput-object v10, v9, v4

    sget-object v11, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_STATUS:Lio/opencensus/tags/TagKey;

    aput-object v11, v9, v6

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v12, "Count of client-side HTTP requests completed"

    invoke-static {v3, v12, v5, v0, v9}, Lio/opencensus/stats/View;->create(Lio/opencensus/stats/View$Name;Ljava/lang/String;Lio/opencensus/stats/Measure;Lio/opencensus/stats/Aggregation;Ljava/util/List;)Lio/opencensus/stats/View;

    move-result-object v3

    sput-object v3, Lio/opencensus/contrib/http/util/HttpViewConstants;->HTTP_CLIENT_COMPLETED_COUNT_VIEW:Lio/opencensus/stats/View;

    const-string v3, "opencensus.io/http/client/sent_bytes"

    invoke-static {v3}, Lio/opencensus/stats/View$Name;->create(Ljava/lang/String;)Lio/opencensus/stats/View$Name;

    move-result-object v3

    sget-object v9, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_SENT_BYTES:Lio/opencensus/stats/Measure$MeasureLong;

    new-array v12, v7, [Lio/opencensus/tags/TagKey;

    aput-object v10, v12, v4

    aput-object v11, v12, v6

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string v13, "Size distribution of client-side HTTP request body"

    invoke-static {v3, v13, v9, v2, v12}, Lio/opencensus/stats/View;->create(Lio/opencensus/stats/View$Name;Ljava/lang/String;Lio/opencensus/stats/Measure;Lio/opencensus/stats/Aggregation;Ljava/util/List;)Lio/opencensus/stats/View;

    move-result-object v3

    sput-object v3, Lio/opencensus/contrib/http/util/HttpViewConstants;->HTTP_CLIENT_SENT_BYTES_VIEW:Lio/opencensus/stats/View;

    const-string v3, "opencensus.io/http/client/received_bytes"

    invoke-static {v3}, Lio/opencensus/stats/View$Name;->create(Ljava/lang/String;)Lio/opencensus/stats/View$Name;

    move-result-object v3

    sget-object v9, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_RECEIVED_BYTES:Lio/opencensus/stats/Measure$MeasureLong;

    new-array v12, v7, [Lio/opencensus/tags/TagKey;

    aput-object v10, v12, v4

    aput-object v11, v12, v6

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string v13, "Size distribution of client-side HTTP response body"

    invoke-static {v3, v13, v9, v2, v12}, Lio/opencensus/stats/View;->create(Lio/opencensus/stats/View$Name;Ljava/lang/String;Lio/opencensus/stats/Measure;Lio/opencensus/stats/Aggregation;Ljava/util/List;)Lio/opencensus/stats/View;

    move-result-object v3

    sput-object v3, Lio/opencensus/contrib/http/util/HttpViewConstants;->HTTP_CLIENT_RECEIVED_BYTES_VIEW:Lio/opencensus/stats/View;

    const-string v3, "opencensus.io/http/client/roundtrip_latency"

    invoke-static {v3}, Lio/opencensus/stats/View$Name;->create(Ljava/lang/String;)Lio/opencensus/stats/View$Name;

    move-result-object v3

    new-array v9, v7, [Lio/opencensus/tags/TagKey;

    aput-object v10, v9, v4

    aput-object v11, v9, v6

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v10, "Roundtrip latency distribution of client-side HTTP requests"

    invoke-static {v3, v10, v5, v1, v9}, Lio/opencensus/stats/View;->create(Lio/opencensus/stats/View$Name;Ljava/lang/String;Lio/opencensus/stats/Measure;Lio/opencensus/stats/Aggregation;Ljava/util/List;)Lio/opencensus/stats/View;

    move-result-object v3

    sput-object v3, Lio/opencensus/contrib/http/util/HttpViewConstants;->HTTP_CLIENT_ROUNDTRIP_LATENCY_VIEW:Lio/opencensus/stats/View;

    const-string v3, "opencensus.io/http/server/completed_count"

    invoke-static {v3}, Lio/opencensus/stats/View$Name;->create(Ljava/lang/String;)Lio/opencensus/stats/View$Name;

    move-result-object v3

    sget-object v5, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_SERVER_LATENCY:Lio/opencensus/stats/Measure$MeasureDouble;

    new-array v9, v8, [Lio/opencensus/tags/TagKey;

    sget-object v10, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_SERVER_METHOD:Lio/opencensus/tags/TagKey;

    aput-object v10, v9, v4

    sget-object v11, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_SERVER_ROUTE:Lio/opencensus/tags/TagKey;

    aput-object v11, v9, v6

    sget-object v12, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_SERVER_STATUS:Lio/opencensus/tags/TagKey;

    aput-object v12, v9, v7

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v13, "Count of HTTP server-side requests serving completed"

    invoke-static {v3, v13, v5, v0, v9}, Lio/opencensus/stats/View;->create(Lio/opencensus/stats/View$Name;Ljava/lang/String;Lio/opencensus/stats/Measure;Lio/opencensus/stats/Aggregation;Ljava/util/List;)Lio/opencensus/stats/View;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpViewConstants;->HTTP_SERVER_COMPLETED_COUNT_VIEW:Lio/opencensus/stats/View;

    const-string v0, "opencensus.io/http/server/received_bytes"

    invoke-static {v0}, Lio/opencensus/stats/View$Name;->create(Ljava/lang/String;)Lio/opencensus/stats/View$Name;

    move-result-object v0

    sget-object v3, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_SERVER_RECEIVED_BYTES:Lio/opencensus/stats/Measure$MeasureLong;

    new-array v9, v8, [Lio/opencensus/tags/TagKey;

    aput-object v10, v9, v4

    aput-object v11, v9, v6

    aput-object v12, v9, v7

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v13, "Size distribution of server-side HTTP request body"

    invoke-static {v0, v13, v3, v2, v9}, Lio/opencensus/stats/View;->create(Lio/opencensus/stats/View$Name;Ljava/lang/String;Lio/opencensus/stats/Measure;Lio/opencensus/stats/Aggregation;Ljava/util/List;)Lio/opencensus/stats/View;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpViewConstants;->HTTP_SERVER_RECEIVED_BYTES_VIEW:Lio/opencensus/stats/View;

    const-string v0, "opencensus.io/http/server/sent_bytes"

    invoke-static {v0}, Lio/opencensus/stats/View$Name;->create(Ljava/lang/String;)Lio/opencensus/stats/View$Name;

    move-result-object v0

    sget-object v3, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_SERVER_SENT_BYTES:Lio/opencensus/stats/Measure$MeasureLong;

    new-array v9, v8, [Lio/opencensus/tags/TagKey;

    aput-object v10, v9, v4

    aput-object v11, v9, v6

    aput-object v12, v9, v7

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v13, "Size distribution of server-side HTTP response body"

    invoke-static {v0, v13, v3, v2, v9}, Lio/opencensus/stats/View;->create(Lio/opencensus/stats/View$Name;Ljava/lang/String;Lio/opencensus/stats/Measure;Lio/opencensus/stats/Aggregation;Ljava/util/List;)Lio/opencensus/stats/View;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpViewConstants;->HTTP_SERVER_SENT_BYTES_VIEW:Lio/opencensus/stats/View;

    const-string v0, "opencensus.io/http/server/server_latency"

    invoke-static {v0}, Lio/opencensus/stats/View$Name;->create(Ljava/lang/String;)Lio/opencensus/stats/View$Name;

    move-result-object v0

    new-array v2, v8, [Lio/opencensus/tags/TagKey;

    aput-object v10, v2, v4

    aput-object v11, v2, v6

    aput-object v12, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Latency distribution of server-side HTTP requests serving"

    invoke-static {v0, v3, v5, v1, v2}, Lio/opencensus/stats/View;->create(Lio/opencensus/stats/View$Name;Ljava/lang/String;Lio/opencensus/stats/Measure;Lio/opencensus/stats/Aggregation;Ljava/util/List;)Lio/opencensus/stats/View;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpViewConstants;->HTTP_SERVER_LATENCY_VIEW:Lio/opencensus/stats/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
