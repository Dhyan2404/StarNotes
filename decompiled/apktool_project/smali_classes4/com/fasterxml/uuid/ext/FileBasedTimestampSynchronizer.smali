.class public final Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;
.super Lcom/fasterxml/uuid/TimestampSynchronizer;
.source "SourceFile"


# static fields
.field protected static final DEFAULT_LOCK_FILE_NAME1:Ljava/lang/String; = "uuid1.lck"

.field protected static final DEFAULT_LOCK_FILE_NAME2:Ljava/lang/String; = "uuid2.lck"

.field public static final b:Lorg/slf4j/Logger;

.field public static final c:J = 0x2710L


# instance fields
.field public a:Z

.field protected mInterval:J

.field protected final mLocked1:Lcom/sunia/HTREnginev2/t2j;

.field protected final mLocked2:Lcom/sunia/HTREnginev2/t2j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->b:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "uuid1.lck"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "uuid2.lck"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2710

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;-><init>(Ljava/io/File;Ljava/io/File;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/fasterxml/uuid/TimestampSynchronizer;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->a:Z

    .line 5
    iput-wide p3, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->mInterval:J

    .line 6
    new-instance p3, Lcom/sunia/HTREnginev2/t2j;

    invoke-direct {p3, p1}, Lcom/sunia/HTREnginev2/t2j;-><init>(Ljava/io/File;)V

    iput-object p3, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->mLocked1:Lcom/sunia/HTREnginev2/t2j;

    .line 7
    :try_start_0
    new-instance p1, Lcom/sunia/HTREnginev2/t2j;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/t2j;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->mLocked2:Lcom/sunia/HTREnginev2/t2j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    iget-object p0, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->mLocked1:Lcom/sunia/HTREnginev2/t2j;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/t2j;->a()V

    .line 9
    throw p1
.end method

.method public static doDeactivate(Lcom/sunia/HTREnginev2/t2j;Lcom/sunia/HTREnginev2/t2j;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/t2j;->a()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/t2j;->a()V

    :cond_1
    return-void
.end method


# virtual methods
.method public deactivate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->mLocked1:Lcom/sunia/HTREnginev2/t2j;

    iget-object p0, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->mLocked2:Lcom/sunia/HTREnginev2/t2j;

    invoke-static {v0, p0}, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->doDeactivate(Lcom/sunia/HTREnginev2/t2j;Lcom/sunia/HTREnginev2/t2j;)V

    return-void
.end method

.method public initialize()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->mLocked1:Lcom/sunia/HTREnginev2/t2j;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/t2j;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->mLocked2:Lcom/sunia/HTREnginev2/t2j;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/t2j;->c()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->a:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->a:Z

    move-wide v0, v2

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    sget-object p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->b:Lorg/slf4j/Logger;

    const-string v2, "Could not determine safe timer starting point: assuming current system time is acceptable"

    invoke-interface {p0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->mInterval:J

    add-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-gez v4, :cond_2

    sget-object v4, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->b:Lorg/slf4j/Logger;

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v5, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->mInterval:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v3, "Safe timestamp read is {} milliseconds in future, and is greater than the inteval ({})"

    invoke-interface {v4, v3, v2, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-wide v0
.end method

.method public setUpdateInterval(J)V
    .locals 2

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->mInterval:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "); has to be a positive integer value"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->mInterval:J

    add-long/2addr p1, v0

    iget-boolean v0, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->mLocked2:Lcom/sunia/HTREnginev2/t2j;

    invoke-virtual {v0, p1, p2}, Lcom/sunia/HTREnginev2/t2j;->d(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->mLocked1:Lcom/sunia/HTREnginev2/t2j;

    invoke-virtual {v0, p1, p2}, Lcom/sunia/HTREnginev2/t2j;->d(J)V

    :goto_0
    iget-boolean v0, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->a:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/uuid/ext/FileBasedTimestampSynchronizer;->a:Z

    return-wide p1
.end method
