.class public Lorg/apache/http/impl/cookie/PublicSuffixFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/cookie/CookieAttributeHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lorg/apache/http/cookie/CookieAttributeHandler;

.field public b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lorg/apache/http/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>(Lorg/apache/http/cookie/CookieAttributeHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->a:Lorg/apache/http/cookie/CookieAttributeHandler;

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/http/cookie/Cookie;)Z
    .locals 3

    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->d:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/conn/util/PublicSuffixMatcher;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->c:Ljava/util/Collection;

    iget-object v2, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->b:Ljava/util/Collection;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/conn/util/PublicSuffixMatcher;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->d:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    :cond_0
    iget-object p0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->d:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/http/conn/util/PublicSuffixMatcher;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->a(Lorg/apache/http/cookie/Cookie;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->a:Lorg/apache/http/cookie/CookieAttributeHandler;

    invoke-interface {p0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result p0

    return p0
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->a:Lorg/apache/http/cookie/CookieAttributeHandler;

    invoke-interface {p0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    return-void
.end method

.method public setExceptions(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->b:Ljava/util/Collection;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->d:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    return-void
.end method

.method public setPublicSuffixes(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->c:Ljava/util/Collection;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->d:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    return-void
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->a:Lorg/apache/http/cookie/CookieAttributeHandler;

    invoke-interface {p0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    return-void
.end method
