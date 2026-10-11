.class public Lorg/scribe/builder/api/FreelancerApi$Sandbox;
.super Lorg/scribe/builder/api/FreelancerApi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/scribe/builder/api/FreelancerApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sandbox"
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "http://www.sandbox.freelancer.com/users/api-token/auth.php"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/scribe/builder/api/FreelancerApi;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessTokenEndpoint()Ljava/lang/String;
    .locals 0

    const-string p0, "http://api.sandbox.freelancer.com/RequestAccessToken/requestAccessToken.xml?"

    return-object p0
.end method

.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "http://www.sandbox.freelancer.com/users/api-token/auth.php?oauth_token=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestTokenEndpoint()Ljava/lang/String;
    .locals 0

    const-string p0, "http://api.sandbox.freelancer.com/RequestRequestToken/requestRequestToken.xml"

    return-object p0
.end method
