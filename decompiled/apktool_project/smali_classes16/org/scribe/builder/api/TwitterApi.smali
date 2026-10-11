.class public Lorg/scribe/builder/api/TwitterApi;
.super Lorg/scribe/builder/api/DefaultApi10a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/scribe/builder/api/TwitterApi$Authenticate;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "https://api.twitter.com/oauth/authorize?oauth_token=%s"

.field public static final b:Ljava/lang/String; = "api.twitter.com/oauth/request_token"

.field public static final c:Ljava/lang/String; = "api.twitter.com/oauth/access_token"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/scribe/builder/api/DefaultApi10a;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessTokenEndpoint()Ljava/lang/String;
    .locals 0

    const-string p0, "https://api.twitter.com/oauth/access_token"

    return-object p0
.end method

.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "https://api.twitter.com/oauth/authorize?oauth_token=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestTokenEndpoint()Ljava/lang/String;
    .locals 0

    const-string p0, "https://api.twitter.com/oauth/request_token"

    return-object p0
.end method
