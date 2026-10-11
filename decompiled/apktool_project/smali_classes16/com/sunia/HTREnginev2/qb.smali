.class public Lcom/sunia/HTREnginev2/qb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final u:Lcom/sunia/HTREnginev2/qb;


# instance fields
.field public final a:Ljava/util/Date;

.field public final b:Ljava/util/regex/Pattern;

.field public final c:Ljava/util/regex/Pattern;

.field public final d:J

.field public e:Landroid/content/Context;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Lxcrash/ICrashCallback;

.field public r:Lxcrash/ICrashCallback;

.field public s:J

.field public t:Landroid/os/FileObserver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/qb;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/qb;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/qb;->u:Lcom/sunia/HTREnginev2/qb;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/qb;->a:Ljava/util/Date;

    const-string v0, "^-----\\spid\\s(\\d+)\\sat\\s(.*)\\s-----$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/qb;->b:Ljava/util/regex/Pattern;

    const-string v0, "^Cmd\\sline:\\s+(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/qb;->c:Ljava/util/regex/Pattern;

    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/qb;->d:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/qb;->s:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/qb;->t:Landroid/os/FileObserver;

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/qb;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/qb;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static c()Lcom/sunia/HTREnginev2/qb;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/qb;->u:Lcom/sunia/HTREnginev2/qb;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qb;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/qb;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/qb;->i:Ljava/lang/String;

    const-string v4, "anr"

    invoke-static {v1, p1, v4, v2, v3}, Lxcrash/Util;->i(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "pid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/sunia/HTREnginev2/qb;->f:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  >>> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qb;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " <<<\n\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "+++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;J)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const/16 v5, 0xa

    if-nez p1, :cond_9

    const-string v6, "----- pid "

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sunia/HTREnginev2/qb;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v8, :cond_0

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget v7, p0, Lcom/sunia/HTREnginev2/qb;->f:I

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eq v7, v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v7, p2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v9, 0x3a98

    cmp-long v4, v7, v9

    if-lez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/sunia/HTREnginev2/qb;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v8

    if-eq v8, v6, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, p0, Lcom/sunia/HTREnginev2/qb;->g:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "Mode: Watching /data/anr/*\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v6

    goto/16 :goto_0

    :cond_9
    if-eqz p1, :cond_0

    const-string v6, "----- end "

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_b
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v2, :cond_c

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_c
    throw p0

    :catch_2
    move-object v3, v2

    :catch_3
    if-eqz v3, :cond_d

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_d
    return-object v2
.end method

.method public final e(Ljava/lang/String;)V
    .locals 10

    const-string v0, "xcrash"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/qb;->s:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/qb;->r:Lxcrash/ICrashCallback;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2, v3, v3}, Lxcrash/ICrashCallback;->onCrash(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/qb;->k:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sunia/HTREnginev2/qb;->e:Landroid/content/Context;

    invoke-static {v2, v4, v5}, Lxcrash/Util;->b(Landroid/content/Context;J)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/sunia/HTREnginev2/qb;->d(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sunia/HTREnginev2/qb;->s:J

    invoke-static {}, Lcom/sunia/HTREnginev2/ygg;->l()Lcom/sunia/HTREnginev2/ygg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/ygg;->p()Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcom/sunia/HTREnginev2/qb;->b(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {}, Lxcrash/XCrash;->c()Lxcrash/ILogger;

    move-result-object v2

    const-string v4, "AnrHandler getEmergency failed"

    invoke-interface {v2, v0, v4, p1}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v3

    :goto_0
    :try_start_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s/%s_%020d_%s__%s%s"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sunia/HTREnginev2/qb;->j:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "tombstone"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v5, v6

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qb;->i:Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v1, v5, v6

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qb;->g:Ljava/lang/String;

    const/4 v6, 0x4

    aput-object v1, v5, v6

    const-string v1, ".anr.xcrash"

    const/4 v6, 0x5

    aput-object v1, v5, v6

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sunia/HTREnginev2/ygg;->l()Lcom/sunia/HTREnginev2/ygg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sunia/HTREnginev2/ygg;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-static {}, Lxcrash/XCrash;->c()Lxcrash/ILogger;

    move-result-object v2

    const-string v4, "AnrHandler createLogFile failed"

    invoke-interface {v2, v0, v4, v1}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_b

    :try_start_3
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "rws"

    invoke-direct {v2, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v4, "UTF-8"

    if-eqz p1, :cond_5

    :try_start_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_3

    :cond_5
    :goto_2
    :try_start_5
    iget p1, p0, Lcom/sunia/HTREnginev2/qb;->n:I

    if-gtz p1, :cond_6

    iget v5, p0, Lcom/sunia/HTREnginev2/qb;->l:I

    if-gtz v5, :cond_6

    iget v5, p0, Lcom/sunia/HTREnginev2/qb;->m:I

    if-lez v5, :cond_7

    :cond_6
    iget v5, p0, Lcom/sunia/HTREnginev2/qb;->l:I

    iget v6, p0, Lcom/sunia/HTREnginev2/qb;->m:I

    invoke-static {p1, v5, v6}, Lxcrash/Util;->j(III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_7
    iget-boolean p1, p0, Lcom/sunia/HTREnginev2/qb;->o:Z

    if-eqz p1, :cond_8

    invoke-static {}, Lxcrash/Util;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_8
    iget-boolean p1, p0, Lcom/sunia/HTREnginev2/qb;->p:Z

    if-eqz p1, :cond_9

    invoke-static {}, Lxcrash/Util;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_9
    invoke-static {}, Lxcrash/Util;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    move-object p1, v3

    goto :goto_5

    :catch_5
    move-exception v4

    move-object p1, v3

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_6
    move-exception v4

    move-object v2, v3

    :goto_3
    :try_start_7
    invoke-static {}, Lxcrash/XCrash;->c()Lxcrash/ILogger;

    move-result-object v5

    const-string v6, "AnrHandler write log file failed"

    invoke-interface {v5, v0, v6, v4}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_b

    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_a

    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_a
    throw p0

    :catch_8
    :cond_b
    :goto_5
    iget-object p0, p0, Lcom/sunia/HTREnginev2/qb;->q:Lxcrash/ICrashCallback;

    if-eqz p0, :cond_d

    if-nez v1, :cond_c

    goto :goto_6

    :cond_c
    :try_start_a
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-interface {p0, v3, p1}, Lxcrash/ICrashCallback;->onCrash(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    :catch_9
    :cond_d
    return-void
.end method

.method public f(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZZLxcrash/ICrashCallback;Lxcrash/ICrashCallback;)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 5

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qb;->t:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v1, p0, Lcom/sunia/HTREnginev2/qb;->t:Landroid/os/FileObserver;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lxcrash/XCrash;->c()Lxcrash/ILogger;

    move-result-object v2

    const-string v3, "xcrash"

    const-string v4, "AnrHandler fileObserver stopWatching failed"

    invoke-interface {v2, v3, v4, v0}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iput-object v1, p0, Lcom/sunia/HTREnginev2/qb;->t:Landroid/os/FileObserver;

    throw v0

    :cond_0
    :goto_2
    return-void
.end method
