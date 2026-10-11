.class public Lorg/mortbay/jetty/security/HTAccessHandler$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/HTAccessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final t:I = 0x0

.field public static final u:I = 0x1

.field public static final v:Ljava/lang/String; = "user"

.field public static final w:Ljava/lang/String; = "group"

.field public static final x:Ljava/lang/String; = "valid-user"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lorg/mortbay/resource/Resource;

.field public c:Ljava/util/HashMap;

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Lorg/mortbay/resource/Resource;

.field public g:Ljava/util/HashMap;

.field public h:J

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/util/HashMap;

.field public m:Ljava/util/HashSet;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:Ljava/util/ArrayList;

.field public q:Ljava/util/ArrayList;

.field public r:J

.field public s:Z


# direct methods
.method public constructor <init>(Lorg/mortbay/resource/Resource;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->c:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->g:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->i:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->l:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->m:Ljava/util/HashSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->p:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->q:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->s:Z

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/security/HTAccessHandler$b;->o(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->r:J

    iget-object p1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->b:Lorg/mortbay/resource/Resource;

    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->s:Z

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not find ht user file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0, v0}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object p1

    invoke-interface {p1}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "user file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->b:Lorg/mortbay/resource/Resource;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0, v0}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->e:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->f:Lorg/mortbay/resource/Resource;

    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    iput-boolean v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->s:Z

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not find ht group file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->f:Lorg/mortbay/resource/Resource;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0, v0}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object p1

    invoke-interface {p1}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "group file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->f:Lorg/mortbay/resource/Resource;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0, v0}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iput-boolean v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->s:Z

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object p0

    const-string v0, "LogSupport.EXCEPTION"

    invoke-interface {p0, v0, p1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x39

    const/16 v5, 0x30

    const-string v6, "all"

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_1
    move v2, v1

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_2

    if-gt v7, v4, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_2
    move v3, v0

    :goto_3
    iget-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->q:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    iget-object v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->q:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :goto_4
    move p1, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_6

    if-gt v8, v4, :cond_6

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    move p1, v0

    :goto_5
    iget p0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->o:I

    if-gez p0, :cond_b

    if-eqz p1, :cond_a

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    move v1, v0

    :cond_a
    :goto_6
    return v1

    :cond_b
    if-eqz v2, :cond_c

    if-nez p1, :cond_c

    goto :goto_7

    :cond_c
    move v1, v0

    :goto_7
    return v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Request;)Z
    .locals 4

    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->n:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    move-object p3, v0

    goto :goto_0

    :cond_1
    invoke-interface {p3, p1, p2, p4}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object p3

    :goto_0
    const/4 p4, 0x0

    if-nez p3, :cond_6

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/security/HTAccessHandler$b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p3, p4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, p1

    :goto_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-static {p2, v2}, Lorg/mortbay/jetty/security/UnixCrypt;->crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz p3, :cond_5

    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_5
    return p4

    :cond_6
    iget-object p2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->n:Ljava/lang/String;

    const-string p3, "user"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->m:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    return v1

    :cond_7
    iget-object p2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->n:Ljava/lang/String;

    const-string p3, "group"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/security/HTAccessHandler$b;->j(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_2
    add-int/lit8 p3, p2, -0x1

    if-lez p2, :cond_a

    iget-object p2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->m:Ljava/util/HashSet;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    return v1

    :cond_8
    move p2, p3

    goto :goto_2

    :cond_9
    iget-object p0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->n:Ljava/lang/String;

    const-string p1, "valid-user"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    return v1

    :cond_a
    return p4
.end method

.method public c()Lorg/mortbay/resource/Resource;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->f:Lorg/mortbay/resource/Resource;

    return-object p0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->r:J

    return-wide v0
.end method

.method public e()Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->l:Ljava/util/HashMap;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->k:Ljava/lang/String;

    return-object p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->i:I

    return p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "LogSupport.EXCEPTION"

    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->b:Lorg/mortbay/resource/Resource;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->c:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->d:J

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "LOAD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->b:Lorg/mortbay/resource/Resource;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2, v2}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->c:Ljava/util/HashMap;

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->b:Lorg/mortbay/resource/Resource;

    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->b:Lorg/mortbay/resource/Resource;

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->d:J

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    :goto_1
    :try_start_3
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    :goto_2
    iget-object p0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :catchall_1
    move-exception p0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_7

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw p0
.end method

.method public final j(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    const-string v0, "LogSupport.EXCEPTION"

    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->f:Lorg/mortbay/resource/Resource;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->g:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->h:J

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "LOAD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->f:Lorg/mortbay/resource/Resource;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2, v2}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->g:Ljava/util/HashMap;

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->f:Lorg/mortbay/resource/Resource;

    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->f:Lorg/mortbay/resource/Resource;

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->h:J

    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ": \t"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->g:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    :goto_2
    :try_start_3
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_9

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_9
    :goto_3
    iget-object p0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    :catchall_1
    move-exception p0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_a

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_5
    throw p0
.end method

.method public k()Lorg/mortbay/resource/Resource;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->b:Lorg/mortbay/resource/Resource;

    return-object p0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object p0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public m()Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->n:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public n()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->s:Z

    return p0
.end method

.method public final o(Ljava/io/BufferedReader;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "AuthUserFile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, "AuthGroupFile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->e:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v2, "AuthName"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->k:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v2, "AuthType"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->j:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v2, "<Limit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_6

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_1
    new-instance v3, Ljava/util/StringTokenizer;

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->l:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    const-string v2, "satisfy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/16 v5, 0x20

    const/4 v6, 0x1

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_4
    if-ge v4, v2, :cond_9

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-gt v7, v5, :cond_9

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    move v7, v4

    :goto_5
    if-ge v7, v2, :cond_a

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-le v8, v5, :cond_a

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iput v6, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->i:I

    goto :goto_3

    :cond_b
    const-string v2, "any"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->i:I

    goto :goto_3

    :cond_c
    const-string v2, "require"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_6
    if-ge v4, v2, :cond_d

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v5, :cond_d

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_d
    move v3, v4

    :goto_7
    if-ge v3, v2, :cond_e

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v5, :cond_e

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_e
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->n:Ljava/lang/String;

    const-string v6, "user"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iput-object v6, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->n:Ljava/lang/String;

    goto :goto_8

    :cond_f
    iget-object v4, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->n:Ljava/lang/String;

    const-string v6, "group"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    iput-object v6, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->n:Ljava/lang/String;

    goto :goto_8

    :cond_10
    iget-object v4, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->n:Ljava/lang/String;

    const-string v6, "valid-user"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iput-object v6, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->n:Ljava/lang/String;

    :cond_11
    :goto_8
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v2, :cond_7

    :goto_9
    if-ge v3, v2, :cond_12

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v5, :cond_12

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_12
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_a
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->m:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    const-string v2, "order"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_17

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v2

    invoke-interface {v2}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "orderline="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "order="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v7, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->o:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4, v4}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const-string v2, "allow,deny"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_15

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v0

    const-string v2, "==>allow+deny"

    invoke-interface {v0, v2, v4, v4}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput v6, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->o:I

    goto/16 :goto_3

    :cond_15
    const-string v2, "deny,allow"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_16

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v0

    const-string v2, "==>deny,allow"

    invoke-interface {v0, v2, v4, v4}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->o:I

    goto/16 :goto_3

    :cond_16
    const-string v2, "mutual-failure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v0

    const-string v2, "==>mutual"

    invoke-interface {v0, v2, v4, v4}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->o:I

    goto/16 :goto_3

    :cond_17
    const-string v2, "allow from"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    :goto_b
    if-ge v3, v2, :cond_18

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v5, :cond_18

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_18
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v2

    invoke-interface {v2}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "allow process:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4, v4}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_c
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1a
    const-string v2, "deny from"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    :goto_d
    if-ge v3, v2, :cond_1b

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v5, :cond_1b

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1b
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v2

    invoke-interface {v2}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->g()Lorg/mortbay/log/Logger;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "deny process:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4, v4}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_e
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1d
    const-string v2, "</Limit>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_0

    :cond_1e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "AuthUserFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", AuthGroupFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", AuthName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", AuthType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", Methods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", satisfy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->o:I

    if-gez v1, :cond_0

    const-string v1, ", order=deny,allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    const-string v1, ", order=allow,deny"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, ", order=mutual-failure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, ", Allow from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", deny from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", requireName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$b;->m:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
