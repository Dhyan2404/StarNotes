.class public final LColorSetResourceList;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "LColorSetResource;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "LColorSetResourceList;",
        "Ljava/util/ArrayList;",
        "LColorSetResource;",
        "Lkotlin/collections/ArrayList;",
        "()V",
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
.method public bridge contains(LColorSetResource;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    instance-of v0, p1, LColorSetResource;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, LColorSetResource;

    invoke-virtual {p0, p1}, LColorSetResourceList;->contains(LColorSetResource;)Z

    move-result p0

    return p0
.end method

.method public bridge getSize()I
    .locals 0

    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public bridge indexOf(LColorSetResource;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 2
    instance-of v0, p1, LColorSetResource;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, LColorSetResource;

    invoke-virtual {p0, p1}, LColorSetResourceList;->indexOf(LColorSetResource;)I

    move-result p0

    return p0
.end method

.method public bridge lastIndexOf(LColorSetResource;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 2
    instance-of v0, p1, LColorSetResource;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, LColorSetResource;

    invoke-virtual {p0, p1}, LColorSetResourceList;->lastIndexOf(LColorSetResource;)I

    move-result p0

    return p0
.end method

.method public final bridge remove(I)LColorSetResource;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LColorSetResourceList;->removeAt(I)LColorSetResource;

    move-result-object p0

    return-object p0
.end method

.method public bridge remove(LColorSetResource;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 3
    instance-of v0, p1, LColorSetResource;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, LColorSetResource;

    invoke-virtual {p0, p1}, LColorSetResourceList;->remove(LColorSetResource;)Z

    move-result p0

    return p0
.end method

.method public bridge removeAt(I)LColorSetResource;
    .locals 0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LColorSetResource;

    return-object p0
.end method

.method public final bridge size()I
    .locals 0

    invoke-virtual {p0}, LColorSetResourceList;->getSize()I

    move-result p0

    return p0
.end method
