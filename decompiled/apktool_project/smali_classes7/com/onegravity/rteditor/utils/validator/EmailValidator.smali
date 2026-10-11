.class public Lcom/onegravity/rteditor/utils/validator/EmailValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field private static final EMAIL_REGEX:Ljava/lang/String; = "^\\s*?(.+)@(.+?)\\s*$"

.field private static final EMAIL_VALIDATOR:Lcom/onegravity/rteditor/utils/validator/EmailValidator;

.field private static final EMAIL_VALIDATOR_WITH_LOCAL:Lcom/onegravity/rteditor/utils/validator/EmailValidator;

.field private static final IP_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

.field private static final IP_DOMAIN_REGEX:Ljava/lang/String; = "^\\[(.*)\\]$"

.field private static final QUOTED_USER:Ljava/lang/String; = "(\"[^\"]*\")"

.field private static final SPECIAL_CHARS:Ljava/lang/String; = "\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]"

.field private static final USER_PATTERN:Ljava/util/regex/Pattern;

.field private static final USER_REGEX:Ljava/lang/String; = "^\\s*(([^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"[^\"]*\"))(\\.(([^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"[^\"]*\")))*$"

.field private static final VALID_CHARS:Ljava/lang/String; = "[^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]"

.field private static final WORD:Ljava/lang/String; = "(([^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"[^\"]*\"))"

.field private static final serialVersionUID:J = 0x17acab9aef934988L


# instance fields
.field private final allowLocal:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "^\\s*?(.+)@(.+?)\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/utils/validator/EmailValidator;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^\\[(.*)\\]$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/utils/validator/EmailValidator;->IP_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^\\s*(([^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"[^\"]*\"))(\\.(([^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"[^\"]*\")))*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/utils/validator/EmailValidator;->USER_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/onegravity/rteditor/utils/validator/EmailValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onegravity/rteditor/utils/validator/EmailValidator;-><init>(Z)V

    sput-object v0, Lcom/onegravity/rteditor/utils/validator/EmailValidator;->EMAIL_VALIDATOR:Lcom/onegravity/rteditor/utils/validator/EmailValidator;

    new-instance v0, Lcom/onegravity/rteditor/utils/validator/EmailValidator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/onegravity/rteditor/utils/validator/EmailValidator;-><init>(Z)V

    sput-object v0, Lcom/onegravity/rteditor/utils/validator/EmailValidator;->EMAIL_VALIDATOR_WITH_LOCAL:Lcom/onegravity/rteditor/utils/validator/EmailValidator;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/onegravity/rteditor/utils/validator/EmailValidator;->allowLocal:Z

    return-void
.end method

.method public static getInstance()Lcom/onegravity/rteditor/utils/validator/EmailValidator;
    .locals 1

    .line 1
    sget-object v0, Lcom/onegravity/rteditor/utils/validator/EmailValidator;->EMAIL_VALIDATOR:Lcom/onegravity/rteditor/utils/validator/EmailValidator;

    return-object v0
.end method

.method public static getInstance(Z)Lcom/onegravity/rteditor/utils/validator/EmailValidator;
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/onegravity/rteditor/utils/validator/EmailValidator;->EMAIL_VALIDATOR_WITH_LOCAL:Lcom/onegravity/rteditor/utils/validator/EmailValidator;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/onegravity/rteditor/utils/validator/EmailValidator;->EMAIL_VALIDATOR:Lcom/onegravity/rteditor/utils/validator/EmailValidator;

    return-object p0
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    sget-object v1, Lcom/onegravity/rteditor/utils/validator/EmailValidator;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onegravity/rteditor/utils/validator/EmailValidator;->isValidUser(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/utils/validator/EmailValidator;->isValidDomain(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method public isValidDomain(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/onegravity/rteditor/utils/validator/EmailValidator;->IP_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;->getInstance()Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;

    move-result-object p0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;->isValid(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/onegravity/rteditor/utils/validator/EmailValidator;->allowLocal:Z

    invoke-static {p0}, Lcom/onegravity/rteditor/utils/validator/DomainValidator;->getInstance(Z)Lcom/onegravity/rteditor/utils/validator/DomainValidator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/utils/validator/DomainValidator;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/utils/validator/DomainValidator;->isValidTld(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public isValidUser(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/onegravity/rteditor/utils/validator/EmailValidator;->USER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
