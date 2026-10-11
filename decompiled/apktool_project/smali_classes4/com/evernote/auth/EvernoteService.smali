.class public final enum Lcom/evernote/auth/EvernoteService;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evernote/auth/EvernoteService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evernote/auth/EvernoteService;

.field public static final enum PRODUCTION:Lcom/evernote/auth/EvernoteService;

.field public static final enum SANDBOX:Lcom/evernote/auth/EvernoteService;

.field public static final enum YINXIANG:Lcom/evernote/auth/EvernoteService;


# instance fields
.field private host:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/evernote/auth/EvernoteService;

    const/4 v1, 0x0

    const-string v2, "https://www.evernote.com"

    const-string v3, "PRODUCTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/evernote/auth/EvernoteService;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/evernote/auth/EvernoteService;->PRODUCTION:Lcom/evernote/auth/EvernoteService;

    new-instance v1, Lcom/evernote/auth/EvernoteService;

    const/4 v2, 0x1

    const-string v3, "https://sandbox.evernote.com"

    const-string v4, "SANDBOX"

    invoke-direct {v1, v4, v2, v3}, Lcom/evernote/auth/EvernoteService;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/evernote/auth/EvernoteService;->SANDBOX:Lcom/evernote/auth/EvernoteService;

    new-instance v2, Lcom/evernote/auth/EvernoteService;

    const/4 v3, 0x2

    const-string v4, "https://app.yinxiang.com"

    const-string v5, "YINXIANG"

    invoke-direct {v2, v5, v3, v4}, Lcom/evernote/auth/EvernoteService;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/evernote/auth/EvernoteService;->YINXIANG:Lcom/evernote/auth/EvernoteService;

    filled-new-array {v0, v1, v2}, [Lcom/evernote/auth/EvernoteService;

    move-result-object v0

    sput-object v0, Lcom/evernote/auth/EvernoteService;->$VALUES:[Lcom/evernote/auth/EvernoteService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/evernote/auth/EvernoteService;->host:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/auth/EvernoteService;
    .locals 1

    const-class v0, Lcom/evernote/auth/EvernoteService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evernote/auth/EvernoteService;

    return-object p0
.end method

.method public static values()[Lcom/evernote/auth/EvernoteService;
    .locals 1

    sget-object v0, Lcom/evernote/auth/EvernoteService;->$VALUES:[Lcom/evernote/auth/EvernoteService;

    invoke-virtual {v0}, [Lcom/evernote/auth/EvernoteService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/auth/EvernoteService;

    return-object v0
.end method


# virtual methods
.method public getAccessTokenEndpoint()Ljava/lang/String;
    .locals 1

    const-string v0, "/oauth"

    invoke-virtual {p0, v0}, Lcom/evernote/auth/EvernoteService;->getEndpointUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAuthorizationUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/OAuth.action?oauth_token=%s"

    invoke-virtual {p0, v0}, Lcom/evernote/auth/EvernoteService;->getEndpointUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEndpointUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/evernote/auth/EvernoteService;->host:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/auth/EvernoteService;->host:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestTokenEndpoint()Ljava/lang/String;
    .locals 1

    const-string v0, "/oauth"

    invoke-virtual {p0, v0}, Lcom/evernote/auth/EvernoteService;->getEndpointUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
