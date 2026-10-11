.class public Lonyx/org/apache/commons/io/file/Counters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/file/Counters$PathCounters;,
        Lonyx/org/apache/commons/io/file/Counters$h;,
        Lonyx/org/apache/commons/io/file/Counters$g;,
        Lonyx/org/apache/commons/io/file/Counters$f;,
        Lonyx/org/apache/commons/io/file/Counters$e;,
        Lonyx/org/apache/commons/io/file/Counters$Counter;,
        Lonyx/org/apache/commons/io/file/Counters$d;,
        Lonyx/org/apache/commons/io/file/Counters$c;,
        Lonyx/org/apache/commons/io/file/Counters$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bigIntegerCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;
    .locals 2

    new-instance v0, Lonyx/org/apache/commons/io/file/Counters$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lonyx/org/apache/commons/io/file/Counters$c;-><init>(Lonyx/org/apache/commons/io/file/Counters$a;)V

    return-object v0
.end method

.method public static bigIntegerPathCounters()Lonyx/org/apache/commons/io/file/Counters$PathCounters;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/file/Counters$d;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/file/Counters$d;-><init>()V

    return-object v0
.end method

.method public static longCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;
    .locals 2

    new-instance v0, Lonyx/org/apache/commons/io/file/Counters$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lonyx/org/apache/commons/io/file/Counters$e;-><init>(Lonyx/org/apache/commons/io/file/Counters$a;)V

    return-object v0
.end method

.method public static longPathCounters()Lonyx/org/apache/commons/io/file/Counters$PathCounters;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/file/Counters$f;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/file/Counters$f;-><init>()V

    return-object v0
.end method

.method public static noopCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/file/Counters$g;->a:Lonyx/org/apache/commons/io/file/Counters$g;

    return-object v0
.end method

.method public static noopPathCounters()Lonyx/org/apache/commons/io/file/Counters$PathCounters;
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/file/Counters$h;->d:Lonyx/org/apache/commons/io/file/Counters$h;

    return-object v0
.end method
