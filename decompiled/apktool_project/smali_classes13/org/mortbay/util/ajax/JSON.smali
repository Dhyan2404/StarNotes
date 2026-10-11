.class public Lorg/mortbay/util/ajax/JSON;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/util/ajax/JSON$Literal;,
        Lorg/mortbay/util/ajax/JSON$Generator;,
        Lorg/mortbay/util/ajax/JSON$Convertor;,
        Lorg/mortbay/util/ajax/JSON$Convertible;,
        Lorg/mortbay/util/ajax/JSON$Output;,
        Lorg/mortbay/util/ajax/JSON$ReaderSource;,
        Lorg/mortbay/util/ajax/JSON$StringSource;,
        Lorg/mortbay/util/ajax/JSON$Source;
    }
.end annotation


# static fields
.field public static c:Lorg/mortbay/util/ajax/JSON;

.field public static synthetic d:Ljava/lang/Class;

.field public static synthetic e:Ljava/lang/Class;

.field public static synthetic f:Ljava/lang/Class;


# instance fields
.field public a:Ljava/util/Map;

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mortbay/util/ajax/JSON;

    invoke-direct {v0}, Lorg/mortbay/util/ajax/JSON;-><init>()V

    sput-object v0, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSON;->a:Ljava/util/Map;

    const/16 v0, 0x100

    iput v0, p0, Lorg/mortbay/util/ajax/JSON;->b:I

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v1

    const-string v2, "\""

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v1, v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unexpected \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, " while seeking  \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lt v0, p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Expected \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getDefault()Lorg/mortbay/util/ajax/JSON;
    .locals 1

    sget-object v0, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$StringSource;

    invoke-static {p0}, Lorg/mortbay/util/IO;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/mortbay/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$StringSource;

    invoke-static {p0}, Lorg/mortbay/util/IO;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/mortbay/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$ReaderSource;

    invoke-direct {v1, p0}, Lorg/mortbay/util/ajax/JSON$ReaderSource;-><init>(Ljava/io/Reader;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/Reader;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$ReaderSource;

    invoke-direct {v1, p0}, Lorg/mortbay/util/ajax/JSON$ReaderSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$StringSource;

    invoke-direct {v1, p0}, Lorg/mortbay/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2

    .line 2
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$StringSource;

    invoke-direct {v1, p0}, Lorg/mortbay/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static registerConvertor(Ljava/lang/Class;Lorg/mortbay/util/ajax/JSON$Convertor;)V
    .locals 1

    sget-object v0, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v0, p0, p1}, Lorg/mortbay/util/ajax/JSON;->addConvertor(Ljava/lang/Class;Lorg/mortbay/util/ajax/JSON$Convertor;)V

    return-void
.end method

