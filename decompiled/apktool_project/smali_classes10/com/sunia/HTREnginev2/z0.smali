.class public Lcom/sunia/HTREnginev2/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Lcom/sunia/HTREnginev2/z0;

.field public static final e:Lcom/sunia/HTREnginev2/z0;

.field public static final f:Lcom/sunia/HTREnginev2/z0;

.field public static final g:Lcom/sunia/HTREnginev2/z0;

.field public static final h:Lcom/sunia/HTREnginev2/z0;


# instance fields
.field public final a:D

.field public final b:Lcom/sunia/HTREnginev2/a1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "[0-9]+(\\.[0-9]*)?|\\.[0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/z0;->c:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/z0;->a(I)Lcom/sunia/HTREnginev2/z0;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/z0;->d:Lcom/sunia/HTREnginev2/z0;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sunia/HTREnginev2/z0;->a(I)Lcom/sunia/HTREnginev2/z0;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/z0;->e:Lcom/sunia/HTREnginev2/z0;

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/sunia/HTREnginev2/z0;->a(I)Lcom/sunia/HTREnginev2/z0;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/z0;->f:Lcom/sunia/HTREnginev2/z0;

    const/16 v0, 0x64

    invoke-static {v0}, Lcom/sunia/HTREnginev2/z0;->a(I)Lcom/sunia/HTREnginev2/z0;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/z0;->g:Lcom/sunia/HTREnginev2/z0;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/z0;->a(D)Lcom/sunia/HTREnginev2/z0;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/z0;->h:Lcom/sunia/HTREnginev2/z0;

    return-void
.end method

