.class public Lcom/evernote/auth/EvernoteAuth;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/String; = "UTF-8"

.field public static final g:Ljava/lang/String; = "/edam/user"

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Ljava/util/regex/Pattern;

.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/regex/Pattern;


# instance fields
.field public a:Lcom/evernote/auth/EvernoteService;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "oauth_token=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/evernote/auth/EvernoteAuth;->h:Ljava/util/regex/Pattern;

    const-string v0, "edam_noteStoreUrl=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/evernote/auth/EvernoteAuth;->i:Ljava/util/regex/Pattern;

    const-string v0, "edam_webApiUrlPrefix=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/evernote/auth/EvernoteAuth;->j:Ljava/util/regex/Pattern;

    const-string v0, "edam_userId=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/evernote/auth/EvernoteAuth;->k:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/evernote/auth/EvernoteService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iput-object p1, p0, Lcom/evernote/auth/EvernoteAuth;->a:Lcom/evernote/auth/EvernoteService;

    .line 3
    iput-object p2, p0, Lcom/evernote/auth/EvernoteAuth;->b:Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "EvernoteService and token must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/evernote/auth/EvernoteService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 6
    iput-object p1, p0, Lcom/evernote/auth/EvernoteAuth;->a:Lcom/evernote/auth/EvernoteService;

    .line 7
    iput-object p2, p0, Lcom/evernote/auth/EvernoteAuth;->b:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/evernote/auth/EvernoteAuth;->c:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/evernote/auth/EvernoteAuth;->d:Ljava/lang/String;

    .line 10
    iput p5, p0, Lcom/evernote/auth/EvernoteAuth;->e:I

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "EvernoteService, token, noteStoreUrl and webApiUrlPrefix must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/evernote/auth/AuthException;

    const-string v0, "Charset not found while decoding string: UTF-8"

    invoke-direct {p1, v0, p0}, Lcom/evernote/auth/AuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_0
    new-instance p1, Lcom/evernote/auth/AuthException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response body is incorrect. Can\'t extract token and secret from this: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/evernote/auth/AuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/evernote/auth/EvernoteAuth;->i:Ljava/util/regex/Pattern;

    invoke-static {p0, v0}, Lcom/evernote/auth/EvernoteAuth;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/evernote/auth/EvernoteAuth;->h:Ljava/util/regex/Pattern;

    invoke-static {p0, v0}, Lcom/evernote/auth/EvernoteAuth;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/evernote/auth/EvernoteAuth;->k:Ljava/util/regex/Pattern;

    invoke-static {p0, v0}, Lcom/evernote/auth/EvernoteAuth;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/evernote/auth/EvernoteAuth;->j:Ljava/util/regex/Pattern;

    invoke-static {p0, v0}, Lcom/evernote/auth/EvernoteAuth;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseOAuthResponse(Lcom/evernote/auth/EvernoteService;Ljava/lang/String;)Lcom/evernote/auth/EvernoteAuth;
    .locals 7

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v6, Lcom/evernote/auth/EvernoteAuth;

    invoke-static {p1}, Lcom/evernote/auth/EvernoteAuth;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/evernote/auth/EvernoteAuth;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/evernote/auth/EvernoteAuth;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/evernote/auth/EvernoteAuth;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/evernote/auth/EvernoteAuth;-><init>(Lcom/evernote/auth/EvernoteService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v6

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "EvernoteService and response must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getNoteStoreUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/auth/EvernoteAuth;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/auth/EvernoteAuth;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    iget p0, p0, Lcom/evernote/auth/EvernoteAuth;->e:I

    return p0
.end method

.method public getUserStoreUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/evernote/auth/EvernoteAuth;->a:Lcom/evernote/auth/EvernoteService;

    const-string v0, "/edam/user"

    invoke-virtual {p0, v0}, Lcom/evernote/auth/EvernoteService;->getEndpointUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWebApiUrlPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/auth/EvernoteAuth;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setNoteStoreUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/auth/EvernoteAuth;->c:Ljava/lang/String;

    return-void
.end method
