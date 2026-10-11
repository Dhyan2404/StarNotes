.class public Lorg/xmlresolver/cache/CacheParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;


# instance fields
.field protected final logger:Lorg/xmlresolver/logging/ResolverLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "^[0-9]+k$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/xmlresolver/cache/CacheParser;->a:Ljava/util/regex/Pattern;

    const-string v0, "^[0-9]+m$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/xmlresolver/cache/CacheParser;->b:Ljava/util/regex/Pattern;

    const-string v2, "^[0-9]+g$"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lorg/xmlresolver/cache/CacheParser;->c:Ljava/util/regex/Pattern;

    const-string v2, "^[0-9]+s$"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lorg/xmlresolver/cache/CacheParser;->d:Ljava/util/regex/Pattern;

    sput-object v0, Lorg/xmlresolver/cache/CacheParser;->e:Ljava/util/regex/Pattern;

    const-string v0, "^[0-9]+h$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/xmlresolver/cache/CacheParser;->f:Ljava/util/regex/Pattern;

    const-string v0, "^[0-9]+d$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/xmlresolver/cache/CacheParser;->g:Ljava/util/regex/Pattern;

    const-string v0, "^[0-9]+w$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/xmlresolver/cache/CacheParser;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p1, v0}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object p1, p0, Lorg/xmlresolver/cache/CacheParser;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    return-void
.end method


# virtual methods
.method public parseLong(Ljava/lang/String;J)J
    .locals 2

    if-nez p1, :cond_0

    return-wide p2

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    .line 2
    :catch_0
    iget-object p0, p0, Lorg/xmlresolver/cache/CacheParser;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v0, "Bad numeric value: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "error"

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide p2
.end method

.method public parseLong(Ljava/lang/String;JJ)J
    .locals 0

    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr p0, p2

    return-wide p0

    .line 4
    :catch_0
    iget-object p0, p0, Lorg/xmlresolver/cache/CacheParser;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string p2, "Bad numeric value: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "error"

    invoke-interface {p0, p3, p2, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide p4
.end method

.method public parseSizeLong(Ljava/lang/String;J)J
    .locals 8

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    sget-object v0, Lorg/xmlresolver/cache/CacheParser;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x400

    :goto_0
    move-object v3, p1

    move-wide v4, v0

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/xmlresolver/cache/CacheParser;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-wide/32 v0, 0xfa000

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/xmlresolver/cache/CacheParser;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-wide/32 v0, 0x3d090000

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x1

    goto :goto_0

    :goto_1
    move-object v2, p0

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/xmlresolver/cache/CacheParser;->parseLong(Ljava/lang/String;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public parseTimeLong(Ljava/lang/String;J)J
    .locals 10

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    sget-object v0, Lorg/xmlresolver/cache/CacheParser;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    move-object v5, p1

    move-wide v6, v2

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/xmlresolver/cache/CacheParser;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0x3c

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/xmlresolver/cache/CacheParser;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0xe10

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/xmlresolver/cache/CacheParser;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-wide/32 v2, 0x15180

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/xmlresolver/cache/CacheParser;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-wide/32 v2, 0x93a80

    goto :goto_0

    :goto_1
    move-object v4, p0

    move-wide v8, p2

    invoke-virtual/range {v4 .. v9}, Lorg/xmlresolver/cache/CacheParser;->parseLong(Ljava/lang/String;JJ)J

    move-result-wide p0

    return-wide p0
.end method
