.class public Lorg/mortbay/jetty/InclusiveByteRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/mortbay/jetty/InclusiveByteRange;->a:J

    iput-wide p3, p0, Lorg/mortbay/jetty/InclusiveByteRange;->b:J

    return-void
.end method

.method public static satisfiableRanges(Ljava/util/Enumeration;J)Ljava/util/List;
    .locals 13

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "=,"

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v2, v0

    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2d

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "Bad range format: {}"

    if-ltz v4, :cond_8

    :try_start_1
    const-string v7, "-"

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_2

    goto/16 :goto_3

    :cond_2
    const-wide/16 v9, -0x1

    if-nez v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v8, v4, :cond_3

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-wide v11, v6

    move-wide v6, v9

    goto :goto_2

    :cond_3
    invoke-static {v6, v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v8, v6, :cond_5

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-wide v11, v9

    :goto_2
    cmp-long v4, v6, v9

    if-nez v4, :cond_6

    cmp-long v8, v11, v9

    if-nez v8, :cond_6

    goto/16 :goto_0

    :cond_6
    if-eqz v4, :cond_7

    cmp-long v4, v11, v9

    if-eqz v4, :cond_7

    cmp-long v4, v6, v11

    if-lez v4, :cond_7

    goto/16 :goto_0

    :cond_7
    cmp-long v4, v6, p1

    if-gez v4, :cond_1

    new-instance v4, Lorg/mortbay/jetty/InclusiveByteRange;

    invoke-direct {v4, v6, v7, v11, v12}, Lorg/mortbay/jetty/InclusiveByteRange;-><init>(JJ)V

    invoke-static {v1, v4}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    :cond_8
    :goto_3
    const-string v4, "bytes"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_1

    :cond_9
    invoke-static {v6, v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Bad range format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_a
    const/4 p0, 0x1

    invoke-static {v1, p0}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static to416HeaderRangeString(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "bytes */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFirst()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->a:J

    return-wide v0
.end method

.method public getFirst(J)J
    .locals 5

    .line 2
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 3
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->b:J

    sub-long/2addr p1, v0

    cmp-long p0, p1, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    return-wide v2

    :cond_1
    return-wide v0
.end method

.method public getLast()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->b:J

    return-wide v0
.end method

.method public getLast(J)J
    .locals 6

    .line 2
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v4, 0x1

    if-gez v0, :cond_0

    sub-long/2addr p1, v4

    return-wide p1

    .line 3
    :cond_0
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->b:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_2

    cmp-long p0, v0, p1

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    return-wide v0

    :cond_2
    :goto_0
    sub-long/2addr p1, v4

    return-wide p1
.end method

.method public getSize(J)J
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/InclusiveByteRange;->getLast(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/InclusiveByteRange;->getFirst(J)J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x1

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public toHeaderRangeString(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/InclusiveByteRange;->getFirst(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/InclusiveByteRange;->getLast(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-wide v1, p0, Lorg/mortbay/jetty/InclusiveByteRange;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lorg/mortbay/jetty/InclusiveByteRange;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
