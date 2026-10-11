.class public abstract Lnet/sf/saxon/event/Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/event/Receiver;


# static fields
.field public static final AXIOM_TREE:I = 0x5

.field public static final DOMINO_TREE:I = 0x6

.field public static final JDOM2_TREE:I = 0x4

.field public static final JDOM_TREE:I = 0x3

.field public static final LINKED_TREE:I = 0x0

.field public static final MUTABLE_LINKED_TREE:I = 0x7

.field public static final TINY_TREE:I = 0x1

.field public static final TINY_TREE_CONDENSED:I = 0x2

.field public static final UNSPECIFIED_TREE_MODEL:I = -0x1


# instance fields
.field protected baseURI:Ljava/lang/String;

.field protected config:Lnet/sf/saxon/Configuration;

.field protected currentRoot:Lnet/sf/saxon/om/NodeInfo;

.field public e:J

.field protected lineNumbering:Z

.field protected namePool:Lnet/sf/saxon/om/NamePool;

.field protected opened:Z

.field protected pipe:Lnet/sf/saxon/event/PipelineConfiguration;

.field protected started:Z

.field protected systemId:Ljava/lang/String;

.field protected timing:Z

.field protected uniformBaseURI:Z

.field protected useEventLocation:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lnet/sf/saxon/event/Builder;->uniformBaseURI:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lnet/sf/saxon/event/Builder;->lineNumbering:Z

    .line 4
    iput-boolean v0, p0, Lnet/sf/saxon/event/Builder;->useEventLocation:Z

    .line 5
    iput-boolean v1, p0, Lnet/sf/saxon/event/Builder;->started:Z

    .line 6
    iput-boolean v1, p0, Lnet/sf/saxon/event/Builder;->timing:Z

    .line 7
    iput-boolean v1, p0, Lnet/sf/saxon/event/Builder;->opened:Z

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lnet/sf/saxon/event/Builder;->uniformBaseURI:Z

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lnet/sf/saxon/event/Builder;->lineNumbering:Z

    .line 11
    iput-boolean v0, p0, Lnet/sf/saxon/event/Builder;->useEventLocation:Z

    .line 12
    iput-boolean v1, p0, Lnet/sf/saxon/event/Builder;->started:Z

    .line 13
    iput-boolean v1, p0, Lnet/sf/saxon/event/Builder;->timing:Z

    .line 14
    iput-boolean v1, p0, Lnet/sf/saxon/event/Builder;->opened:Z

    .line 15
    iput-object p1, p0, Lnet/sf/saxon/event/Builder;->pipe:Lnet/sf/saxon/event/PipelineConfiguration;

    .line 16
    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/Builder;->config:Lnet/sf/saxon/Configuration;

    .line 17
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->isLineNumbering()Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/event/Builder;->lineNumbering:Z

    .line 18
    iget-object p1, p0, Lnet/sf/saxon/event/Builder;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/Builder;->namePool:Lnet/sf/saxon/om/NamePool;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/event/Builder;->timing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/sf/saxon/event/Builder;->opened:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tree built in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lnet/sf/saxon/event/Builder;->e:J

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Lnet/sf/saxon/trans/Timer;->showExecutionTimeNano(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/sf/saxon/event/Builder;->currentRoot:Lnet/sf/saxon/om/NodeInfo;

    instance-of v3, v2, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;

    if-eqz v3, :cond_0

    check-cast v2, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;

    invoke-virtual {v2}, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;->showSize()V

    :cond_0
    iput-wide v0, p0, Lnet/sf/saxon/event/Builder;->e:J

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/Builder;->opened:Z

    return-void
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/Builder;->baseURI:Ljava/lang/String;

    return-object p0
.end method

.method public getBuilderMonitor()Lnet/sf/saxon/event/BuilderMonitor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/Builder;->config:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/Builder;->currentRoot:Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method

.method public getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/Builder;->pipe:Lnet/sf/saxon/event/PipelineConfiguration;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/Builder;->systemId:Ljava/lang/String;

    return-object p0
.end method

.method public isTiming()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/event/Builder;->timing:Z

    return p0
.end method

.method public isUseEventLocation()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/event/Builder;->useEventLocation:Z

    return p0
.end method

.method public open()V
    .locals 4

    iget-boolean v0, p0, Lnet/sf/saxon/event/Builder;->timing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/sf/saxon/event/Builder;->opened:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "(unknown systemId)"

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Building tree for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " using "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sf/saxon/event/Builder;->e:J

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/Builder;->opened:Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/event/Builder;->systemId:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/event/Builder;->baseURI:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/event/Builder;->currentRoot:Lnet/sf/saxon/om/NodeInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/Builder;->lineNumbering:Z

    iput-boolean v0, p0, Lnet/sf/saxon/event/Builder;->started:Z

    iput-boolean v0, p0, Lnet/sf/saxon/event/Builder;->timing:Z

    iput-boolean v0, p0, Lnet/sf/saxon/event/Builder;->opened:Z

    return-void
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/Builder;->baseURI:Ljava/lang/String;

    return-void
.end method

.method public setLineNumbering(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/event/Builder;->lineNumbering:Z

    return-void
.end method

.method public setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 1

    iput-object p1, p0, Lnet/sf/saxon/event/Builder;->pipe:Lnet/sf/saxon/event/PipelineConfiguration;

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/Builder;->config:Lnet/sf/saxon/Configuration;

    iget-boolean v0, p0, Lnet/sf/saxon/event/Builder;->lineNumbering:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->isLineNumbering()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lnet/sf/saxon/event/Builder;->lineNumbering:Z

    iget-object p1, p0, Lnet/sf/saxon/event/Builder;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/Builder;->namePool:Lnet/sf/saxon/om/NamePool;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/Builder;->systemId:Ljava/lang/String;

    return-void
.end method

.method public setTiming(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/event/Builder;->timing:Z

    return-void
.end method

.method public setUseEventLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/event/Builder;->useEventLocation:Z

    return-void
.end method

.method public usesTypeAnnotations()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
