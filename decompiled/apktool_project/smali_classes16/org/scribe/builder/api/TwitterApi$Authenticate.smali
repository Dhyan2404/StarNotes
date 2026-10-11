.class public Lorg/scribe/builder/api/TwitterApi$Authenticate;
.super Lorg/scribe/builder/api/TwitterApi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/scribe/builder/api/TwitterApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Authenticate"
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "https://api.twitter.com/oauth/authenticate?oauth_token=%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/scribe/builder/api/TwitterApi;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "https://api.twitter.com/oauth/authenticate?oauth_token=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
