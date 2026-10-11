.class public final Lcom/dropbox/core/DbxStandardSessionStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dropbox/core/DbxSessionStore;


# instance fields
.field public final a:Ljavax/servlet/http/HttpSession;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/DbxStandardSessionStore;->a:Ljavax/servlet/http/HttpSession;

    iput-object p2, p0, Lcom/dropbox/core/DbxStandardSessionStore;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/DbxStandardSessionStore;->a:Ljavax/servlet/http/HttpSession;

    iget-object p0, p0, Lcom/dropbox/core/DbxStandardSessionStore;->b:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public get()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/DbxStandardSessionStore;->a:Ljavax/servlet/http/HttpSession;

    iget-object p0, p0, Lcom/dropbox/core/DbxStandardSessionStore;->b:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxStandardSessionStore;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getSession()Ljavax/servlet/http/HttpSession;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxStandardSessionStore;->a:Ljavax/servlet/http/HttpSession;

    return-object p0
.end method

.method public set(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/DbxStandardSessionStore;->a:Ljavax/servlet/http/HttpSession;

    iget-object p0, p0, Lcom/dropbox/core/DbxStandardSessionStore;->b:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
