.class public Lcom/burgstaller/okhttp/digest/Credentials;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/burgstaller/okhttp/digest/Credentials;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/burgstaller/okhttp/digest/Credentials;->b:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "username and password cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/burgstaller/okhttp/digest/Credentials;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/burgstaller/okhttp/digest/Credentials;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/burgstaller/okhttp/digest/Credentials;->b:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/burgstaller/okhttp/digest/Credentials;->a:Ljava/lang/String;

    return-void
.end method
