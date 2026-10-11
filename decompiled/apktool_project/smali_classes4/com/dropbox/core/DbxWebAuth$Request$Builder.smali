.class public final Lcom/dropbox/core/DbxWebAuth$Request$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxWebAuth$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;

.field public f:Lcom/dropbox/core/DbxSessionStore;

.field public g:Lcom/dropbox/core/TokenAccessType;

.field public h:Ljava/lang/String;

.field public i:Lcom/dropbox/core/IncludeGrantedScopes;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/TokenAccessType;Ljava/lang/String;Lcom/dropbox/core/IncludeGrantedScopes;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dropbox/core/DbxWebAuth$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/TokenAccessType;Ljava/lang/String;Lcom/dropbox/core/IncludeGrantedScopes;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->b:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->c:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->d:Ljava/lang/Boolean;

    .line 9
    iput-object p5, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->e:Ljava/lang/Boolean;

    .line 10
    iput-object p6, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->f:Lcom/dropbox/core/DbxSessionStore;

    .line 11
    iput-object p7, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->g:Lcom/dropbox/core/TokenAccessType;

    .line 12
    iput-object p8, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->h:Ljava/lang/String;

    .line 13
    iput-object p9, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->i:Lcom/dropbox/core/IncludeGrantedScopes;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/TokenAccessType;Ljava/lang/String;Lcom/dropbox/core/IncludeGrantedScopes;Lcom/dropbox/core/DbxWebAuth$a;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p9}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/TokenAccessType;Ljava/lang/String;Lcom/dropbox/core/IncludeGrantedScopes;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/DbxWebAuth$Request;
    .locals 12

    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot specify a state without a redirect URI."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->i:Lcom/dropbox/core/IncludeGrantedScopes;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "If you are using includeGrantedScopes, you must ask for specific new scopes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    new-instance v0, Lcom/dropbox/core/DbxWebAuth$Request;

    iget-object v2, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->d:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->e:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->f:Lcom/dropbox/core/DbxSessionStore;

    iget-object v8, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->g:Lcom/dropbox/core/TokenAccessType;

    iget-object v9, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->h:Ljava/lang/String;

    iget-object v10, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->i:Lcom/dropbox/core/IncludeGrantedScopes;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/dropbox/core/DbxWebAuth$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/TokenAccessType;Ljava/lang/String;Lcom/dropbox/core/IncludeGrantedScopes;Lcom/dropbox/core/DbxWebAuth$a;)V

    return-object v0
.end method

.method public withDisableSignup(Ljava/lang/Boolean;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withForceReapprove(Ljava/lang/Boolean;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withIncludeGrantedScopes(Lcom/dropbox/core/IncludeGrantedScopes;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->i:Lcom/dropbox/core/IncludeGrantedScopes;

    return-object p0
.end method

.method public withNoRedirect()Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->f:Lcom/dropbox/core/DbxSessionStore;

    return-object p0
.end method

.method public withRedirectUri(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->f:Lcom/dropbox/core/DbxSessionStore;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "sessionStore"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "redirectUri"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public withRequireRole(Ljava/lang/String;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public withScope(Ljava/util/Collection;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/DbxWebAuth$Request$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, " "

    invoke-static {p1, v0}, Lcom/dropbox/core/util/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->h:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/dropbox/core/DbxWebAuth$Request;->c()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/dropbox/core/DbxWebAuth;->a()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UTF-8 encoded state cannot be greater than "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dropbox/core/DbxWebAuth;->a()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public withTokenAccessType(Lcom/dropbox/core/TokenAccessType;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->g:Lcom/dropbox/core/TokenAccessType;

    return-object p0
.end method
