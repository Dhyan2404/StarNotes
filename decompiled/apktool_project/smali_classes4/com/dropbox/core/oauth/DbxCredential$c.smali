.class public final Lcom/dropbox/core/oauth/DbxCredential$c;
.super Lcom/dropbox/core/json/JsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/oauth/DbxCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonWriter<",
        "Lcom/dropbox/core/oauth/DbxCredential;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/json/JsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/dropbox/core/oauth/DbxCredential;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string p0, "access_token"

    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->a(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->b(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->b(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p0, "expires_at"

    invoke-virtual {p2, p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->c(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "refresh_token"

    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->c(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->d(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p0, "app_key"

    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->d(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->e(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p0, "app_secret"

    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->e(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method public bridge synthetic write(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/dropbox/core/oauth/DbxCredential;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/oauth/DbxCredential$c;->b(Lcom/dropbox/core/oauth/DbxCredential;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
