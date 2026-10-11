.class public final Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$a;->e:Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$a;->e:Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->access$onTick(Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;J)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$a;->a(J)V

    return-void
.end method
