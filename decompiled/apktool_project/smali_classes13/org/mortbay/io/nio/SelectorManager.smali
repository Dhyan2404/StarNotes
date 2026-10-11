.class public abstract Lorg/mortbay/io/nio/SelectorManager;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/io/nio/SelectorManager$b;,
        Lorg/mortbay/io/nio/SelectorManager$a;,
        Lorg/mortbay/io/nio/SelectorManager$SelectSet;
    }
.end annotation


# static fields
.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I


# instance fields
.field public e:Z

.field public f:J

.field public g:J

.field public h:J

.field public transient i:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

.field public j:I

.field public volatile k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "org.mortbay.io.nio.JVMBUG_THRESHHOLD"

    const/16 v1, 0x200

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/mortbay/io/nio/SelectorManager;->l:I

    const-string v0, "org.mortbay.io.nio.MONITOR_PERIOD"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/mortbay/io/nio/SelectorManager;->m:I

    const-string v0, "org.mortbay.io.nio.MAX_SELECTS"

    const/16 v1, 0x3a98

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/mortbay/io/nio/SelectorManager;->n:I

    const-string v0, "org.mortbay.io.nio.BUSY_PAUSE"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/mortbay/io/nio/SelectorManager;->o:I

    const-string v0, "org.mortbay.io.nio.BUSY_KEY"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/mortbay/io/nio/SelectorManager;->p:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/io/nio/SelectorManager;->e:Z

    iput v0, p0, Lorg/mortbay/io/nio/SelectorManager;->j:I

    return-void
.end method

.method public static synthetic f()I
    .locals 1

    sget v0, Lorg/mortbay/io/nio/SelectorManager;->m:I

    return v0
.end method

.method public static synthetic g(Lorg/mortbay/io/nio/SelectorManager;)J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager;->g:J

    return-wide v0
.end method

.method public static synthetic h(Lorg/mortbay/io/nio/SelectorManager;)J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager;->h:J

    return-wide v0
.end method

.method public static synthetic i(Lorg/mortbay/io/nio/SelectorManager;)J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager;->f:J

    return-wide v0
.end method

.method public static synthetic j()I
    .locals 1

    sget v0, Lorg/mortbay/io/nio/SelectorManager;->o:I

    return v0
.end method

.method public static synthetic k()I
    .locals 1

    sget v0, Lorg/mortbay/io/nio/SelectorManager;->n:I

    return v0
.end method

.method public static synthetic l()I
    .locals 1

    sget v0, Lorg/mortbay/io/nio/SelectorManager;->l:I

    return v0
.end method

.method public static synthetic m()I
    .locals 1

    sget v0, Lorg/mortbay/io/nio/SelectorManager;->p:I

    return v0
.end method

.method public static synthetic n(Lorg/mortbay/io/nio/SelectorManager;)[Lorg/mortbay/io/nio/SelectorManager$SelectSet;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/nio/SelectorManager;->i:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    return-object p0
.end method


# virtual methods
.method public abstract acceptChannel(Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract dispatch(Ljava/lang/Runnable;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public doSelect(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mortbay/io/nio/SelectorManager;->i:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-le v0, p1, :cond_0

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->doSelect()V

    :cond_0
    return-void
.end method

.method public doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p0, Lorg/mortbay/io/nio/SelectorManager;->j:I

    new-array v0, v0, [Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectorManager;->i:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/io/nio/SelectorManager;->i:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-direct {v2, p0, v0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;-><init>(Lorg/mortbay/io/nio/SelectorManager;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStart()V

    return-void
.end method

.method public doStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager;->i:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/io/nio/SelectorManager;->i:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->b()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStop()V

    return-void
.end method

.method public abstract endPointClosed(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V
.end method

.method public abstract endPointOpened(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V
.end method

.method public getLowResourcesConnections()J
    .locals 4

    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager;->g:J

    iget p0, p0, Lorg/mortbay/io/nio/SelectorManager;->j:I

    int-to-long v2, p0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getLowResourcesMaxIdleTime()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager;->h:J

    return-wide v0
.end method

.method public getMaxIdleTime()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager;->f:J

    return-wide v0
.end method

.method public getSelectSets()I
    .locals 0

    iget p0, p0, Lorg/mortbay/io/nio/SelectorManager;->j:I

    return p0
.end method

.method public isDelaySelectKeyUpdate()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/io/nio/SelectorManager;->e:Z

    return p0
.end method

.method public abstract newConnection(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectChannelEndPoint;)Lorg/mortbay/io/Connection;
.end method

.method public abstract newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public register(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget v0, p0, Lorg/mortbay/io/nio/SelectorManager;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mortbay/io/nio/SelectorManager;->k:I

    .line 8
    iget v1, p0, Lorg/mortbay/io/nio/SelectorManager;->j:I

    rem-int/2addr v0, v1

    .line 9
    iget-object p0, p0, Lorg/mortbay/io/nio/SelectorManager;->i:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    aget-object p0, p0, v0

    .line 10
    invoke-virtual {p0, p1}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    return-void
.end method

.method public register(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/mortbay/io/nio/SelectorManager;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mortbay/io/nio/SelectorManager;->k:I

    .line 2
    iget v1, p0, Lorg/mortbay/io/nio/SelectorManager;->j:I

    rem-int/2addr v0, v1

    .line 3
    iget-object p0, p0, Lorg/mortbay/io/nio/SelectorManager;->i:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    if-eqz p0, :cond_0

    .line 4
    aget-object p0, p0, v0

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    :cond_0
    return-void
.end method

.method public setDelaySelectKeyUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/io/nio/SelectorManager;->e:Z

    return-void
.end method

.method public setLowResourcesConnections(J)V
    .locals 3

    iget v0, p0, Lorg/mortbay/io/nio/SelectorManager;->j:I

    int-to-long v1, v0

    add-long/2addr p1, v1

    const-wide/16 v1, 0x1

    sub-long/2addr p1, v1

    int-to-long v0, v0

    div-long/2addr p1, v0

    iput-wide p1, p0, Lorg/mortbay/io/nio/SelectorManager;->g:J

    return-void
.end method

.method public setLowResourcesMaxIdleTime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/mortbay/io/nio/SelectorManager;->h:J

    return-void
.end method

.method public setMaxIdleTime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/mortbay/io/nio/SelectorManager;->f:J

    return-void
.end method

.method public setSelectSets(I)V
    .locals 4

    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager;->g:J

    iget v2, p0, Lorg/mortbay/io/nio/SelectorManager;->j:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput p1, p0, Lorg/mortbay/io/nio/SelectorManager;->j:I

    int-to-long v2, p1

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager;->g:J

    return-void
.end method
