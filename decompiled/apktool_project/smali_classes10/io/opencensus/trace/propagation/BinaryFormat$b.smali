.class public final Lio/opencensus/trace/propagation/BinaryFormat$b;
.super Lio/opencensus/trace/propagation/BinaryFormat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/propagation/BinaryFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/trace/propagation/BinaryFormat;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/propagation/BinaryFormat$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/propagation/BinaryFormat$b;-><init>()V

    return-void
.end method


# virtual methods
.method public fromByteArray([B)Lio/opencensus/trace/SpanContext;
    .locals 0

    const-string p0, "bytes"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lio/opencensus/trace/SpanContext;->INVALID:Lio/opencensus/trace/SpanContext;

    return-object p0
.end method

.method public toByteArray(Lio/opencensus/trace/SpanContext;)[B
    .locals 0

    const-string p0, "spanContext"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method
