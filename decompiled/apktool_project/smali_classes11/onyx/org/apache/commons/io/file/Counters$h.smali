.class public final Lonyx/org/apache/commons/io/file/Counters$h;
.super Lonyx/org/apache/commons/io/file/Counters$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field public static final d:Lonyx/org/apache/commons/io/file/Counters$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/file/Counters$h;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/file/Counters$h;-><init>()V

    sput-object v0, Lonyx/org/apache/commons/io/file/Counters$h;->d:Lonyx/org/apache/commons/io/file/Counters$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lonyx/org/apache/commons/io/file/Counters;->noopCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;

    move-result-object v0

    invoke-static {}, Lonyx/org/apache/commons/io/file/Counters;->noopCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;

    move-result-object v1

    invoke-static {}, Lonyx/org/apache/commons/io/file/Counters;->noopCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lonyx/org/apache/commons/io/file/Counters$b;-><init>(Lonyx/org/apache/commons/io/file/Counters$Counter;Lonyx/org/apache/commons/io/file/Counters$Counter;Lonyx/org/apache/commons/io/file/Counters$Counter;)V

    return-void
.end method
