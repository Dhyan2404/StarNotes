.class public Lorg/mortbay/util/QuotedStringTokenizer;
.super Ljava/util/StringTokenizer;
.source "SourceFile"


# static fields
.field public static final o:Ljava/lang/String; = "\t\n\r"


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/StringBuffer;

.field public j:Z

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1, v0, v1, v1}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    const-string v0, "\t\n\r"

    .line 2
    iput-object v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->g:Z

    .line 4
    iput-boolean v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->h:Z

    .line 5
    iput-boolean v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->j:Z

    .line 6
    iput v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->k:I

    .line 7
    iput v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->l:I

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->m:Z

    .line 9
    iput-boolean v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->n:Z

    .line 10
    iput-object p1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->e:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 11
    iput-object p2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->f:Ljava/lang/String;

    .line 12
    :cond_0
    iput-boolean p3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->h:Z

    .line 13
    iput-boolean p4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->g:Z

    .line 14
    iget-object p1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->f:Ljava/lang/String;

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_2

    iget-object p1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->f:Ljava/lang/String;

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_2

    .line 15
    new-instance p1, Ljava/lang/StringBuffer;

    iget-object p2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->e:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x400

    if-le p2, p3, :cond_1

    const/16 p2, 0x200

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->e:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    :goto_0
    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    return-void

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Can\'t use quotes as delimiters: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->f:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "\"\""

    return-object p0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 10
    invoke-static {v0, p0}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "\"\""

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_3

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3

    const/16 v2, 0x27

    if-eq v1, v2, :cond_3

    .line 4
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6
    invoke-static {p1, p0}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 7

    .line 12
    monitor-enter p0

    const/16 v0, 0x22

    .line 13
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    move v2, v1

    .line 14
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x5c

    const/16 v5, 0xd

    const/16 v6, 0xc

    if-ge v2, v3, :cond_4

    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-eq v3, v0, :cond_1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 17
    invoke-virtual {p0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const-string v1, "\\n"

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 19
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 20
    invoke-virtual {p0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const-string v1, "\\t"

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 22
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 23
    invoke-virtual {p0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const-string v1, "\\b"

    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 26
    invoke-virtual {p0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const-string v1, "\\\\"

    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 29
    invoke-virtual {p0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const-string v1, "\\\""

    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 32
    invoke-virtual {p0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const-string v1, "\\r"

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 34
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 35
    invoke-virtual {p0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const-string v1, "\\f"

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_9

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 38
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_a

    .line 39
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v6, :cond_8

    if-eq v1, v5, :cond_7

    if-eq v1, v0, :cond_6

    if-eq v1, v4, :cond_5

    packed-switch v1, :pswitch_data_1

    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_3
    const-string v1, "\\n"

    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_4
    const-string v1, "\\t"

    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_5
    const-string v1, "\\b"

    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    const-string v1, "\\\\"

    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    const-string v1, "\\\""

    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    const-string v1, "\\r"

    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    const-string v1, "\\f"

    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 48
    :cond_a
    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static quoteIfNeeded(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x5c

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0x22

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_0

    if-eq v2, v4, :cond_0

    const/16 v7, 0x20

    if-eq v2, v7, :cond_0

    if-eq v2, v6, :cond_0

    const/16 v7, 0x25

    if-eq v2, v7, :cond_0

    const/16 v7, 0x2b

    if-eq v2, v7, :cond_0

    const/16 v7, 0x3b

    if-eq v2, v7, :cond_0

    const/16 v7, 0x3d

    if-eq v2, v7, :cond_0

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :pswitch_0
    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :cond_2
    if-gez v1, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    monitor-exit p0

    return-void

    :cond_3
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v3, :cond_4

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_1
    const-string v0, "\\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_2
    const-string v0, "\\t"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_3
    const-string v0, "\\b"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    const-string v0, "\\\\"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    const-string v0, "\\\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    const-string v0, "\\r"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    const-string v0, "\\f"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_c

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    const/16 v3, 0x27

    if-eq v2, v3, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    monitor-enter v2

    move v3, v0

    move v1, v4

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v1, v5, :cond_b

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v3, :cond_9

    const/16 v3, 0x62

    const/16 v6, 0x8

    if-eq v5, v3, :cond_8

    const/16 v3, 0x66

    if-eq v5, v3, :cond_7

    const/16 v3, 0x6e

    if-eq v5, v3, :cond_6

    const/16 v3, 0x72

    if-eq v5, v3, :cond_5

    const/16 v3, 0x74

    if-eq v5, v3, :cond_4

    const/16 v3, 0x75

    if-eq v5, v3, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v1, v3

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    invoke-static {v5}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v5

    shl-int/2addr v5, v6

    add-int/2addr v1, v5

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v3

    add-int/2addr v1, v3

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v0

    move v1, v5

    goto :goto_2

    :cond_4
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_8
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_9
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_a

    move v3, v4

    goto :goto_2

    :cond_a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/2addr v1, v4

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v2

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_c
    :goto_3
    return-object p0
.end method


# virtual methods
.method public countTokens()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getDouble()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->m:Z

    return p0
.end method

.method public getSingle()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->n:Z

    return p0
.end method

.method public hasMoreElements()Z
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result p0

    return p0
.end method

.method public hasMoreTokens()Z
    .locals 10

    iget-boolean v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->k:I

    iput v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->l:I

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :cond_1
    :goto_0
    iget v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->k:I

    iget-object v5, p0, Lorg/mortbay/util/QuotedStringTokenizer;->e:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_17

    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->e:Ljava/lang/String;

    iget v5, p0, Lorg/mortbay/util/QuotedStringTokenizer;->k:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/mortbay/util/QuotedStringTokenizer;->k:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    const/16 v6, 0x27

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v2, :cond_10

    if-eq v2, v1, :cond_b

    const/16 v9, 0x5c

    if-eq v2, v8, :cond_6

    if-eq v2, v7, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->j:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    if-ne v4, v5, :cond_4

    iget-boolean v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->g:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :cond_4
    if-ne v4, v9, :cond_5

    iget-boolean v3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->g:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    iput-boolean v1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->j:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    move v3, v0

    goto :goto_0

    :cond_7
    if-ne v4, v6, :cond_8

    iget-boolean v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->g:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :cond_8
    if-ne v4, v9, :cond_a

    iget-boolean v3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->g:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    :goto_2
    move v3, v1

    goto :goto_0

    :cond_a
    iget-object v5, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_b
    iput-boolean v1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->j:Z

    iget-object v9, p0, Lorg/mortbay/util/QuotedStringTokenizer;->f:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_d

    iget-boolean v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->h:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->k:I

    :cond_c
    iget-boolean p0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->j:Z

    return p0

    :cond_d
    if-ne v4, v6, :cond_e

    iget-boolean v6, p0, Lorg/mortbay/util/QuotedStringTokenizer;->n:Z

    if-eqz v6, :cond_e

    iget-boolean v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->g:Z

    if-eqz v2, :cond_12

    iget-object v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_e
    if-ne v4, v5, :cond_f

    iget-boolean v5, p0, Lorg/mortbay/util/QuotedStringTokenizer;->m:Z

    if-eqz v5, :cond_f

    iget-boolean v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->g:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_f
    iget-object v5, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_10
    iget-object v9, p0, Lorg/mortbay/util/QuotedStringTokenizer;->f:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_11

    iget-boolean v5, p0, Lorg/mortbay/util/QuotedStringTokenizer;->h:Z

    if-eqz v5, :cond_1

    iget-object v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iput-boolean v1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->j:Z

    return v1

    :cond_11
    if-ne v4, v6, :cond_13

    iget-boolean v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->n:Z

    if-eqz v2, :cond_13

    iget-boolean v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->g:Z

    if-eqz v2, :cond_12

    iget-object v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_12
    :goto_3
    move v2, v8

    goto/16 :goto_0

    :cond_13
    if-ne v4, v5, :cond_15

    iget-boolean v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->m:Z

    if-eqz v2, :cond_15

    iget-boolean v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->g:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_14
    :goto_4
    move v2, v7

    goto/16 :goto_0

    :cond_15
    iget-object v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iput-boolean v1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->j:Z

    :cond_16
    :goto_5
    move v2, v1

    goto/16 :goto_0

    :cond_17
    iget-boolean p0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->j:Z

    return p0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4
    iput-boolean v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->j:Z

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public nextToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->f:Ljava/lang/String;

    .line 7
    iget p1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->l:I

    iput p1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->k:I

    .line 8
    iget-object p1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->i:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 9
    iput-boolean v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->j:Z

    .line 10
    invoke-virtual {p0}, Lorg/mortbay/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setDouble(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->m:Z

    return-void
.end method

.method public setSingle(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->n:Z

    return-void
.end method
