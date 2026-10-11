.class public final Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
        "Ljava/util/ArrayList;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "Lkotlin/collections/ArrayList;",
        "()V",
        "addToHead",
        "other",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public final addToHead(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public bridge contains(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;->contains(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Z

    move-result p0

    return p0
.end method

.method public bridge getSize()I
    .locals 0

    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public bridge indexOf(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;->indexOf(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)I

    move-result p0

    return p0
.end method

.method public bridge lastIndexOf(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;->lastIndexOf(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)I

    move-result p0

    return p0
.end method

.method public final bridge remove(I)Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;->removeAt(I)Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object p0

    return-object p0
.end method

.method public bridge remove(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;->remove(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Z

    move-result p0

    return p0
.end method

.method public bridge removeAt(I)Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
    .locals 0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    return-object p0
.end method

.method public final bridge size()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;->getSize()I

    move-result p0

    return p0
.end method
