.class Lcom/couchbase/lite/Dictionary$DictionaryIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Dictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DictionaryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mutations:J

.field final synthetic this$0:Lcom/couchbase/lite/Dictionary;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Dictionary;)V
    .locals 2

    iput-object p1, p0, Lcom/couchbase/lite/Dictionary$DictionaryIterator;->this$0:Lcom/couchbase/lite/Dictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/MCollection;->getLocalMutationCount()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/couchbase/lite/Dictionary$DictionaryIterator;->mutations:J

    invoke-virtual {p1}, Lcom/couchbase/lite/Dictionary;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/Dictionary$DictionaryIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/Dictionary$DictionaryIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/couchbase/lite/Dictionary$DictionaryIterator;->next()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/couchbase/lite/Dictionary$DictionaryIterator;->this$0:Lcom/couchbase/lite/Dictionary;

    iget-object v0, v0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/MCollection;->getLocalMutationCount()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/couchbase/lite/Dictionary$DictionaryIterator;->mutations:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/couchbase/lite/Dictionary$DictionaryIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string v0, "Dictionary modified during iteration"

    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
