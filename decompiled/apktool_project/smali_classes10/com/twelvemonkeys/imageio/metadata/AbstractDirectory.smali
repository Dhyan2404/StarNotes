.class public abstract Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/imageio/metadata/Directory;


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->f:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/twelvemonkeys/lang/Validate;->noNullElements(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/twelvemonkeys/imageio/metadata/Entry;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->assertMutable()V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final assertMutable()V
    .locals 1

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->isReadOnly()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Directory is read-only"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->e:Ljava/util/List;

    iget-object p1, p1, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getEntryByFieldName(Ljava/lang/String;)Lcom/twelvemonkeys/imageio/metadata/Entry;
    .locals 2

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twelvemonkeys/imageio/metadata/Entry;

    invoke-interface {v0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getFieldName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;
    .locals 2

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twelvemonkeys/imageio/metadata/Entry;

    invoke-interface {v0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getIdentifier()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0
.end method

.method public isReadOnly()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->f:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->e:Ljava/util/List;

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->assertMutable()V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->e:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
