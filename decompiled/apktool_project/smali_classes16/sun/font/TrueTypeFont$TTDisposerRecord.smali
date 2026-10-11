.class Lsun/font/TrueTypeFont$TTDisposerRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/DisposerRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/TrueTypeFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TTDisposerRecord"
.end annotation


# instance fields
.field channel:Ljava/nio/channels/FileChannel;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public synthetic constructor <init>(Lsun/font/TrueTypeFont$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lsun/font/TrueTypeFont$TTDisposerRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :cond_0
    :try_start_1
    iput-object v0, p0, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lsun/font/TrueTypeFont$TTDisposerRecord;->channel:Ljava/nio/channels/FileChannel;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
