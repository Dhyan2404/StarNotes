.class public interface abstract Lonyx/org/apache/commons/io/filefilter/ConditionalFileFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addFileFilter(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)V
.end method

.method public abstract getFileFilters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lonyx/org/apache/commons/io/filefilter/IOFileFilter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeFileFilter(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Z
.end method

.method public abstract setFileFilters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lonyx/org/apache/commons/io/filefilter/IOFileFilter;",
            ">;)V"
        }
    .end annotation
.end method
