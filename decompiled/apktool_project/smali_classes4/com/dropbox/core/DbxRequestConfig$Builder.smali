.class public final Lcom/dropbox/core/DbxRequestConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxRequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/dropbox/core/http/HttpRequestor;

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->b:Ljava/lang/String;

    .line 11
    sget-object p1, Lcom/dropbox/core/http/StandardHttpRequestor;->INSTANCE:Lcom/dropbox/core/http/StandardHttpRequestor;

    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->c:Lcom/dropbox/core/http/HttpRequestor;

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/dropbox/core/DbxRequestConfig$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxRequestConfig$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->c:Lcom/dropbox/core/http/HttpRequestor;

    .line 7
    iput p4, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;ILcom/dropbox/core/DbxRequestConfig$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/core/DbxRequestConfig$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/DbxRequestConfig;
    .locals 7

    new-instance v6, Lcom/dropbox/core/DbxRequestConfig;

    iget-object v1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->c:Lcom/dropbox/core/http/HttpRequestor;

    iget v4, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->d:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;ILcom/dropbox/core/DbxRequestConfig$a;)V

    return-object v6
.end method

.method public withAutoRetryDisabled()Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->d:I

    return-object p0
.end method

.method public withAutoRetryEnabled()Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lcom/dropbox/core/DbxRequestConfig$Builder;->withAutoRetryEnabled(I)Lcom/dropbox/core/DbxRequestConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public withAutoRetryEnabled(I)Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 0

    if-lez p1, :cond_0

    .line 2
    iput p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->d:I

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxRetries must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public withHttpRequestor(Lcom/dropbox/core/http/HttpRequestor;)Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->c:Lcom/dropbox/core/http/HttpRequestor;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "httpRequestor"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public withUserLocale(Ljava/lang/String;)Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public withUserLocaleFrom(Ljava/util/Locale;)Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 0

    invoke-static {p1}, Lcom/dropbox/core/DbxRequestConfig;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public withUserLocaleFromPreferences()Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method
