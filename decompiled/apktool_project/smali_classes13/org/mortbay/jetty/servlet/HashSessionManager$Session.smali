.class public Lorg/mortbay/jetty/servlet/HashSessionManager$Session;
.super Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/HashSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1d9f57e17308c20fL


# instance fields
.field private final synthetic this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/HashSessionManager;JLjava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;-><init>(Lorg/mortbay/jetty/servlet/AbstractSessionManager;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/servlet/HashSessionManager;Ljavax/servlet/http/HttpServletRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;-><init>(Lorg/mortbay/jetty/servlet/AbstractSessionManager;Ljavax/servlet/http/HttpServletRequest;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->invalidate()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public newAttributeMap()Ljava/util/Map;
    .locals 1

    new-instance p0, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    return-object p0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->isStopping()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->i(Lorg/mortbay/jetty/servlet/HashSessionManager;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->i(Lorg/mortbay/jetty/servlet/HashSessionManager;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-static {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->i(Lorg/mortbay/jetty/servlet/HashSessionManager;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    :goto_0
    return-void
.end method

.method public save(Ljava/io/FileOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_clusterId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_nodeId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_idChanged:Z

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-wide v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_created:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_cookieSet:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_accessed:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_lastAccessed:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_requests:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance p1, Ljava/io/ObjectOutputStream;

    invoke-direct {p1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public setMaxInactiveInterval(I)V
    .locals 4

    invoke-super {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->setMaxInactiveInterval(I)V

    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_maxIdleMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-static {v2}, Lorg/mortbay/jetty/servlet/HashSessionManager;->h(Lorg/mortbay/jetty/servlet/HashSessionManager;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    add-int/lit8 p1, p1, 0x9

    div-int/lit8 p1, p1, 0xa

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/HashSessionManager;->setScavengePeriod(I)V

    :cond_0
    return-void
.end method