.method public constructor <init>(DLcom/sunia/HTREnginev2/a1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/z0;->a:D

    iput-object p3, p0, Lcom/sunia/HTREnginev2/z0;->b:Lcom/sunia/HTREnginev2/a1;

    return-void
.end method

.method public static a(D)Lcom/sunia/HTREnginev2/z0;
    .locals 2

    .line 11
    new-instance v0, Lcom/sunia/HTREnginev2/z0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sunia/HTREnginev2/z0;-><init>(DLcom/sunia/HTREnginev2/a1;)V

    return-object v0
.end method

.method public static a(I)Lcom/sunia/HTREnginev2/z0;
    .locals 7

    .line 12
    new-instance v0, Lcom/sunia/HTREnginev2/z0;

    int-to-double v1, p0

    int-to-long v3, p0

    const-wide/16 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/sunia/HTREnginev2/a1;->a(JJ)Lcom/sunia/HTREnginev2/a1;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/sunia/HTREnginev2/z0;-><init>(DLcom/sunia/HTREnginev2/a1;)V

    return-object v0
.end method

.method public static a(JJ)Lcom/sunia/HTREnginev2/z0;
    .locals 0

    .line 14
    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/a1;->a(JJ)Lcom/sunia/HTREnginev2/a1;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/z0;->a(Lcom/sunia/HTREnginev2/a1;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/sunia/HTREnginev2/a1;)Lcom/sunia/HTREnginev2/z0;
    .locals 5

    .line 13
    new-instance v0, Lcom/sunia/HTREnginev2/z0;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/a1;->b()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/a1;->a()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2, p0}, Lcom/sunia/HTREnginev2/z0;-><init>(DLcom/sunia/HTREnginev2/a1;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/z0;
    .locals 6

    .line 15
    sget-object v0, Lcom/sunia/HTREnginev2/z0;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    sget-object p0, Lcom/sunia/HTREnginev2/z0;->h:Lcom/sunia/HTREnginev2/z0;

    return-object p0

    .line 17
    :cond_0
    sget-object v0, Lcom/sunia/HTREnginev2/z0;->d:Lcom/sunia/HTREnginev2/z0;

    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    const/16 v4, 0xa

    if-ne v2, v3, :cond_1

    .line 20
    sget-object v2, Lcom/sunia/HTREnginev2/z0;->e:Lcom/sunia/HTREnginev2/z0;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 23
    sget-object v5, Lcom/sunia/HTREnginev2/z0;->f:Lcom/sunia/HTREnginev2/z0;

    invoke-virtual {v2, v5}, Lcom/sunia/HTREnginev2/z0;->b(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object v2

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    invoke-static {v3}, Lcom/sunia/HTREnginev2/z0;->a(I)Lcom/sunia/HTREnginev2/z0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sunia/HTREnginev2/z0;->c(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sunia/HTREnginev2/z0;->a(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object v0

    goto :goto_1

    .line 25
    :cond_1
    sget-object v3, Lcom/sunia/HTREnginev2/z0;->f:Lcom/sunia/HTREnginev2/z0;

    invoke-virtual {v0, v3}, Lcom/sunia/HTREnginev2/z0;->c(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object v0

    invoke-static {v2, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    invoke-static {v2}, Lcom/sunia/HTREnginev2/z0;->a(I)Lcom/sunia/HTREnginev2/z0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sunia/HTREnginev2/z0;->a(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static a(Lcom/sunia/HTREnginev2/z0;Lcom/sunia/HTREnginev2/z0;)Z
    .locals 7

    .line 6
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->c()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->c()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    return v2

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {v5, v6, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    const-wide v5, 0x3cd203af9ee75616L    # 1.0E-15

    mul-double/2addr p0, v5

    cmpg-double p0, v3, p0

    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method public static b(JLcom/sunia/HTREnginev2/a1;)Ljava/lang/Long;
    .locals 2

    .line 6
    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/a1;->a()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/sunia/HTREnginev2/z0;->e(JJ)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/a1;->b()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/sunia/HTREnginev2/z0;->d(JJ)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(JJ)J
    .locals 5

    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, p0, v2

    if-gtz v4, :cond_0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    mul-long/2addr p0, p2

    return-wide p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "long overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(JJ)Ljava/lang/Long;
    .locals 8

    const-wide/16 v0, 0x1

    move-wide v2, v0

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x2

    .line 10
    :try_start_0
    rem-long v6, p2, v4

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    .line 11
    invoke-static {v2, v3, p0, p1}, Lcom/sunia/HTREnginev2/z0;->c(JJ)J

    move-result-wide v2

    .line 12
    :cond_0
    div-long/2addr p2, v4

    .line 13
    invoke-static {p0, p1, p0, p1}, Lcom/sunia/HTREnginev2/z0;->c(JJ)J

    move-result-wide p0

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(JJ)Ljava/lang/Long;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, 0x0

    if-gez v2, :cond_2

    const-wide/16 v4, 0x2

    .line 6
    rem-long v4, p2, v4

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    neg-long p0, p0

    .line 7
    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/z0;->e(JJ)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/z0;->e(JJ)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    neg-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_1
    return-object v3

    :cond_2
    long-to-double v0, p0

    long-to-double v4, p2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v6, v4

    .line 9
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    .line 10
    invoke-static {v0, v1, p2, p3}, Lcom/sunia/HTREnginev2/z0;->d(JJ)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    cmp-long p0, p2, p0

    if-nez p0, :cond_3

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v3
.end method


# virtual methods
.method public a()Lcom/sunia/HTREnginev2/z0;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->h()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->g()Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public a(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->c()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v2

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->c()J

    move-result-wide v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/a1;->a(JJ)Lcom/sunia/HTREnginev2/a1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/sunia/HTREnginev2/z0;->a(Lcom/sunia/HTREnginev2/a1;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/z0;->a(D)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/z0;->b:Lcom/sunia/HTREnginev2/a1;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/a1;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->c()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v2

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->c()J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/a1;->a(JJ)Lcom/sunia/HTREnginev2/a1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/sunia/HTREnginev2/z0;->a(Lcom/sunia/HTREnginev2/a1;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/z0;->a(D)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/z0;->b:Lcom/sunia/HTREnginev2/a1;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/a1;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->c()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->c()J

    move-result-wide v2

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/a1;->a(JJ)Lcom/sunia/HTREnginev2/a1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/sunia/HTREnginev2/z0;->a(Lcom/sunia/HTREnginev2/a1;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide p0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/z0;->a(D)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0
.end method

.method public d(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 4
    sget-object v0, Lcom/sunia/HTREnginev2/z0;->e:Lcom/sunia/HTREnginev2/z0;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->g()Lcom/sunia/HTREnginev2/z0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/z0;->d(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sunia/HTREnginev2/z0;->b(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->c()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->j()Lcom/sunia/HTREnginev2/a1;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sunia/HTREnginev2/z0;->b(JLcom/sunia/HTREnginev2/a1;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->j()Lcom/sunia/HTREnginev2/a1;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sunia/HTREnginev2/z0;->b(JLcom/sunia/HTREnginev2/a1;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Lcom/sunia/HTREnginev2/a1;->a(JJ)Lcom/sunia/HTREnginev2/a1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {v0}, Lcom/sunia/HTREnginev2/z0;->a(Lcom/sunia/HTREnginev2/a1;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/z0;->a(D)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0
.end method

.method public d()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e(Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->c()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v2

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->c()J

    move-result-wide v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/a1;->a(JJ)Lcom/sunia/HTREnginev2/a1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/sunia/HTREnginev2/z0;->a(Lcom/sunia/HTREnginev2/a1;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide p0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/z0;->a(D)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/sunia/HTREnginev2/z0;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    return p0
.end method

.method public f()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/z0;->b:Lcom/sunia/HTREnginev2/a1;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()Lcom/sunia/HTREnginev2/z0;
    .locals 4

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->c()J

    move-result-wide v0

    neg-long v0, v0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/a1;->a(JJ)Lcom/sunia/HTREnginev2/a1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/z0;->a(Lcom/sunia/HTREnginev2/a1;)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/z0;->a(D)Lcom/sunia/HTREnginev2/z0;

    move-result-object p0

    return-object p0
.end method

.method public h()I
    .locals 4

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p0

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/sunia/HTREnginev2/z0;->a:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    cmpg-double p0, v0, v2

    if-gez p0, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public i()D
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/z0;->a:D

    return-wide v0
.end method

.method public j()Lcom/sunia/HTREnginev2/a1;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/z0;->b:Lcom/sunia/HTREnginev2/a1;

    return-object p0
.end method
