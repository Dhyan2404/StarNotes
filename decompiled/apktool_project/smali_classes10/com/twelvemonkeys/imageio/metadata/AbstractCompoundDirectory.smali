.class public abstract Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;
.super Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;


# instance fields
.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/twelvemonkeys/imageio/metadata/Directory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/twelvemonkeys/imageio/metadata/Directory;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;->g:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/twelvemonkeys/lang/Validate;->noNullElements(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;->g:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public add(Lcom/twelvemonkeys/imageio/metadata/Entry;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Directory is read-only"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public directoryCount()I
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;->directoryCount()I

    move-result v2

    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;->directoryCount()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;->directoryCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v2}, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;->getDirectory(I)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v3

    invoke-interface {p1, v2}, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;->getDirectory(I)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public getDirectory(I)Lcom/twelvemonkeys/imageio/metadata/Directory;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;->g:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twelvemonkeys/imageio/metadata/Directory;

    return-object p0
.end method

.method public getEntryByFieldName(Ljava/lang/String;)Lcom/twelvemonkeys/imageio/metadata/Entry;
    .locals 1

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-interface {v0, p1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryByFieldName(Ljava/lang/String;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;
    .locals 1

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-interface {v0, p1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
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

    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory$a;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory$a;-><init>(Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Directory is read-only"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 2

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-interface {v1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;->g:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
