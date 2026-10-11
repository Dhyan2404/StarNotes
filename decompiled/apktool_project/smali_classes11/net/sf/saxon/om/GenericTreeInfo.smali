.class public Lnet/sf/saxon/om/GenericTreeInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/TreeInfo;
.implements Ljavax/xml/transform/Source;


# instance fields
.field public e:Lnet/sf/saxon/Configuration;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public h:J

.field public i:Lnet/sf/saxon/om/SpaceStrippingRule;

.field protected root:Lnet/sf/saxon/om/NodeInfo;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lnet/sf/saxon/om/GenericTreeInfo;->h:J

    .line 3
    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/om/GenericTreeInfo;->i:Lnet/sf/saxon/om/SpaceStrippingRule;

    .line 4
    iput-object p1, p0, Lnet/sf/saxon/om/GenericTreeInfo;->e:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/om/NodeInfo;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lnet/sf/saxon/om/GenericTreeInfo;->h:J

    .line 7
    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/om/GenericTreeInfo;->i:Lnet/sf/saxon/om/SpaceStrippingRule;

    .line 8
    iput-object p1, p0, Lnet/sf/saxon/om/GenericTreeInfo;->e:Lnet/sf/saxon/Configuration;

    .line 9
    invoke-virtual {p0, p2}, Lnet/sf/saxon/om/GenericTreeInfo;->setRootNode(Lnet/sf/saxon/om/NodeInfo;)V

    return-void
.end method


# virtual methods
.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/GenericTreeInfo;->e:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getDocumentNumber()J
    .locals 6

    iget-wide v0, p0, Lnet/sf/saxon/om/GenericTreeInfo;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/om/GenericTreeInfo;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getDocumentNumberAllocator()Lnet/sf/saxon/tree/util/DocumentNumberAllocator;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-wide v4, p0, Lnet/sf/saxon/om/GenericTreeInfo;->h:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/util/DocumentNumberAllocator;->allocateDocumentNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sf/saxon/om/GenericTreeInfo;->h:J

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-wide v0, p0, Lnet/sf/saxon/om/GenericTreeInfo;->h:J

    return-wide v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRootNode()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/GenericTreeInfo;->root:Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method

.method public getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/GenericTreeInfo;->i:Lnet/sf/saxon/om/SpaceStrippingRule;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/GenericTreeInfo;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getUnparsedEntity(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnparsedEntityNames()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/GenericTreeInfo;->g:Ljava/util/Map;

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isStreamed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public selectID(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/om/GenericTreeInfo;->e:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public declared-synchronized setDocumentNumber(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lnet/sf/saxon/om/GenericTreeInfo;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRootNode(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/om/GenericTreeInfo;->root:Lnet/sf/saxon/om/NodeInfo;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The root node of a tree must be parentless"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/om/GenericTreeInfo;->i:Lnet/sf/saxon/om/SpaceStrippingRule;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/om/GenericTreeInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/om/GenericTreeInfo;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/om/GenericTreeInfo;->g:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/om/GenericTreeInfo;->g:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
