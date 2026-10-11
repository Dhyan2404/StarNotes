.class public final Lio/opencensus/metrics/LongCumulative$a;
.super Lio/opencensus/metrics/LongCumulative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/metrics/LongCumulative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/metrics/LongCumulative$a$a;
    }
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/opencensus/metrics/LabelKey;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/opencensus/metrics/LongCumulative;-><init>()V

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lio/opencensus/metrics/LongCumulative$a;->a:I

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/opencensus/metrics/LongCumulative$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/opencensus/metrics/LabelKey;",
            ">;)",
            "Lio/opencensus/metrics/LongCumulative$a;"
        }
    .end annotation

    new-instance v0, Lio/opencensus/metrics/LongCumulative$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/opencensus/metrics/LongCumulative$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public c()Lio/opencensus/metrics/LongCumulative$a$a;
    .locals 0

    invoke-static {}, Lio/opencensus/metrics/LongCumulative$a$a;->a()Lio/opencensus/metrics/LongCumulative$a$a;

    move-result-object p0

    return-object p0
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public d(Ljava/util/List;)Lio/opencensus/metrics/LongCumulative$a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/opencensus/metrics/LabelValue;",
            ">;)",
            "Lio/opencensus/metrics/LongCumulative$a$a;"
        }
    .end annotation

    const-string v0, "labelValues"

    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "labelValue"

    invoke-static {v0, v1}, Lio/opencensus/internal/Utils;->checkListElementNotNull(Ljava/util/List;Ljava/lang/Object;)V

    iget p0, p0, Lio/opencensus/metrics/LongCumulative$a;->a:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "Label Keys and Label Values don\'t have same size."

    invoke-static {p0, p1}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {}, Lio/opencensus/metrics/LongCumulative$a$a;->a()Lio/opencensus/metrics/LongCumulative$a$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultTimeSeries()Lio/opencensus/metrics/LongCumulative$LongPoint;
    .locals 0

    invoke-virtual {p0}, Lio/opencensus/metrics/LongCumulative$a;->c()Lio/opencensus/metrics/LongCumulative$a$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOrCreateTimeSeries(Ljava/util/List;)Lio/opencensus/metrics/LongCumulative$LongPoint;
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/metrics/LongCumulative$a;->d(Ljava/util/List;)Lio/opencensus/metrics/LongCumulative$a$a;

    move-result-object p0

    return-object p0
.end method

.method public removeTimeSeries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/opencensus/metrics/LabelValue;",
            ">;)V"
        }
    .end annotation

    const-string p0, "labelValues"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
