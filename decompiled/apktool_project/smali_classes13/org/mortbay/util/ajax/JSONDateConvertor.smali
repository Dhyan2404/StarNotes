.class public Lorg/mortbay/util/ajax/JSONDateConvertor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/util/ajax/JSON$Convertor;


# instance fields
.field public a:Z

.field public b:Lorg/mortbay/util/DateCache;

.field public c:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/mortbay/util/ajax/JSONDateConvertor;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/mortbay/util/DateCache;

    invoke-direct {v0, p1}, Lorg/mortbay/util/DateCache;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSONDateConvertor;->b:Lorg/mortbay/util/DateCache;

    .line 5
    invoke-virtual {v0, p2}, Lorg/mortbay/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 6
    iput-boolean p3, p0, Lorg/mortbay/util/ajax/JSONDateConvertor;->a:Z

    .line 7
    new-instance p3, Ljava/text/SimpleDateFormat;

    invoke-direct {p3, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lorg/mortbay/util/ajax/JSONDateConvertor;->c:Ljava/text/SimpleDateFormat;

    .line 8
    invoke-virtual {p3, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;ZLjava/util/Locale;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lorg/mortbay/util/DateCache;

    invoke-direct {v0, p1, p4}, Lorg/mortbay/util/DateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSONDateConvertor;->b:Lorg/mortbay/util/DateCache;

    .line 11
    invoke-virtual {v0, p2}, Lorg/mortbay/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 12
    iput-boolean p3, p0, Lorg/mortbay/util/ajax/JSONDateConvertor;->a:Z

    .line 13
    new-instance p3, Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p4}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {p3, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object p3, p0, Lorg/mortbay/util/ajax/JSONDateConvertor;->c:Ljava/text/SimpleDateFormat;

    .line 14
    invoke-virtual {p3, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 2
    sget-object v0, Lorg/mortbay/util/DateCache;->DEFAULT_FORMAT:Ljava/lang/String;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lorg/mortbay/util/ajax/JSONDateConvertor;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Z)V

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/util/Map;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lorg/mortbay/util/ajax/JSONDateConvertor;->a:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONDateConvertor;->c:Ljava/text/SimpleDateFormat;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lorg/mortbay/util/ajax/JSONDateConvertor;->c:Ljava/text/SimpleDateFormat;

    const-string v1, "value"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/text/Format;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public toJSON(Ljava/lang/Object;Lorg/mortbay/util/ajax/JSON$Output;)V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONDateConvertor;->b:Lorg/mortbay/util/DateCache;

    move-object v1, p1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Lorg/mortbay/util/DateCache;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lorg/mortbay/util/ajax/JSONDateConvertor;->a:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/mortbay/util/ajax/JSON$Output;->addClass(Ljava/lang/Class;)V

    const-string p0, "value"

    invoke-interface {p2, p0, v0}, Lorg/mortbay/util/ajax/JSON$Output;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Lorg/mortbay/util/ajax/JSON$Output;->add(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
