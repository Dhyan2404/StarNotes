.class public Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5957a9ac336aca08L


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->value:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Name may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;

    iget-object v2, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->value:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->value:Ljava/lang/String;

    if-eqz p0, :cond_5

    iget-object p1, p1, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->value:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->name:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
