.class public final Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HWRPointEventList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRPointerEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRPointerEvent.kt\ncom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n1855#2,2:77\n*S KotlinDebug\n*F\n+ 1 HWRPointerEvent.kt\ncom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList\n*L\n12#1:77,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;",
        "Ljava/util/ArrayList;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
        "Lkotlin/collections/ArrayList;",
        "()V",
        "hasNearPoint",
        "",
        "event",
        "pxThreshold",
        "",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHWRPointerEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRPointerEvent.kt\ncom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n1855#2,2:77\n*S KotlinDebug\n*F\n+ 1 HWRPointerEvent.kt\ncom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList\n*L\n12#1:77,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge contains(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;->contains(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge getSize()I
    .locals 0

    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final hasNearPoint(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;I)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->near(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge indexOf(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;->indexOf(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)I

    move-result p0

    return p0
.end method

.method public bridge lastIndexOf(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;->lastIndexOf(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)I

    move-result p0

    return p0
.end method

.method public final bridge remove(I)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;->removeAt(I)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    move-result-object p0

    return-object p0
.end method

.method public bridge remove(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;->remove(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge removeAt(I)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
    .locals 0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    return-object p0
.end method

.method public final bridge size()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;->getSize()I

    move-result p0

    return p0
.end method
