.class public final Lcom/dropbox/core/DbxAuthInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/DbxAuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final Writer:Lcom/dropbox/core/json/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonWriter<",
            "Lcom/dropbox/core/DbxAuthInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Long;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/dropbox/core/DbxHost;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/DbxAuthInfo$a;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthInfo$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxAuthInfo;->Reader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/DbxAuthInfo$b;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthInfo$b;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxAuthInfo;->Writer:Lcom/dropbox/core/json/JsonWriter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/dropbox/core/DbxAuthInfo;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    .line 3
    iput-object p1, p0, Lcom/dropbox/core/DbxAuthInfo;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/dropbox/core/DbxAuthInfo;->b:Ljava/lang/Long;

    .line 5
    iput-object p3, p0, Lcom/dropbox/core/DbxAuthInfo;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/dropbox/core/DbxAuthInfo;->d:Lcom/dropbox/core/DbxHost;

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'host\' can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'accessToken\' can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/dropbox/core/DbxAuthInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxAuthInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/DbxAuthInfo;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxAuthInfo;->b:Ljava/lang/Long;

    return-object p0
.end method

.method public static synthetic c(Lcom/dropbox/core/DbxAuthInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxAuthInfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/dropbox/core/DbxAuthInfo;)Lcom/dropbox/core/DbxHost;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxAuthInfo;->d:Lcom/dropbox/core/DbxHost;

    return-object p0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxAuthInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getExpiresAt()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxAuthInfo;->b:Ljava/lang/Long;

    return-object p0
.end method

.method public getHost()Lcom/dropbox/core/DbxHost;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxAuthInfo;->d:Lcom/dropbox/core/DbxHost;

    return-object p0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxAuthInfo;->c:Ljava/lang/String;

    return-object p0
.end method
