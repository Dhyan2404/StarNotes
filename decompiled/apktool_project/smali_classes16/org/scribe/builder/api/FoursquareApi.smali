.class public Lorg/scribe/builder/api/FoursquareApi;
.super Lorg/scribe/builder/api/DefaultApi10a;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "http://foursquare.com/oauth/authorize?oauth_token=%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/scribe/builder/api/DefaultApi10a;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessTokenEndpoint()Ljava/lang/String;
    .locals 0

    const-string p0, "http://foursquare.com/oauth/access_token"

    return-object p0
.end method

.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "http://foursquare.com/oauth/authorize?oauth_token=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestTokenEndpoint()Ljava/lang/String;
    .locals 0

    const-string p0, "http://foursquare.com/oauth/request_token"

    return-object p0
.end method
