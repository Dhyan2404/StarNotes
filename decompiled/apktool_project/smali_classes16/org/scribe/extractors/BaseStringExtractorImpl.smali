.class public Lorg/scribe/extractors/BaseStringExtractorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/scribe/extractors/BaseStringExtractor;


# static fields
.field public static final a:Ljava/lang/String; = "%s&%s&%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/scribe/model/OAuthRequest;)V
    .locals 0

    const-string p0, "Cannot extract base string from a null object"

    invoke-static {p1, p0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getOauthParameters()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getOauthParameters()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/scribe/exceptions/OAuthParametersMissingException;

    invoke-direct {p0, p1}, Lorg/scribe/exceptions/OAuthParametersMissingException;-><init>(Lorg/scribe/model/OAuthRequest;)V

    throw p0
.end method

.method public final b(Lorg/scribe/model/OAuthRequest;)Ljava/lang/String;
    .locals 1

    new-instance p0, Lorg/scribe/model/ParameterList;

    invoke-direct {p0}, Lorg/scribe/model/ParameterList;-><init>()V

    invoke-virtual {p1}, Lorg/scribe/model/Request;->getQueryStringParams()Lorg/scribe/model/ParameterList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/scribe/model/ParameterList;->addAll(Lorg/scribe/model/ParameterList;)V

    invoke-virtual {p1}, Lorg/scribe/model/Request;->getBodyParams()Lorg/scribe/model/ParameterList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/scribe/model/ParameterList;->addAll(Lorg/scribe/model/ParameterList;)V

    new-instance v0, Lorg/scribe/model/ParameterList;

    invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getOauthParameters()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/scribe/model/ParameterList;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lorg/scribe/model/ParameterList;->addAll(Lorg/scribe/model/ParameterList;)V

    invoke-virtual {p0}, Lorg/scribe/model/ParameterList;->sort()Lorg/scribe/model/ParameterList;

    move-result-object p0

    invoke-virtual {p0}, Lorg/scribe/model/ParameterList;->asOauthBaseString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public extract(Lorg/scribe/model/OAuthRequest;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/scribe/extractors/BaseStringExtractorImpl;->a(Lorg/scribe/model/OAuthRequest;)V

    invoke-virtual {p1}, Lorg/scribe/model/Request;->getVerb()Lorg/scribe/model/Verb;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/scribe/utils/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/scribe/model/Request;->getSanitizedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/scribe/utils/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/scribe/extractors/BaseStringExtractorImpl;->b(Lorg/scribe/model/OAuthRequest;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%s&%s&%s"

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
