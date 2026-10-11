.class Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;
.super Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/util/TimeoutMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimedEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private mTimestamp:J

.field final synthetic this$0:Lcom/twelvemonkeys/util/TimeoutMap;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/TimeoutMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;->this$0:Lcom/twelvemonkeys/util/TimeoutMap;

    invoke-direct {p0, p2, p3}, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public final expires()J
    .locals 4

    iget-wide v0, p0, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;->mTimestamp:J

    iget-object p0, p0, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;->this$0:Lcom/twelvemonkeys/util/TimeoutMap;

    iget-wide v2, p0, Lcom/twelvemonkeys/util/TimeoutMap;->expiryTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final isExpired()Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;->isExpiredBy(J)Z

    move-result p0

    return p0
.end method

.method public final isExpiredBy(J)Z
    .locals 2

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;->expires()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;->mTimestamp:J

    invoke-super {p0, p1}, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
