.class public final Lio/opencensus/stats/x$b;
.super Lio/opencensus/stats/MeasureMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/stats/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;


# instance fields
.field public a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/opencensus/stats/x$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/opencensus/stats/x$b;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/stats/MeasureMap;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/stats/x$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/stats/x$b;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Lio/opencensus/stats/Measure$MeasureDouble;D)Lio/opencensus/stats/MeasureMap;
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double p1, p2, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lio/opencensus/stats/x$b;->a:Z

    :cond_0
    return-object p0
.end method

.method public put(Lio/opencensus/stats/Measure$MeasureLong;J)Lio/opencensus/stats/MeasureMap;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/opencensus/stats/x$b;->a:Z

    :cond_0
    return-object p0
.end method

.method public record()V
    .locals 0

    .line 1
    return-void
.end method

.method public record(Lio/opencensus/tags/TagContext;)V
    .locals 1

    const-string v0, "tags"

    .line 2
    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean p0, p0, Lio/opencensus/stats/x$b;->a:Z

    if-eqz p0, :cond_0

    .line 4
    sget-object p0, Lio/opencensus/stats/x$b;->b:Ljava/util/logging/Logger;

    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v0, "Dropping values, value to record must be non-negative."

    invoke-virtual {p0, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
