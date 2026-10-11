.class public final Lonyx/org/apache/commons/io/file/Counters$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/file/Counters$Counter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/file/Counters$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lonyx/org/apache/commons/io/file/Counters$e;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 2

    iget-wide v0, p0, Lonyx/org/apache/commons/io/file/Counters$e;->a:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lonyx/org/apache/commons/io/file/Counters$e;->a:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lonyx/org/apache/commons/io/file/Counters$Counter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lonyx/org/apache/commons/io/file/Counters$Counter;

    iget-wide v3, p0, Lonyx/org/apache/commons/io/file/Counters$e;->a:J

    invoke-interface {p1}, Lonyx/org/apache/commons/io/file/Counters$Counter;->get()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public get()J
    .locals 2

    iget-wide v0, p0, Lonyx/org/apache/commons/io/file/Counters$e;->a:J

    return-wide v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 2

    iget-wide v0, p0, Lonyx/org/apache/commons/io/file/Counters$e;->a:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getLong()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lonyx/org/apache/commons/io/file/Counters$e;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lonyx/org/apache/commons/io/file/Counters$e;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public increment()V
    .locals 4

    iget-wide v0, p0, Lonyx/org/apache/commons/io/file/Counters$e;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lonyx/org/apache/commons/io/file/Counters$e;->a:J

    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lonyx/org/apache/commons/io/file/Counters$e;->a:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lonyx/org/apache/commons/io/file/Counters$e;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
