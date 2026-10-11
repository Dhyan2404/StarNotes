.class public Lcom/onegravity/rteditor/utils/validator/UrlValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALLOW_2_SLASHES:J = 0x2L

.field public static final ALLOW_ALL_SCHEMES:J = 0x1L

.field public static final ALLOW_LOCAL_URLS:J = 0x8L

.field private static final AUTHORITY_CHARS_REGEX:Ljava/lang/String; = "\\p{Alnum}\\-\\."

.field private static final AUTHORITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final AUTHORITY_REGEX:Ljava/lang/String; = "^([\\p{Alnum}\\-\\.]*)(:\\d*)?(.*)?"

.field private static final DEFAULT_SCHEMES:[Ljava/lang/String;

.field private static final DEFAULT_URL_VALIDATOR:Lcom/onegravity/rteditor/utils/validator/UrlValidator;

.field public static final NO_FRAGMENTS:J = 0x4L

.field private static final PARSE_AUTHORITY_EXTRA:I = 0x3

.field private static final PARSE_AUTHORITY_HOST_IP:I = 0x1

.field private static final PARSE_AUTHORITY_PORT:I = 0x2

.field private static final PARSE_URL_AUTHORITY:I = 0x4

.field private static final PARSE_URL_FRAGMENT:I = 0x9

.field private static final PARSE_URL_PATH:I = 0x5

.field private static final PARSE_URL_QUERY:I = 0x7

.field private static final PARSE_URL_SCHEME:I = 0x2

.field private static final PATH_PATTERN:Ljava/util/regex/Pattern;

.field private static final PATH_REGEX:Ljava/lang/String; = "^(/[-\\w:@&?=+,.!/~*\'%$_;\\(\\)]*)?$"

.field private static final PORT_PATTERN:Ljava/util/regex/Pattern;

.field private static final PORT_REGEX:Ljava/lang/String; = "^:(\\d{1,5})$"

.field private static final QUERY_PATTERN:Ljava/util/regex/Pattern;

.field private static final QUERY_REGEX:Ljava/lang/String; = "^(.*)$"

.field private static final SCHEME_PATTERN:Ljava/util/regex/Pattern;

.field private static final SCHEME_REGEX:Ljava/lang/String; = "^\\p{Alpha}[\\p{Alnum}\\+\\-\\.]*"

.field private static final URL_PATTERN:Ljava/util/regex/Pattern;

.field private static final URL_REGEX:Ljava/lang/String; = "^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\\?([^#]*))?(#(.*))?"

.field private static final serialVersionUID:J = 0x68e06e8a0d6ac2e5L


# instance fields
.field private final allowedSchemes:Ljava/util/Set;

.field private final authorityValidator:Lcom/onegravity/rteditor/utils/validator/RegexValidator;

.field private final options:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\\?([^#]*))?(#(.*))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->URL_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^\\p{Alpha}[\\p{Alnum}\\+\\-\\.]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->SCHEME_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^([\\p{Alnum}\\-\\.]*)(:\\d*)?(.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->AUTHORITY_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(/[-\\w:@&?=+,.!/~*\'%$_;\\(\\)]*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->PATH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->QUERY_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^:(\\d{1,5})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->PORT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "https"

    const-string v1, "ftp"

    const-string v2, "http"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->DEFAULT_SCHEMES:[Ljava/lang/String;

    new-instance v0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;

    invoke-direct {v0}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->DEFAULT_URL_VALIDATOR:Lcom/onegravity/rteditor/utils/validator/UrlValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;-><init>([Ljava/lang/String;Lcom/onegravity/rteditor/utils/validator/RegexValidator;J)V

    return-void
.end method

.method public constructor <init>(Lcom/onegravity/rteditor/utils/validator/RegexValidator;J)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;-><init>([Ljava/lang/String;Lcom/onegravity/rteditor/utils/validator/RegexValidator;J)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;-><init>([Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;-><init>([Ljava/lang/String;Lcom/onegravity/rteditor/utils/validator/RegexValidator;J)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/onegravity/rteditor/utils/validator/RegexValidator;J)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p3, p0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->options:J

    const-wide/16 p3, 0x1

    .line 8
    invoke-direct {p0, p3, p4}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->isOn(J)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 9
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object p1, p0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->allowedSchemes:Ljava/util/Set;

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 10
    sget-object p1, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->DEFAULT_SCHEMES:[Ljava/lang/String;

    .line 11
    :cond_1
    new-instance p3, Ljava/util/HashSet;

    array-length p4, p1

    invoke-direct {p3, p4}, Ljava/util/HashSet;-><init>(I)V

    iput-object p3, p0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->allowedSchemes:Ljava/util/Set;

    const/4 p3, 0x0

    .line 12
    :goto_0
    array-length p4, p1

    if-ge p3, p4, :cond_2

    .line 13
    iget-object p4, p0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->allowedSchemes:Ljava/util/Set;

    aget-object v0, p1, p3

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 14
    :cond_2
    :goto_1
    iput-object p2, p0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->authorityValidator:Lcom/onegravity/rteditor/utils/validator/RegexValidator;

    return-void
.end method

.method public static getInstance()Lcom/onegravity/rteditor/utils/validator/UrlValidator;
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->DEFAULT_URL_VALIDATOR:Lcom/onegravity/rteditor/utils/validator/UrlValidator;

    return-object v0
.end method

.method private isOff(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->options:J

    and-long p0, v0, p1

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOn(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->options:J

    and-long p0, v0, p1

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public countToken(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    invoke-virtual {p2, p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    if-le p0, v1, :cond_0

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->isValidScheme(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->isValidAuthority(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    :goto_0
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->isValidPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    :cond_5
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->isValidQuery(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->isValidFragment(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public isValidAuthority(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->authorityValidator:Lcom/onegravity/rteditor/utils/validator/RegexValidator;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/onegravity/rteditor/utils/validator/RegexValidator;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-static {p1}, Lcom/onegravity/rteditor/utils/validator/DomainValidator;->unicodeToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->AUTHORITY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x8

    invoke-direct {p0, v3, v4}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->isOn(J)Z

    move-result p0

    invoke-static {p0}, Lcom/onegravity/rteditor/utils/validator/DomainValidator;->getInstance(Z)Lcom/onegravity/rteditor/utils/validator/DomainValidator;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/utils/validator/DomainValidator;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;->getInstance()Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object v1, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->PORT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->isOff(J)Z

    move-result p0

    return p0
.end method

.method public isValidPath(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->PATH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v1, "//"

    invoke-virtual {p0, v1, p1}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->countToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-wide/16 v2, 0x2

    invoke-direct {p0, v2, v3}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->isOff(J)Z

    move-result v2

    if-eqz v2, :cond_2

    if-lez v1, :cond_2

    return v0

    :cond_2
    const-string v2, "/"

    invoke-virtual {p0, v2, p1}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->countToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, ".."

    invoke-virtual {p0, v3, p1}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->countToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-lez p0, :cond_3

    sub-int/2addr v2, v1

    sub-int/2addr v2, p1

    if-gt v2, p0, :cond_3

    return v0

    :cond_3
    return p1
.end method

.method public isValidQuery(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->QUERY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public isValidScheme(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->SCHEME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-wide/16 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->isOff(J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->allowedSchemes:Ljava/util/Set;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
