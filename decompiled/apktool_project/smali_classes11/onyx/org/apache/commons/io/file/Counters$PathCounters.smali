.class public interface abstract Lonyx/org/apache/commons/io/file/Counters$PathCounters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PathCounters"
.end annotation


# virtual methods
.method public abstract getByteCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;
.end method

.method public abstract getDirectoryCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;
.end method

.method public abstract getFileCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;
.end method

.method public reset()V
    .locals 0

    return-void
.end method
