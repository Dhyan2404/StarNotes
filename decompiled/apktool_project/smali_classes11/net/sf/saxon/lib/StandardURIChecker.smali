.class public Lnet/sf/saxon/lib/StandardURIChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/URIChecker;


# static fields
.field public static final a:Lnet/sf/saxon/lib/StandardURIChecker;

.field public static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lnet/sf/saxon/expr/sort/LFUCache<",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/lib/StandardURIChecker;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardURIChecker;-><init>()V

    sput-object v0, Lnet/sf/saxon/lib/StandardURIChecker;->a:Lnet/sf/saxon/lib/StandardURIChecker;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lnet/sf/saxon/lib/StandardURIChecker;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/lib/StandardURIChecker;
    .locals 1

    sget-object v0, Lnet/sf/saxon/lib/StandardURIChecker;->a:Lnet/sf/saxon/lib/StandardURIChecker;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is valid? - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/sf/saxon/lib/StandardURIChecker;->getInstance()Lnet/sf/saxon/lib/StandardURIChecker;

    move-result-object v3

    aget-object p0, p0, v2

    invoke-virtual {v3, p0}, Lnet/sf/saxon/lib/StandardURIChecker;->isValidURI(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkThoroughly(Ljava/net/URI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardURIChecker;->passesAdditionalChecks(Ljava/net/URI;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/net/URISyntaxException;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Fails detailed checking"

    invoke-direct {p0, p1, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public isValidURI(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lnet/sf/saxon/lib/StandardURIChecker;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/sort/LFUCache;

    if-nez v1, :cond_0

    new-instance v1, Lnet/sf/saxon/expr/sort/LFUCache;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/sort/LFUCache;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/sort/LFUCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/lib/StandardURIChecker;->passesAdditionalChecks(Ljava/net/URI;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, p1, v3}, Lnet/sf/saxon/expr/sort/LFUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    :cond_3
    invoke-static {v0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/functions/IriToUri;->iriToUri(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/lib/StandardURIChecker;->passesAdditionalChecks(Ljava/net/URI;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v1, p1, v4}, Lnet/sf/saxon/expr/sort/LFUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    :cond_4
    return v3
.end method

.method public passesAdditionalChecks(Ljava/net/URI;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
