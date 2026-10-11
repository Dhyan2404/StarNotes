.class Lcom/couchbase/lite/Array$ArrayIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field private final mutations:J

.field final synthetic this$0:Lcom/couchbase/lite/Array;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Array;)V
    .locals 2

    iput-object p1, p0, Lcom/couchbase/lite/Array$ArrayIterator;->this$0:Lcom/couchbase/lite/Array;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/MCollection;->getLocalMutationCount()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/couchbase/lite/Array$ArrayIterator;->mutations:J

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/couchbase/lite/Array$ArrayIterator;->index:I

    iget-object p0, p0, Lcom/couchbase/lite/Array$ArrayIterator;->this$0:Lcom/couchbase/lite/Array;

    invoke-virtual {p0}, Lcom/couchbase/lite/Array;->count()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Array$ArrayIterator;->this$0:Lcom/couchbase/lite/Array;

    iget-object v0, v0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/MCollection;->getLocalMutationCount()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/couchbase/lite/Array$ArrayIterator;->mutations:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/couchbase/lite/Array$ArrayIterator;->this$0:Lcom/couchbase/lite/Array;

    iget v1, p0, Lcom/couchbase/lite/Array$ArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/couchbase/lite/Array$ArrayIterator;->index:I

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/Array;->getValue(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string v0, "Array modified during iteration"

    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
