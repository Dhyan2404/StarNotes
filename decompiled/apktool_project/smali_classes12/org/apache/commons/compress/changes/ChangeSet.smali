.class public final Lorg/apache/commons/compress/changes/ChangeSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sunia/HTREnginev2/lqd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/sunia/HTREnginev2/lqd;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/lqd;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_4

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/lqd;->b()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/lqd;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/lqd;->e()I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/lqd;->a()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/lqd;->a()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/lqd;->a()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/lqd;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object p0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    iget-object p0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public add(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/changes/ChangeSet;->add(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V

    return-void
.end method

.method public add(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/lqd;

    invoke-direct {v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/lqd;-><init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/changes/ChangeSet;->a(Lcom/sunia/HTREnginev2/lqd;)V

    return-void
.end method

.method public final b(Lcom/sunia/HTREnginev2/lqd;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/lqd;->e()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/lqd;->e()I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/lqd;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/lqd;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v3, p0, Lorg/apache/commons/compress/changes/ChangeSet;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/apache/commons/compress/changes/ChangeSet;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/HTREnginev2/lqd;

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/lqd;->e()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/lqd;->a()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/lqd;->a()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/lqd;->e()I

    move-result v5

    if-ne v2, v5, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/lqd;->e()I

    move-result v5

    if-ne v1, v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/.*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sunia/HTREnginev2/lqd;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object p0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->a:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/lqd;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/sunia/HTREnginev2/lqd;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/changes/ChangeSet;->b(Lcom/sunia/HTREnginev2/lqd;)V

    return-void
.end method

.method public deleteDir(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/lqd;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/sunia/HTREnginev2/lqd;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/changes/ChangeSet;->b(Lcom/sunia/HTREnginev2/lqd;)V

    return-void
.end method
