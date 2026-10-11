.class public Lorg/mortbay/util/DateCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEFAULT_FORMAT:Ljava/lang/String; = "EEE MMM dd HH:mm:ss zzz yyyy"

.field public static o:J = 0xe10L


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/text/SimpleDateFormat;

.field public d:Ljava/lang/String;

.field public e:Ljava/text/SimpleDateFormat;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:J

.field public j:J

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/util/Locale;

.field public n:Ljava/text/DateFormatSymbols;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/mortbay/util/DateCache;->DEFAULT_FORMAT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/mortbay/util/DateCache;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/mortbay/util/DateCache;->getFormat()Ljava/text/SimpleDateFormat;

    move-result-object p0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lorg/mortbay/util/DateCache;->i:J

    .line 5
    iput-wide v0, p0, Lorg/mortbay/util/DateCache;->j:J

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lorg/mortbay/util/DateCache;->k:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/mortbay/util/DateCache;->l:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lorg/mortbay/util/DateCache;->m:Ljava/util/Locale;

    .line 9
    iput-object v0, p0, Lorg/mortbay/util/DateCache;->n:Ljava/text/DateFormatSymbols;

    .line 10
    iput-object p1, p0, Lorg/mortbay/util/DateCache;->a:Ljava/lang/String;

    .line 11
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 22
    iput-wide v0, p0, Lorg/mortbay/util/DateCache;->i:J

    .line 23
    iput-wide v0, p0, Lorg/mortbay/util/DateCache;->j:J

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lorg/mortbay/util/DateCache;->k:I

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lorg/mortbay/util/DateCache;->l:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lorg/mortbay/util/DateCache;->m:Ljava/util/Locale;

    .line 27
    iput-object p1, p0, Lorg/mortbay/util/DateCache;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lorg/mortbay/util/DateCache;->n:Ljava/text/DateFormatSymbols;

    .line 29
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 13
    iput-wide v0, p0, Lorg/mortbay/util/DateCache;->i:J

    .line 14
    iput-wide v0, p0, Lorg/mortbay/util/DateCache;->j:J

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lorg/mortbay/util/DateCache;->k:I

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lorg/mortbay/util/DateCache;->l:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lorg/mortbay/util/DateCache;->n:Ljava/text/DateFormatSymbols;

    .line 18
    iput-object p1, p0, Lorg/mortbay/util/DateCache;->a:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lorg/mortbay/util/DateCache;->m:Ljava/util/Locale;

    .line 20
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lorg/mortbay/util/DateCache;->b:Ljava/lang/String;

    const-string v1, "ss.SSS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/util/DateCache;->b:Ljava/lang/String;

    const-string v1, "ss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/util/DateCache;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\'ss\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->d:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ms not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/util/TimeZone;)V
    .locals 5

    iget-object v0, p0, Lorg/mortbay/util/DateCache;->a:Ljava/lang/String;

    const-string v1, "ZZZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/util/DateCache;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/mortbay/util/DateCache;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ltz p1, :cond_0

    const/16 v1, 0x2b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    neg-int p1, p1

    const/16 v1, 0x2d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    const v1, 0xea60

    div-int/2addr p1, v1

    div-int/lit8 v1, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    const/16 v3, 0x30

    if-ge v1, v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-ge p1, v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 p1, 0x27

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/util/DateCache;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/mortbay/util/DateCache;->a:Ljava/lang/String;

    iput-object p1, p0, Lorg/mortbay/util/DateCache;->b:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0}, Lorg/mortbay/util/DateCache;->a()V

    return-void
.end method

.method public declared-synchronized format(J)Ljava/lang/String;
    .locals 7

    monitor-enter p0

    const-wide/16 v0, 0x3e8

    .line 2
    :try_start_0
    div-long v0, p1, v0

    .line 3
    iget-wide v2, p0, Lorg/mortbay/util/DateCache;->j:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    sget-wide v4, Lorg/mortbay/util/DateCache;->o:J

    add-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 4
    iget-object p1, p0, Lorg/mortbay/util/DateCache;->l:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object p1

    .line 5
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    const-wide/16 p1, 0x3c

    .line 6
    div-long v3, v0, p1

    .line 7
    iget-wide v5, p0, Lorg/mortbay/util/DateCache;->i:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_2

    .line 8
    iput-wide v3, p0, Lorg/mortbay/util/DateCache;->i:J

    .line 9
    iget-object v3, p0, Lorg/mortbay/util/DateCache;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/util/DateCache;->f:Ljava/lang/String;

    const-string v3, "ss"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 11
    iget-object v3, p0, Lorg/mortbay/util/DateCache;->f:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/mortbay/util/DateCache;->g:Ljava/lang/String;

    .line 12
    iget-object v3, p0, Lorg/mortbay/util/DateCache;->f:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/util/DateCache;->h:Ljava/lang/String;

    .line 13
    :cond_2
    iput-wide v0, p0, Lorg/mortbay/util/DateCache;->j:J

    .line 14
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/mortbay/util/DateCache;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 15
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    iget-object v3, p0, Lorg/mortbay/util/DateCache;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    rem-long/2addr v0, p1

    long-to-int p1, v0

    const/16 p2, 0xa

    if-ge p1, p2, :cond_3

    const/16 p2, 0x30

    .line 18
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 19
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 20
    iget-object p1, p0, Lorg/mortbay/util/DateCache;->h:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/util/DateCache;->l:Ljava/lang/String;

    .line 22
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 24
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 25
    :cond_4
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 26
    iget-object p1, p0, Lorg/mortbay/util/DateCache;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public format(JLjava/lang/StringBuffer;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public getFormat()Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/DateCache;->e:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/DateCache;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/DateCache;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public lastMs()I
    .locals 0

    iget p0, p0, Lorg/mortbay/util/DateCache;->k:I

    return p0
.end method

.method public now()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p0, Lorg/mortbay/util/DateCache;->k:I

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 3

    invoke-virtual {p0, p1}, Lorg/mortbay/util/DateCache;->b(Ljava/util/TimeZone;)V

    iget-object v0, p0, Lorg/mortbay/util/DateCache;->m:Ljava/util/Locale;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/util/DateCache;->m:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->c:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->d:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/util/DateCache;->m:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->e:Ljava/text/SimpleDateFormat;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->n:Ljava/text/DateFormatSymbols;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/util/DateCache;->n:Ljava/text/DateFormatSymbols;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->c:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->d:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/util/DateCache;->n:Ljava/text/DateFormatSymbols;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->e:Ljava/text/SimpleDateFormat;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->c:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/mortbay/util/DateCache;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mortbay/util/DateCache;->e:Ljava/text/SimpleDateFormat;

    :goto_0
    iget-object v0, p0, Lorg/mortbay/util/DateCache;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v0, p0, Lorg/mortbay/util/DateCache;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/mortbay/util/DateCache;->j:J

    iput-wide v0, p0, Lorg/mortbay/util/DateCache;->i:J

    return-void
.end method

.method public setTimeZoneID(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method
