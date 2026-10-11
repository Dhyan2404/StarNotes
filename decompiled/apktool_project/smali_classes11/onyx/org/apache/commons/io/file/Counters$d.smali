.class public final Lonyx/org/apache/commons/io/file/Counters$d;
.super Lonyx/org/apache/commons/io/file/Counters$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lonyx/org/apache/commons/io/file/Counters;->bigIntegerCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;

    move-result-object v0

    invoke-static {}, Lonyx/org/apache/commons/io/file/Counters;->bigIntegerCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;

    move-result-object v1

    invoke-static {}, Lonyx/org/apache/commons/io/file/Counters;->bigIntegerCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lonyx/org/apache/commons/io/file/Counters$b;-><init>(Lonyx/org/apache/commons/io/file/Counters$Counter;Lonyx/org/apache/commons/io/file/Counters$Counter;Lonyx/org/apache/commons/io/file/Counters$Counter;)V

    return-void
.end method