.method public static setDefault(Lorg/mortbay/util/ajax/JSON;)V
    .locals 0

    sput-object p0, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    return-void
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v1}, Lorg/mortbay/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v1, v0, p0}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v1}, Lorg/mortbay/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v1, v0, p0}, Lorg/mortbay/util/ajax/JSON;->appendMap(Ljava/lang/StringBuffer;Ljava/util/Map;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v1}, Lorg/mortbay/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v1, v0, p0}, Lorg/mortbay/util/ajax/JSON;->appendArray(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addConvertor(Ljava/lang/Class;Lorg/mortbay/util/ajax/JSON$Convertor;)V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/ajax/JSON;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addConvertorFor(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Convertor;)V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/ajax/JSON;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p0, "null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_0
    instance-of v0, p2, Lorg/mortbay/util/ajax/JSON$Convertible;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/mortbay/util/ajax/JSON$Convertible;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Convertible;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lorg/mortbay/util/ajax/JSON$Generator;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/mortbay/util/ajax/JSON$Generator;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Generator;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendMap(Ljava/lang/StringBuffer;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendArray(Ljava/lang/StringBuffer;Ljava/util/Collection;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendArray(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendNumber(Ljava/lang/StringBuffer;Ljava/lang/Number;)V

    goto :goto_0

    :cond_6
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendBoolean(Ljava/lang/StringBuffer;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_7
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_8

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1, v0, p2}, Lorg/mortbay/util/ajax/JSON;->appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Convertor;Ljava/lang/Object;)V

    goto :goto_0

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public appendArray(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 3

    if-nez p2, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    return-void

    :cond_0
    const/16 v0, 0x5b

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 10
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    if-eqz v1, :cond_1

    const/16 v2, 0x2c

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 12
    :cond_1
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x5d

    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendArray(Ljava/lang/StringBuffer;Ljava/util/Collection;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    return-void

    :cond_0
    const/16 v0, 0x5b

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x1

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    const/16 v0, 0x2c

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 p0, 0x5d

    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendBoolean(Ljava/lang/StringBuffer;Ljava/lang/Boolean;)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "true"

    goto :goto_0

    :cond_1
    const-string p0, "false"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Convertible;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    .line 2
    new-instance v3, Lorg/mortbay/util/ajax/c;

    invoke-direct {v3, p0, v0, p1}, Lorg/mortbay/util/ajax/c;-><init>(Lorg/mortbay/util/ajax/JSON;[CLjava/lang/StringBuffer;)V

    invoke-interface {p2, v3}, Lorg/mortbay/util/ajax/JSON$Convertible;->toJSON(Lorg/mortbay/util/ajax/JSON$Output;)V

    aget-char p0, v0, v1

    if-ne p0, v2, :cond_0

    const-string p0, "{}"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    const-string p0, "}"

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Convertor;Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/mortbay/util/ajax/b;

    invoke-direct {v0, p0, p2, p3}, Lorg/mortbay/util/ajax/b;-><init>(Lorg/mortbay/util/ajax/JSON;Lorg/mortbay/util/ajax/JSON$Convertor;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/util/ajax/JSON;->appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Convertible;)V

    return-void
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Generator;)V
    .locals 0

    .line 5
    invoke-interface {p2, p1}, Lorg/mortbay/util/ajax/JSON$Generator;->addJSON(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public appendMap(Ljava/lang/StringBuffer;Ljava/util/Map;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    return-void

    :cond_0
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const/16 p0, 0x7d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendNull(Ljava/lang/StringBuffer;)V
    .locals 0

    const-string p0, "null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendNumber(Ljava/lang/StringBuffer;Ljava/lang/Number;)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    return-void

    :cond_0
    invoke-static {p1, p2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public contextFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON;
    .locals 0

    return-object p0
.end method

.method public contextForArray()Lorg/mortbay/util/ajax/JSON;
    .locals 0

    return-object p0
.end method

.method public convertTo(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    sget-object v0, Lorg/mortbay/util/ajax/JSON;->d:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.util.ajax.JSON$Convertible"

    invoke-static {v0}, Lorg/mortbay/util/ajax/JSON;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/ajax/JSON;->d:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/util/ajax/JSON$Convertible;

    invoke-interface {p0, p2}, Lorg/mortbay/util/ajax/JSON$Convertible;->fromJSON(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, p2}, Lorg/mortbay/util/ajax/JSON$Convertor;->fromJSON(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p2
.end method

.method public fromJSON(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/mortbay/util/ajax/JSON$StringSource;

    invoke-direct {v0, p1}, Lorg/mortbay/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getConvertor(Ljava/lang/Class;)Lorg/mortbay/util/ajax/JSON$Convertor;
    .locals 4

    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/ajax/JSON$Convertor;

    if-nez v0, :cond_0

    sget-object v1, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    if-eq p0, v1, :cond_0

    invoke-virtual {v1, p1}, Lorg/mortbay/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    sget-object v1, Lorg/mortbay/util/ajax/JSON;->e:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.lang.Object"

    invoke-static {v1}, Lorg/mortbay/util/ajax/JSON;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/ajax/JSON;->e:Ljava/lang/Class;

    :cond_1
    if-eq p1, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    array-length v3, v1

    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON;->a:Ljava/util/Map;

    add-int/lit8 v3, v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/ajax/JSON$Convertor;

    move v2, v3

    goto :goto_1

    :cond_2
    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/ajax/JSON$Convertor;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getConvertorFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON$Convertor;
    .locals 2

    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/ajax/JSON$Convertor;

    if-nez v0, :cond_0

    sget-object v1, Lorg/mortbay/util/ajax/JSON;->c:Lorg/mortbay/util/ajax/JSON;

    if-eq p0, v1, :cond_0

    invoke-virtual {v1, p1}, Lorg/mortbay/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStringBufferSize()I
    .locals 0

    iget p0, p0, Lorg/mortbay/util/ajax/JSON;->b:I

    return p0
.end method

.method public handleUnknown(Lorg/mortbay/util/ajax/JSON$Source;C)Ljava/lang/Object;
    .locals 2

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "unknown char \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "\'("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, ") in "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Ljava/lang/Object;

    return-object p0
.end method

.method public newMap()Ljava/util/Map;
    .locals 0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 13
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 14
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v2

    const/16 v4, 0x2a

    const/4 v5, 0x2

    const/16 v6, 0x2f

    const/4 v7, 0x1

    if-ne v1, v7, :cond_1

    if-eq v2, v4, :cond_2

    if-eq v2, v6, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, -0x1

    goto/16 :goto_2

    :cond_1
    if-le v1, v7, :cond_5

    const/4 v3, 0x3

    if-eq v2, v4, :cond_4

    if-eq v2, v6, :cond_3

    :cond_2
    move v1, v5

    goto/16 :goto_2

    :cond_3
    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_4
    move v1, v3

    goto/16 :goto_2

    :cond_5
    if-gez v1, :cond_7

    const/16 v3, 0xa

    if-eq v2, v3, :cond_6

    const/16 v3, 0xd

    if-eq v2, v3, :cond_6

    goto/16 :goto_2

    :cond_6
    :goto_1
    move v1, v0

    goto :goto_2

    :cond_7
    const/16 v4, 0x22

    if-eq v2, v4, :cond_13

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_12

    if-eq v2, v6, :cond_11

    const/16 v4, 0x4e

    if-eq v2, v4, :cond_10

    const/16 v4, 0x5b

    if-eq v2, v4, :cond_f

    const/16 v4, 0x66

    if-eq v2, v4, :cond_e

    const/16 v4, 0x6e

    if-eq v2, v4, :cond_d

    const/16 v4, 0x7b

    if-eq v2, v4, :cond_c

    const/16 v4, 0x74

    if-eq v2, v4, :cond_b

    const/16 v4, 0x75

    if-eq v2, v4, :cond_a

    .line 15
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 16
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseNumber(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 17
    :cond_8
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    .line 18
    :cond_9
    invoke-virtual {p0, p1, v2}, Lorg/mortbay/util/ajax/JSON;->handleUnknown(Lorg/mortbay/util/ajax/JSON$Source;C)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_a
    const-string p0, "undefined"

    .line 19
    invoke-static {p0, p1}, Lorg/mortbay/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V

    return-object v3

    :cond_b
    const-string p0, "true"

    .line 20
    invoke-static {p0, p1}, Lorg/mortbay/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V

    .line 21
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 22
    :cond_c
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseObject(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "null"

    .line 23
    invoke-static {p0, p1}, Lorg/mortbay/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V

    return-object v3

    :cond_e
    const-string p0, "false"

    .line 24
    invoke-static {p0, p1}, Lorg/mortbay/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V

    .line 25
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 26
    :cond_f
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseArray(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_10
    const-string p0, "NaN"

    .line 27
    invoke-static {p0, p1}, Lorg/mortbay/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V

    return-object v3

    :cond_11
    move v1, v7

    .line 28
    :goto_2
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto/16 :goto_0

    .line 29
    :cond_12
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseNumber(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 30
    :cond_13
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseString(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    return-object v3
.end method

.method public parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;
    .locals 9

    if-nez p2, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, p2

    move v2, v0

    .line 8
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 9
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v4

    const/16 v5, 0x2f

    const/16 v6, 0x2a

    const/4 v7, 0x2

    if-ne v2, p2, :cond_3

    if-eq v4, v6, :cond_2

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, -0x1

    goto :goto_2

    :cond_2
    if-ne v3, p2, :cond_4

    move v2, v0

    move v3, v7

    goto :goto_2

    :cond_3
    const/4 v8, 0x3

    if-le v2, p2, :cond_8

    if-eq v4, v6, :cond_7

    if-eq v4, v5, :cond_5

    :cond_4
    move v2, v7

    goto :goto_2

    :cond_5
    if-ne v2, v8, :cond_4

    if-ne v3, v7, :cond_6

    return-object v1

    :cond_6
    move v2, v0

    goto :goto_2

    :cond_7
    :goto_1
    move v2, v8

    goto :goto_2

    :cond_8
    if-gez v2, :cond_9

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    const/16 v5, 0xd

    if-eq v4, v5, :cond_6

    goto :goto_2

    .line 10
    :cond_9
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_c

    if-ne v4, v5, :cond_a

    move v2, p2

    goto :goto_2

    :cond_a
    if-ne v4, v6, :cond_b

    goto :goto_1

    :cond_b
    if-nez v1, :cond_c

    .line 11
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 12
    :cond_c
    :goto_2
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    :cond_d
    return-object v1
.end method

.method public parseArray(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 9

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v5, v0

    move-object v6, v5

    move v4, v1

    :goto_0
    move v3, v2

    :goto_1
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v7

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_6

    const/16 v8, 0x5d

    if-eq v7, v8, :cond_3

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v4, 0x1

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON;->contextForArray()Lorg/mortbay/util/ajax/JSON;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v5

    :goto_2
    move v4, v3

    move v3, v1

    goto :goto_1

    :cond_1
    if-nez v6, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON;->contextForArray()Lorg/mortbay/util/ajax/JSON;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON;->contextForArray()Lorg/mortbay/util/ajax/JSON;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object v5, v0

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    if-eqz v4, :cond_5

    if-eq v4, v2, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, v2}, Lorg/mortbay/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p0

    :cond_5
    invoke-virtual {p0, v1}, Lorg/mortbay/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    if-nez v3, :cond_7

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected end of array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public parseNumber(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Number;
    .locals 10

    const/4 p0, 0x0

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v4

    const/16 v5, 0x2e

    const/16 v6, 0x65

    const/16 v7, 0x45

    const/16 v8, 0x2b

    const/16 v9, 0x2d

    if-eqz v4, :cond_4

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v4

    if-eq v4, v8, :cond_2

    if-eq v4, v7, :cond_0

    if-eq v4, v6, :cond_0

    if-eq v4, v9, :cond_2

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-wide/16 v5, 0xa

    mul-long/2addr v2, v5

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    if-eqz p0, :cond_1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_2

    :cond_2
    cmp-long p0, v2, v0

    if-nez p0, :cond_3

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "bad number"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_6

    if-eqz p0, :cond_5

    const-wide/16 p0, -0x1

    mul-long/2addr v2, p0

    :cond_5
    invoke-static {v2, v3}, Lorg/mortbay/util/TypeUtil;->newLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_6
    monitor-enter v0

    :goto_3
    :try_start_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result p0

    if-eq p0, v8, :cond_7

    if-eq p0, v7, :cond_7

    if-eq p0, v6, :cond_7

    if-eq p0, v9, :cond_7

    if-eq p0, v5, :cond_7

    packed-switch p0, :pswitch_data_1

    goto :goto_4

    :cond_7
    :pswitch_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_3

    :cond_8
    :goto_4
    new-instance p0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public parseObject(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 5

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON;->newMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {p0, v1, p1}, Lorg/mortbay/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)C

    move-result v2

    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_0

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseString(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3a

    invoke-virtual {p0, v4, p1}, Lorg/mortbay/util/ajax/JSON;->seekTo(CLorg/mortbay/util/ajax/JSON$Source;)V

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    invoke-virtual {p0, v2}, Lorg/mortbay/util/ajax/JSON;->contextFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ",}"

    invoke-virtual {p0, v2, p1}, Lorg/mortbay/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)C

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, p1}, Lorg/mortbay/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)C

    move-result v2

    goto :goto_0

    :cond_2
    :goto_1
    const-string p1, "class"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    :try_start_0
    sget-object v1, Lorg/mortbay/util/ajax/JSON;->f:Ljava/lang/Class;

    if-nez v1, :cond_3

    const-string v1, "org.mortbay.util.ajax.JSON"

    invoke-static {v1}, Lorg/mortbay/util/ajax/JSON;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/ajax/JSON;->f:Ljava/lang/Class;

    :cond_3
    invoke-static {v1, p1}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/util/ajax/JSON;->convertTo(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public parseString(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1d

    invoke-interface/range {p1 .. p1}, Lorg/mortbay/util/ajax/JSON$Source;->scratchBuffer()[C

    move-result-object v1

    const/16 v6, 0x75

    const/16 v7, 0x74

    const/16 v8, 0x72

    const/16 v9, 0x6e

    const/16 v10, 0x66

    const/16 v11, 0x62

    const/16 v12, 0xc

    const/16 v14, 0x2f

    const/16 v15, 0x5c

    const/4 v5, 0x0

    const/16 v17, 0x1

    if-eqz v1, :cond_e

    move v4, v5

    move/from16 v18, v4

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d

    array-length v3, v1

    if-lt v4, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuffer;

    array-length v13, v1

    mul-int/lit8 v13, v13, 0x2

    invoke-direct {v3, v13}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v3, v1, v5, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v3

    if-eqz v18, :cond_a

    if-eq v3, v2, :cond_9

    if-eq v3, v14, :cond_8

    if-eq v3, v15, :cond_7

    if-eq v3, v11, :cond_6

    if-eq v3, v10, :cond_5

    if-eq v3, v9, :cond_4

    if-eq v3, v8, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_1

    add-int/lit8 v13, v4, 0x1

    aput-char v3, v1, v4

    goto :goto_1

    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v3

    shl-int/2addr v3, v12

    invoke-interface/range {p1 .. p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v13

    int-to-byte v13, v13

    invoke-static {v13}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v13

    const/16 v18, 0x8

    shl-int/lit8 v13, v13, 0x8

    add-int/2addr v3, v13

    invoke-interface/range {p1 .. p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v13

    int-to-byte v13, v13

    invoke-static {v13}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v13

    shl-int/lit8 v13, v13, 0x4

    add-int/2addr v3, v13

    invoke-interface/range {p1 .. p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v13

    int-to-byte v13, v13

    invoke-static {v13}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v13

    add-int/2addr v3, v13

    int-to-char v3, v3

    add-int/lit8 v13, v4, 0x1

    aput-char v3, v1, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v13, v4, 0x1

    const/16 v3, 0x9

    aput-char v3, v1, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v13, v4, 0x1

    const/16 v3, 0xd

    aput-char v3, v1, v4

    goto :goto_1

    :cond_4
    add-int/lit8 v13, v4, 0x1

    const/16 v3, 0xa

    aput-char v3, v1, v4

    goto :goto_1

    :cond_5
    add-int/lit8 v13, v4, 0x1

    aput-char v12, v1, v4

    goto :goto_1

    :cond_6
    add-int/lit8 v13, v4, 0x1

    const/16 v3, 0x8

    aput-char v3, v1, v4

    goto :goto_1

    :cond_7
    add-int/lit8 v13, v4, 0x1

    aput-char v15, v1, v4

    goto :goto_1

    :cond_8
    add-int/lit8 v13, v4, 0x1

    aput-char v14, v1, v4

    goto :goto_1

    :cond_9
    add-int/lit8 v13, v4, 0x1

    aput-char v2, v1, v4

    :goto_1
    move/from16 v18, v5

    goto :goto_2

    :cond_a
    if-ne v3, v15, :cond_b

    move/from16 v18, v17

    goto/16 :goto_0

    :cond_b
    if-ne v3, v2, :cond_c

    invoke-virtual {v0, v1, v5, v4}, Lorg/mortbay/util/ajax/JSON;->toString([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    add-int/lit8 v13, v4, 0x1

    aput-char v3, v1, v4

    :goto_2
    move v4, v13

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_f

    invoke-virtual {v0, v1, v5, v4}, Lorg/mortbay/util/ajax/JSON;->toString([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/util/ajax/JSON;->getStringBufferSize()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move/from16 v18, v5

    :cond_f
    monitor-enter v3

    :goto_4
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface/range {p1 .. p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v0

    if-eqz v18, :cond_19

    if-eq v0, v2, :cond_18

    if-eq v0, v14, :cond_17

    if-eq v0, v15, :cond_16

    if-eq v0, v11, :cond_15

    if-eq v0, v10, :cond_14

    if-eq v0, v9, :cond_13

    if-eq v0, v8, :cond_12

    if-eq v0, v7, :cond_11

    if-eq v0, v6, :cond_10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    const/16 v0, 0x8

    const/16 v1, 0x9

    goto :goto_6

    :cond_10
    invoke-interface/range {p1 .. p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v0

    shl-int/2addr v0, v12

    invoke-interface/range {p1 .. p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v1

    const/16 v4, 0x8

    shl-int/2addr v1, v4

    add-int/2addr v0, v1

    invoke-interface/range {p1 .. p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    invoke-interface/range {p1 .. p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v1

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_11
    const/16 v1, 0x9

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x8

    :goto_6
    const/16 v4, 0xd

    goto :goto_7

    :cond_12
    const/16 v1, 0x9

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x8

    :goto_7
    const/16 v13, 0xa

    goto :goto_9

    :cond_13
    const/16 v1, 0x9

    const/16 v4, 0xd

    const/16 v13, 0xa

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_14
    const/16 v1, 0x9

    const/16 v4, 0xd

    const/16 v13, 0xa

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_8
    const/16 v0, 0x8

    goto :goto_9

    :cond_15
    const/16 v0, 0x8

    const/16 v1, 0x9

    const/16 v4, 0xd

    const/16 v13, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_16
    const/16 v0, 0x8

    const/16 v1, 0x9

    const/16 v4, 0xd

    const/16 v13, 0xa

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_17
    const/16 v0, 0x8

    const/16 v1, 0x9

    const/16 v4, 0xd

    const/16 v13, 0xa

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_18
    const/16 v0, 0x8

    const/16 v1, 0x9

    const/16 v4, 0xd

    const/16 v13, 0xa

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_9
    move/from16 v16, v0

    move/from16 v18, v5

    goto/16 :goto_4

    :cond_19
    const/16 v1, 0x9

    const/16 v4, 0xd

    const/16 v13, 0xa

    const/16 v16, 0x8

    if-ne v0, v15, :cond_1a

    move/from16 v18, v17

    goto/16 :goto_4

    :cond_1a
    if-ne v0, v2, :cond_1b

    goto :goto_a

    :cond_1b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    :cond_1c
    :goto_a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public seekTo(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)C
    .locals 3

    .line 7
    :goto_0
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result p0

    const-string v0, "\'"

    if-eqz p0, :cond_2

    .line 8
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result p0

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    return p0

    .line 10
    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 12
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unexpected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p0, "\' while seeking one of \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Expected one of \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public seekTo(CLorg/mortbay/util/ajax/JSON$Source;)V
    .locals 3

    .line 1
    :goto_0
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result p0

    const-string v0, "\'"

    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 5
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unexpected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p0, " while seeking \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Expected \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStringBufferSize(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/util/ajax/JSON;->b:I

    return-void
.end method

.method public toJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toString([CII)Ljava/lang/String;
    .locals 0

    .line 16
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method
