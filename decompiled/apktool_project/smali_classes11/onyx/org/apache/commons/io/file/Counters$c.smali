.class public final Lonyx/org/apache/commons/io/file/Counters$c;
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
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lonyx/org/apache/commons/io/file/Counters$c;->a:Ljava/math/BigInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/file/Counters$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lonyx/org/apache/commons/io/file/Counters$c;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 1

    iget-object v0, p0, Lonyx/org/apache/commons/io/file/Counters$c;->a:Ljava/math/BigInteger;

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/file/Counters$c;->a:Ljava/math/BigInteger;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lonyx/org/apache/commons/io/file/Counters$Counter;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lonyx/org/apache/commons/io/file/Counters$Counter;

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/Counters$c;->a:Ljava/math/BigInteger;

    invoke-interface {p1}, Lonyx/org/apache/commons/io/file/Counters$Counter;->getBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get()J
    .locals 2

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/Counters$c;->a:Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/dri;->a(Ljava/math/BigInteger;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/Counters$c;->a:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getLong()Ljava/lang/Long;
    .locals 2

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/Counters$c;->a:Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/dri;->a(Ljava/math/BigInteger;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/Counters$c;->a:Ljava/math/BigInteger;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public increment()V
    .locals 2

    iget-object v0, p0, Lonyx/org/apache/commons/io/file/Counters$c;->a:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/file/Counters$c;->a:Ljava/math/BigInteger;

    return-void
.end method

.method public reset()V
    .locals 1

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lonyx/org/apache/commons/io/file/Counters$c;->a:Ljava/math/BigInteger;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/Counters$c;->a:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
