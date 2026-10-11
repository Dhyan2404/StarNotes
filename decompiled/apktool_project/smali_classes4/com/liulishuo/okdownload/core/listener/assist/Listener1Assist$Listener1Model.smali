.class public Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener1Model"
.end annotation


# instance fields
.field public final a:I

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public volatile d:Ljava/lang/Boolean;

.field public e:I

.field public f:J

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->g:Ljava/util/concurrent/atomic/AtomicLong;

    iput p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->a:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->a:I

    return p0
.end method

.method public getTotalLength()J
    .locals 2

    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->f:J

    return-wide v0
.end method

.method public onInfoValid(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
    .locals 4
    .param p1    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlockCount()I

    move-result v0

    iput v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->e:I

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->f:J

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->b:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->b:Ljava/lang/Boolean;

    :cond_0
    iget-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->c:Ljava/lang/Boolean;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->c:Ljava/lang/Boolean;

    :cond_2
    iget-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->d:Ljava/lang/Boolean;

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->d:Ljava/lang/Boolean;

    :cond_3
    return-void
.end method
