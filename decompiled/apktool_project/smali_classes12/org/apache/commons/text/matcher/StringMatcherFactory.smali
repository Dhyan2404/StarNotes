.class public final Lorg/apache/commons/text/matcher/StringMatcherFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

.field public static final a:Lorg/apache/commons/text/matcher/a$b;

.field public static final b:Lorg/apache/commons/text/matcher/a$a;

.field public static final c:Lorg/apache/commons/text/matcher/a$a;

.field public static final d:Lorg/apache/commons/text/matcher/a$a;

.field public static final e:Lorg/apache/commons/text/matcher/a$e;

.field public static final f:Lorg/apache/commons/text/matcher/a$a;

.field public static final g:Lorg/apache/commons/text/matcher/a$a;

.field public static final h:Lorg/apache/commons/text/matcher/a$b;

.field public static final i:Lorg/apache/commons/text/matcher/a$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;

    invoke-direct {v0}, Lorg/apache/commons/text/matcher/StringMatcherFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/apache/commons/text/matcher/StringMatcherFactory;

    new-instance v0, Lorg/apache/commons/text/matcher/a$b;

    const-string v1, " \t\n\r\u000c"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/matcher/a$b;-><init>([C)V

    sput-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->a:Lorg/apache/commons/text/matcher/a$b;

    new-instance v0, Lorg/apache/commons/text/matcher/a$a;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Lorg/apache/commons/text/matcher/a$a;-><init>(C)V

    sput-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->b:Lorg/apache/commons/text/matcher/a$a;

    new-instance v0, Lorg/apache/commons/text/matcher/a$a;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/commons/text/matcher/a$a;-><init>(C)V

    sput-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->c:Lorg/apache/commons/text/matcher/a$a;

    new-instance v0, Lorg/apache/commons/text/matcher/a$a;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/commons/text/matcher/a$a;-><init>(C)V

    sput-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->d:Lorg/apache/commons/text/matcher/a$a;

    new-instance v0, Lorg/apache/commons/text/matcher/a$e;

    invoke-direct {v0}, Lorg/apache/commons/text/matcher/a$e;-><init>()V

    sput-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->e:Lorg/apache/commons/text/matcher/a$e;

    new-instance v0, Lorg/apache/commons/text/matcher/a$a;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Lorg/apache/commons/text/matcher/a$a;-><init>(C)V

    sput-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->f:Lorg/apache/commons/text/matcher/a$a;

    new-instance v0, Lorg/apache/commons/text/matcher/a$a;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lorg/apache/commons/text/matcher/a$a;-><init>(C)V

    sput-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->g:Lorg/apache/commons/text/matcher/a$a;

    new-instance v0, Lorg/apache/commons/text/matcher/a$b;

    const-string v1, "\'\""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/matcher/a$b;-><init>([C)V

    sput-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->h:Lorg/apache/commons/text/matcher/a$b;

    new-instance v0, Lorg/apache/commons/text/matcher/a$c;

    invoke-direct {v0}, Lorg/apache/commons/text/matcher/a$c;-><init>()V

    sput-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->i:Lorg/apache/commons/text/matcher/a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charMatcher(C)Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 0

    new-instance p0, Lorg/apache/commons/text/matcher/a$a;

    invoke-direct {p0, p1}, Lorg/apache/commons/text/matcher/a$a;-><init>(C)V

    return-object p0
.end method

.method public charSetMatcher(Ljava/lang/String;)Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 8
    new-instance p0, Lorg/apache/commons/text/matcher/a$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/commons/text/matcher/a$a;-><init>(C)V

    return-object p0

    .line 9
    :cond_1
    new-instance p0, Lorg/apache/commons/text/matcher/a$b;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/text/matcher/a$b;-><init>([C)V

    return-object p0

    .line 10
    :cond_2
    :goto_0
    sget-object p0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->i:Lorg/apache/commons/text/matcher/a$c;

    return-object p0
.end method

.method public varargs charSetMatcher([C)Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    array-length p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    array-length p0, p1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 3
    new-instance p0, Lorg/apache/commons/text/matcher/a$a;

    const/4 v0, 0x0

    aget-char p1, p1, v0

    invoke-direct {p0, p1}, Lorg/apache/commons/text/matcher/a$a;-><init>(C)V

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Lorg/apache/commons/text/matcher/a$b;

    invoke-direct {p0, p1}, Lorg/apache/commons/text/matcher/a$b;-><init>([C)V

    return-object p0

    .line 5
    :cond_2
    :goto_0
    sget-object p0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->i:Lorg/apache/commons/text/matcher/a$c;

    return-object p0
.end method

.method public commaMatcher()Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->b:Lorg/apache/commons/text/matcher/a$a;

    return-object p0
.end method

.method public doubleQuoteMatcher()Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->g:Lorg/apache/commons/text/matcher/a$a;

    return-object p0
.end method

.method public noneMatcher()Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->i:Lorg/apache/commons/text/matcher/a$c;

    return-object p0
.end method

.method public quoteMatcher()Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->h:Lorg/apache/commons/text/matcher/a$b;

    return-object p0
.end method

.method public singleQuoteMatcher()Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->f:Lorg/apache/commons/text/matcher/a$a;

    return-object p0
.end method

.method public spaceMatcher()Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->d:Lorg/apache/commons/text/matcher/a$a;

    return-object p0
.end method

.method public splitMatcher()Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->a:Lorg/apache/commons/text/matcher/a$b;

    return-object p0
.end method

.method public stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/text/matcher/a$d;

    invoke-direct {p0, p1}, Lorg/apache/commons/text/matcher/a$d;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->i:Lorg/apache/commons/text/matcher/a$c;

    return-object p0
.end method

.method public tabMatcher()Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->c:Lorg/apache/commons/text/matcher/a$a;

    return-object p0
.end method

.method public trimMatcher()Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->e:Lorg/apache/commons/text/matcher/a$e;

    return-object p0
.end method
