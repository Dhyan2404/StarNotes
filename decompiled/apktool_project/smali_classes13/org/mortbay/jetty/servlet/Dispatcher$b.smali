.class public Lorg/mortbay/jetty/servlet/Dispatcher$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/util/Attributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public e:Lorg/mortbay/util/Attributes;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public final synthetic k:Lorg/mortbay/jetty/servlet/Dispatcher;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/Dispatcher;Lorg/mortbay/util/Attributes;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->k:Lorg/mortbay/jetty/servlet/Dispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->e:Lorg/mortbay/util/Attributes;

    return-void
.end method


# virtual methods
.method public clearAttributes()V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->k:Lorg/mortbay/jetty/servlet/Dispatcher;

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/Dispatcher;->a(Lorg/mortbay/jetty/servlet/Dispatcher;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "javax.servlet.include.path_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->i:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "javax.servlet.include.servlet_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->h:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string v0, "javax.servlet.include.context_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->g:Ljava/lang/String;

    return-object p0

    :cond_2
    const-string v0, "javax.servlet.include.query_string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->j:Ljava/lang/String;

    return-object p0

    :cond_3
    const-string v0, "javax.servlet.include.request_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->f:Ljava/lang/String;

    return-object p0

    :cond_4
    const-string v0, "javax.servlet.include."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    :cond_5
    const-string v0, "org.mortbay.jetty.included"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_6
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->e:Lorg/mortbay/util/Attributes;

    invoke-interface {p0, p1}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->e:Lorg/mortbay/util/Attributes;

    invoke-interface {v1}, Lorg/mortbay/util/Attributes;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "javax.servlet.include."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->k:Lorg/mortbay/jetty/servlet/Dispatcher;

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/Dispatcher;->a(Lorg/mortbay/jetty/servlet/Dispatcher;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->i:Ljava/lang/String;

    const-string v2, "javax.servlet.include.path_info"

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_1
    const-string v1, "javax.servlet.include.request_uri"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "javax.servlet.include.servlet_path"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "javax.servlet.include.context_path"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->j:Ljava/lang/String;

    const-string v1, "javax.servlet.include.query_string"

    if-eqz p0, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/servlet/Dispatcher$b;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->k:Lorg/mortbay/jetty/servlet/Dispatcher;

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/Dispatcher;->a(Lorg/mortbay/jetty/servlet/Dispatcher;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "javax.servlet."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "javax.servlet.include.path_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "javax.servlet.include.request_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "javax.servlet.include.servlet_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->h:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "javax.servlet.include.context_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->g:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "javax.servlet.include.query_string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->j:Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->e:Lorg/mortbay/util/Attributes;

    invoke-interface {p0, p1}, Lorg/mortbay/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->e:Lorg/mortbay/util/Attributes;

    invoke-interface {p0, p1, p2}, Lorg/mortbay/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    if-nez p2, :cond_7

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->e:Lorg/mortbay/util/Attributes;

    invoke-interface {p0, p1}, Lorg/mortbay/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->e:Lorg/mortbay/util/Attributes;

    invoke-interface {p0, p1, p2}, Lorg/mortbay/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "INCLUDE+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$b;->e:Lorg/mortbay/util/Attributes;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
