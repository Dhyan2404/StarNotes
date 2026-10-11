.class public abstract Lio/opencensus/trace/export/SpanExporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/export/SpanExporter$b;,
        Lio/opencensus/trace/export/SpanExporter$Handler;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final a:Lio/opencensus/trace/export/SpanExporter;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/opencensus/trace/export/SpanExporter$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/export/SpanExporter$b;-><init>(Lio/opencensus/trace/export/SpanExporter$a;)V

    sput-object v0, Lio/opencensus/trace/export/SpanExporter;->a:Lio/opencensus/trace/export/SpanExporter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNoopSpanExporter()Lio/opencensus/trace/export/SpanExporter;
    .locals 1

    sget-object v0, Lio/opencensus/trace/export/SpanExporter;->a:Lio/opencensus/trace/export/SpanExporter;

    return-object v0
.end method


# virtual methods
.method public abstract registerHandler(Ljava/lang/String;Lio/opencensus/trace/export/SpanExporter$Handler;)V
.end method

.method public abstract unregisterHandler(Ljava/lang/String;)V
.end method
