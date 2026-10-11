.class public Lorg/scribe/services/TimestampServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/scribe/services/TimestampService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/scribe/services/TimestampServiceImpl$a;
    }
.end annotation


# instance fields
.field public a:Lorg/scribe/services/TimestampServiceImpl$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/scribe/services/TimestampServiceImpl$a;

    invoke-direct {v0}, Lorg/scribe/services/TimestampServiceImpl$a;-><init>()V

    iput-object v0, p0, Lorg/scribe/services/TimestampServiceImpl;->a:Lorg/scribe/services/TimestampServiceImpl$a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .locals 4

    iget-object p0, p0, Lorg/scribe/services/TimestampServiceImpl;->a:Lorg/scribe/services/TimestampServiceImpl$a;

    invoke-virtual {p0}, Lorg/scribe/services/TimestampServiceImpl$a;->a()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public b(Lorg/scribe/services/TimestampServiceImpl$a;)V
    .locals 0

    iput-object p1, p0, Lorg/scribe/services/TimestampServiceImpl;->a:Lorg/scribe/services/TimestampServiceImpl$a;

    return-void
.end method

.method public getNonce()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/scribe/services/TimestampServiceImpl;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lorg/scribe/services/TimestampServiceImpl;->a:Lorg/scribe/services/TimestampServiceImpl$a;

    invoke-virtual {p0}, Lorg/scribe/services/TimestampServiceImpl$a;->b()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimestampInSeconds()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/scribe/services/TimestampServiceImpl;->a()Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
