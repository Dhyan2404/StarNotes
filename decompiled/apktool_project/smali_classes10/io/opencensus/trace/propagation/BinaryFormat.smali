.class public abstract Lio/opencensus/trace/propagation/BinaryFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/propagation/BinaryFormat$b;
    }
.end annotation


# static fields
.field public static final a:Lio/opencensus/trace/propagation/BinaryFormat$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/opencensus/trace/propagation/BinaryFormat$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/propagation/BinaryFormat$b;-><init>(Lio/opencensus/trace/propagation/BinaryFormat$a;)V

    sput-object v0, Lio/opencensus/trace/propagation/BinaryFormat;->a:Lio/opencensus/trace/propagation/BinaryFormat$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/opencensus/trace/propagation/BinaryFormat;
    .locals 1

    sget-object v0, Lio/opencensus/trace/propagation/BinaryFormat;->a:Lio/opencensus/trace/propagation/BinaryFormat$b;

    return-object v0
.end method


# virtual methods
.method public fromBinaryValue([B)Lio/opencensus/trace/SpanContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lio/opencensus/trace/propagation/BinaryFormat;->fromByteArray([B)Lio/opencensus/trace/SpanContext;

    move-result-object p0
    :try_end_0
    .catch Lio/opencensus/trace/propagation/SpanContextParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/text/ParseException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public fromByteArray([B)Lio/opencensus/trace/SpanContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/opencensus/trace/propagation/SpanContextParseException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lio/opencensus/trace/propagation/BinaryFormat;->fromBinaryValue([B)Lio/opencensus/trace/SpanContext;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lio/opencensus/trace/propagation/SpanContextParseException;

    const-string v0, "Error while parsing."

    invoke-direct {p1, v0, p0}, Lio/opencensus/trace/propagation/SpanContextParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public toBinaryValue(Lio/opencensus/trace/SpanContext;)[B
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/opencensus/trace/propagation/BinaryFormat;->toByteArray(Lio/opencensus/trace/SpanContext;)[B

    move-result-object p0

    return-object p0
.end method

.method public toByteArray(Lio/opencensus/trace/SpanContext;)[B
    .locals 0

    invoke-virtual {p0, p1}, Lio/opencensus/trace/propagation/BinaryFormat;->toBinaryValue(Lio/opencensus/trace/SpanContext;)[B

    move-result-object p0

    return-object p0
.end method
