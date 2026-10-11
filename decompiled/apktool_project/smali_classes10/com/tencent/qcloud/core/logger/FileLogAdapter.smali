.class public Lcom/tencent/qcloud/core/logger/FileLogAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qcloud/core/logger/LogAdapter;


# static fields
.field private static final BUFFER_SIZE:J = 0x8000L

.field private static final LOG_DIR:Ljava/lang/String; = "QCloudLogs"

.field private static final LOG_FLUSH_DURATION:J = 0x2710L

.field private static final MAX_FILE_COUNT:I = 0x1e

.field private static final MAX_FILE_SIZE:I = 0x300000

.field private static final MSG_FLUSH_ALL:I = 0x0

.field private static final MSG_FLUSH_CONTENT:I = 0x1

.field private static instance:Lcom/tencent/qcloud/core/logger/FileLogAdapter;

.field private static final object:[B


# instance fields
.field private alias:Ljava/lang/String;

.field private bufferRecord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/qcloud/core/logger/FileLogItem;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private latestLogFile:Ljava/io/File;

.field private logRootDir:Ljava/io/File;

.field private volatile mBufferSize:J

.field private minPriority:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->object:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->bufferRecord:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->mBufferSize:J

    iput-object p2, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->alias:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->minPriority:I

    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "QCloudLogs"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->logRootDir:Ljava/io/File;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "log_handlerThread"

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p2, Lcom/tencent/qcloud/core/logger/FileLogAdapter$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/tencent/qcloud/core/logger/FileLogAdapter$1;-><init>(Lcom/tencent/qcloud/core/logger/FileLogAdapter;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x0

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/qcloud/core/logger/FileLogAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->flush()V

    return-void
.end method

.method public static synthetic access$100(Lcom/tencent/qcloud/core/logger/FileLogAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->input()V

    return-void
.end method

.method private cleanFilesIfNecessary([Ljava/io/File;)V
    .locals 1

    if-eqz p1, :cond_0

    array-length p0, p1

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_0

    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private declared-synchronized flush()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->mBufferSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->bufferRecord:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->write(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->bufferRecord:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-wide v2, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->mBufferSize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private formatDateString(J)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd.HH-mm-ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/qcloud/core/logger/FileLogAdapter;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/tencent/qcloud/core/logger/FileLogAdapter;
    .locals 2

    .line 2
    const-class v0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->instance:Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/qcloud/core/logger/FileLogAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->instance:Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->instance:Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getLogFile(J)Ljava/io/File;
    .locals 7

    iget-object v0, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->logRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->latestLogFile:Ljava/io/File;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->logRootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->logRootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    new-instance v1, Lcom/tencent/qcloud/core/logger/FileLogAdapter$3;

    invoke-direct {v1, p0}, Lcom/tencent/qcloud/core/logger/FileLogAdapter$3;-><init>(Lcom/tencent/qcloud/core/logger/FileLogAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->latestLogFile:Ljava/io/File;

    :cond_1
    iget-object v1, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->latestLogFile:Ljava/io/File;

    const-string v2, ".log"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x300000

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->latestLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->isSameDay(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->latestLogFile:Ljava/io/File;

    return-object p0

    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->logRootDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->formatDateString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->latestLogFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->cleanFilesIfNecessary([Ljava/io/File;)V

    iget-object p0, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->latestLogFile:Ljava/io/File;

    return-object p0
.end method

.method private declared-synchronized input()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->mBufferSize:J

    const-wide/32 v2, 0x8000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isSameDay(Ljava/lang/String;J)Z
    .locals 3

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd.HH-mm-ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private write(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/qcloud/core/logger/FileLogItem;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->object:[B

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->getLogFile(J)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 p0, 0x0

    :goto_0
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qcloud/core/logger/FileLogItem;

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/logger/FileLogItem;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v2

    goto :goto_6

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_4

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_2
    move-exception p0

    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_4
    move-exception p0

    goto :goto_2

    :catch_5
    move-exception p0

    :goto_4
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_3

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    :catch_6
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_5
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return-void

    :goto_6
    if-eqz v1, :cond_4

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    :catch_7
    move-exception p1

    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_7
    throw p0

    :goto_8
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p0
.end method


# virtual methods
.method public getLogFilesDesc(I)[Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->logRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->logRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->logRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/tencent/qcloud/core/logger/FileLogAdapter$2;

    invoke-direct {v1, p0}, Lcom/tencent/qcloud/core/logger/FileLogAdapter$2;-><init>(Lcom/tencent/qcloud/core/logger/FileLogAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length p0, v0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    new-array p1, p0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isLoggable(ILjava/lang/String;)Z
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget p0, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->minPriority:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/tencent/qcloud/core/logger/FileLogItem;

    invoke-direct {v0, p2, p1, p3, p4}, Lcom/tencent/qcloud/core/logger/FileLogItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->bufferRecord:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide p1, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->mBufferSize:J

    invoke-virtual {v0}, Lcom/tencent/qcloud/core/logger/FileLogItem;->getLength()J

    move-result-wide p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->mBufferSize:J

    iget-object p1, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->handler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->handler:Landroid/os/Handler;

    const-wide/16 p3, 0x1f4

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
