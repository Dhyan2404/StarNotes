.class public Lorg/apache/commons/compress/changes/ChangeSetPerformer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/changes/ChangeSetPerformer$c;,
        Lorg/apache/commons/compress/changes/ChangeSetPerformer$b;,
        Lorg/apache/commons/compress/changes/ChangeSetPerformer$a;
    }
.end annotation


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
.method public constructor <init>(Lorg/apache/commons/compress/changes/ChangeSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/ChangeSet;->c()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2, p3}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    invoke-static {p1, p2}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->closeArchiveEntry()V

    return-void
.end method

.method public final b(Ljava/util/Set;Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sunia/HTREnginev2/lqd;",
            ">;",
            "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sunia/HTREnginev2/lqd;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/lqd;->e()I

    move-result v0

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/lqd;->d()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Lorg/apache/commons/compress/changes/ChangeSetPerformer$a;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)Lorg/apache/commons/compress/changes/ChangeSetResults;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/compress/changes/ChangeSetResults;

    invoke-direct {v0}, Lorg/apache/commons/compress/changes/ChangeSetResults;-><init>()V

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->a:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/lqd;

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/lqd;->e()I

    move-result v5

    if-ne v5, v4, :cond_0

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/lqd;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/lqd;->b()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/lqd;->a()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v5

    invoke-virtual {p0, v4, p2, v5}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->a(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/lqd;->a()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/changes/ChangeSetResults;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/apache/commons/compress/changes/ChangeSetPerformer$a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Lorg/apache/commons/compress/changes/ChangeSetPerformer$a;->next()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/HTREnginev2/lqd;

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/lqd;->e()I

    move-result v7

    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    if-ne v7, v6, :cond_3

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/lqd;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0, v8}, Lorg/apache/commons/compress/changes/ChangeSetResults;->c(Ljava/lang/String;)V

    :goto_2
    move v6, v9

    goto :goto_3

    :cond_3
    const/4 v6, 0x4

    if-ne v7, v6, :cond_2

    if-eqz v8, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/lqd;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v8}, Lorg/apache/commons/compress/changes/ChangeSetResults;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v6, :cond_1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->b(Ljava/util/Set;Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/changes/ChangeSetResults;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Lorg/apache/commons/compress/changes/ChangeSetPerformer$a;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0, v3, p2, v2}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->a(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/changes/ChangeSetResults;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/lqd;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/lqd;->e()I

    move-result v2

    if-ne v2, v4, :cond_6

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/lqd;->c()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/lqd;->a()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/changes/ChangeSetResults;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/lqd;->b()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/lqd;->a()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v3

    invoke-virtual {p0, v2, p2, v3}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->a(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/lqd;->a()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/changes/ChangeSetResults;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->finish()V

    return-object v0
.end method

.method public perform(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)Lorg/apache/commons/compress/changes/ChangeSetResults;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$b;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/changes/ChangeSetPerformer$b;-><init>(Lorg/apache/commons/compress/archivers/ArchiveInputStream;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->c(Lorg/apache/commons/compress/changes/ChangeSetPerformer$a;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)Lorg/apache/commons/compress/changes/ChangeSetResults;

    move-result-object p0

    return-object p0
.end method

.method public perform(Lorg/apache/commons/compress/archivers/zip/ZipFile;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)Lorg/apache/commons/compress/changes/ChangeSetResults;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$c;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/changes/ChangeSetPerformer$c;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->c(Lorg/apache/commons/compress/changes/ChangeSetPerformer$a;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)Lorg/apache/commons/compress/changes/ChangeSetResults;

    move-result-object p0

    return-object p0
.end method
