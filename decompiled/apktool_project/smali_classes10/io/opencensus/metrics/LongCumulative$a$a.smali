.class public final Lio/opencensus/metrics/LongCumulative$a$a;
.super Lio/opencensus/metrics/LongCumulative$LongPoint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/metrics/LongCumulative$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lio/opencensus/metrics/LongCumulative$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/opencensus/metrics/LongCumulative$a$a;

    invoke-direct {v0}, Lio/opencensus/metrics/LongCumulative$a$a;-><init>()V

    sput-object v0, Lio/opencensus/metrics/LongCumulative$a$a;->a:Lio/opencensus/metrics/LongCumulative$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/metrics/LongCumulative$LongPoint;-><init>()V

    return-void
.end method

.method public static synthetic a()Lio/opencensus/metrics/LongCumulative$a$a;
    .locals 1

    sget-object v0, Lio/opencensus/metrics/LongCumulative$a$a;->a:Lio/opencensus/metrics/LongCumulative$a$a;

    return-object v0
.end method


# virtual methods
.method public add(J)V
    .locals 0

    return-void
.end method
