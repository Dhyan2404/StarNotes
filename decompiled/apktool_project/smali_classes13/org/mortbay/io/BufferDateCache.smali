.class public Lorg/mortbay/io/BufferDateCache;
.super Lorg/mortbay/util/DateCache;
.source "SourceFile"


# instance fields
.field public p:Lorg/mortbay/io/Buffer;

.field public q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mortbay/util/DateCache;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/mortbay/util/DateCache;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/mortbay/util/DateCache;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/mortbay/util/DateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized formatBuffer(J)Lorg/mortbay/io/Buffer;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/mortbay/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mortbay/io/BufferDateCache;->q:Ljava/lang/String;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/mortbay/io/BufferDateCache;->p:Lorg/mortbay/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/mortbay/io/BufferDateCache;->q:Ljava/lang/String;

    new-instance p2, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {p2, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/mortbay/io/BufferDateCache;->p:Lorg/mortbay/io/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
