.class public Lcom/thegrizzlylabs/sardineandroid/DavAce;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public final e:Z


# direct methods
.method public constructor <init>(Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->a:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->b:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->c:Ljava/util/List;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->e:Z

    return-void
.end method

.method public constructor <init>(Lcom/thegrizzlylabs/sardineandroid/model/Ace;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getPrincipal()Lcom/thegrizzlylabs/sardineandroid/model/Principal;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;-><init>(Lcom/thegrizzlylabs/sardineandroid/model/Principal;)V

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->a:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->b:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->c:Ljava/util/List;

    .line 11
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getGrant()Lcom/thegrizzlylabs/sardineandroid/model/Grant;

    move-result-object v0

    const-class v1, Lorg/simpleframework/xml/Root;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getGrant()Lcom/thegrizzlylabs/sardineandroid/model/Grant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Grant;->getPrivilege()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;

    .line 13
    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/thegrizzlylabs/sardineandroid/model/SimplePrivilege;

    .line 14
    iget-object v4, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->b:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/Root;

    invoke-interface {v3}, Lorg/simpleframework/xml/Root;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getDeny()Lcom/thegrizzlylabs/sardineandroid/model/Deny;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getDeny()Lcom/thegrizzlylabs/sardineandroid/model/Deny;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Deny;->getPrivilege()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;

    .line 17
    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/thegrizzlylabs/sardineandroid/model/SimplePrivilege;

    .line 18
    iget-object v4, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->c:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/Root;

    invoke-interface {v3}, Lorg/simpleframework/xml/Root;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getInherited()Lcom/thegrizzlylabs/sardineandroid/model/Inherited;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getInherited()Lcom/thegrizzlylabs/sardineandroid/model/Inherited;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Inherited;->getHref()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->d:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->d:Ljava/lang/String;

    .line 22
    :goto_2
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getProtected()Lcom/thegrizzlylabs/sardineandroid/model/Protected;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/model/Privilege;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;-><init>()V

    const-string v2, "all"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/All;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/All;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    const-string v2, "bind"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Bind;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Bind;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    const-string v2, "read"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Read;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Read;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    const-string v2, "read-acl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/ReadAcl;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/ReadAcl;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    const-string v2, "read-current-user-privilege-set"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/ReadCurrentUserPrivilegeSet;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/ReadCurrentUserPrivilegeSet;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string v2, "unbind"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/UnBind;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/UnBind;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const-string v2, "unlock"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Unlock;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Unlock;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    const-string v2, "write"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Write;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Write;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    const-string v2, "write-content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/WriteContent;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/WriteContent;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    const-string v2, "write-properties"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/WriteProperties;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/WriteProperties;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    return-object p0
.end method

.method public getDenied()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->c:Ljava/util/List;

    return-object p0
.end method

.method public getGranted()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->b:Ljava/util/List;

    return-object p0
.end method

.method public getInherited()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getPrincipal()Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;
    .locals 0

    iget-object p0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->a:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    return-object p0
.end method

.method public isProtected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->e:Z

    return p0
.end method

.method public toModel()Lcom/thegrizzlylabs/sardineandroid/model/Ace;
    .locals 4

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Ace;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;-><init>()V

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Principal;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;-><init>()V

    sget-object v2, Lcom/thegrizzlylabs/sardineandroid/DavAce$a;->a:[I

    iget-object v3, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->a:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    invoke-virtual {v3}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->getPrincipalType()Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->a:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/All;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/All;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->setAll(Lcom/thegrizzlylabs/sardineandroid/model/All;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->a:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "authenticated"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Authenticated;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Authenticated;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->setAuthenticated(Lcom/thegrizzlylabs/sardineandroid/model/Authenticated;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->a:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unauthenticated"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Unauthenticated;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Unauthenticated;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->setUnauthenticated(Lcom/thegrizzlylabs/sardineandroid/model/Unauthenticated;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->a:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "self"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Self;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Self;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->setSelf(Lcom/thegrizzlylabs/sardineandroid/model/Self;)V

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Property;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Property;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->setProperty(Lcom/thegrizzlylabs/sardineandroid/model/Property;)V

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->getProperty()Lcom/thegrizzlylabs/sardineandroid/model/Property;

    move-result-object v2

    iget-object v3, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->a:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    invoke-virtual {v3}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->getProperty()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-static {v3}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->createElement(Ljavax/xml/namespace/QName;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/thegrizzlylabs/sardineandroid/model/Property;->setProperty(Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->a:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->setHref(Ljava/lang/String;)V

    :cond_6
    :goto_0
    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->setPrincipal(Lcom/thegrizzlylabs/sardineandroid/model/Principal;)V

    iget-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->b:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Grant;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Grant;-><init>()V

    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->setGrant(Lcom/thegrizzlylabs/sardineandroid/model/Grant;)V

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getGrant()Lcom/thegrizzlylabs/sardineandroid/model/Grant;

    move-result-object v1

    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->b:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/thegrizzlylabs/sardineandroid/DavAce;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Grant;->setPrivilege(Ljava/util/List;)V

    :cond_7
    iget-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->c:Ljava/util/List;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Deny;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Deny;-><init>()V

    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->setDeny(Lcom/thegrizzlylabs/sardineandroid/model/Deny;)V

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getDeny()Lcom/thegrizzlylabs/sardineandroid/model/Deny;

    move-result-object v1

    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->c:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/thegrizzlylabs/sardineandroid/DavAce;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/thegrizzlylabs/sardineandroid/model/Deny;->setPrivilege(Ljava/util/List;)V

    :cond_8
    return-object v0
.end method
