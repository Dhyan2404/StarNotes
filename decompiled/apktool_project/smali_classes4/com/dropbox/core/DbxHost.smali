.class public final Lcom/dropbox/core/DbxHost;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/dropbox/core/DbxHost;

.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/DbxHost;",
            ">;"
        }
    .end annotation
.end field

.field public static final Writer:Lcom/dropbox/core/json/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonWriter<",
            "Lcom/dropbox/core/DbxHost;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dropbox/core/DbxHost;

    const-string v1, "www.dropbox.com"

    const-string v2, "notify.dropboxapi.com"

    const-string v3, "api.dropboxapi.com"

    const-string v4, "content.dropboxapi.com"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/dropbox/core/DbxHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    new-instance v0, Lcom/dropbox/core/DbxHost$a;

    invoke-direct {v0}, Lcom/dropbox/core/DbxHost$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxHost;->Reader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/DbxHost$b;

    invoke-direct {v0}, Lcom/dropbox/core/DbxHost$b;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxHost;->Writer:Lcom/dropbox/core/json/JsonWriter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/DbxHost;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dropbox/core/DbxHost;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/DbxHost;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/dropbox/core/DbxHost;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Lcom/dropbox/core/DbxHost;
    .locals 0

    invoke-static {p0}, Lcom/dropbox/core/DbxHost;->g(Ljava/lang/String;)Lcom/dropbox/core/DbxHost;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/DbxHost;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxHost;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/dropbox/core/DbxHost;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxHost;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/dropbox/core/DbxHost;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxHost;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/dropbox/core/DbxHost;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxHost;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/dropbox/core/DbxHost;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxHost;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Lcom/dropbox/core/DbxHost;
    .locals 6

    new-instance v0, Lcom/dropbox/core/DbxHost;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "api-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "api-content-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "meta-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "api-notify-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/dropbox/core/DbxHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dropbox/core/DbxHost;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/dropbox/core/DbxHost;

    iget-object v1, p1, Lcom/dropbox/core/DbxHost;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxHost;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/dropbox/core/DbxHost;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxHost;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/dropbox/core/DbxHost;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxHost;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/dropbox/core/DbxHost;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/DbxHost;->d:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getApi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxHost;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxHost;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getNotify()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxHost;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getWeb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxHost;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/dropbox/core/DbxHost;->c:Ljava/lang/String;

    const-string v1, "meta-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/DbxHost;->a:Ljava/lang/String;

    const-string v1, "api-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/DbxHost;->b:Ljava/lang/String;

    const-string v1, "api-content-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/DbxHost;->d:Ljava/lang/String;

    const-string v1, "api-notify-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/DbxHost;->c:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/DbxHost;->a:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/DbxHost;->b:Ljava/lang/String;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/dropbox/core/DbxHost;->d:Ljava/lang/String;

    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/DbxHost;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/core/DbxHost;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxHost;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/DbxHost;->d:Ljava/lang/String;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
