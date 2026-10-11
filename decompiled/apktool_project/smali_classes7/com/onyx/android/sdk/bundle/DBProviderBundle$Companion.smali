.class public final Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/bundle/DBProviderBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDBProviderBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBProviderBundle.kt\ncom/onyx/android/sdk/bundle/DBProviderBundle$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,325:1\n1855#2:326\n1856#2:329\n215#3,2:327\n*S KotlinDebug\n*F\n+ 1 DBProviderBundle.kt\ncom/onyx/android/sdk/bundle/DBProviderBundle$Companion\n*L\n315#1:326\n315#1:329\n318#1:327,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0014\u0010\u0006\u001a\u00020\u0005*\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003J\u0014\u0010\u0007\u001a\u00020\u0005*\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003J\u0014\u0010\u0008\u001a\u00020\u0005*\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003J.\u0010\r\u001a\u00020\u0005*\u00020\u00022\u0016\u0010\u000c\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u000b\u0012\u0002\u0008\u00030\n0\t2\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;",
        "",
        "Lcom/onyx/android/sdk/bundle/DBProviderBundle;",
        "",
        "debug",
        "",
        "dumpAllProviderInfo",
        "dumpUserProviderInfo",
        "dumpDocProviderInfo",
        "",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "providerList",
        "a",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDBProviderBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBProviderBundle.kt\ncom/onyx/android/sdk/bundle/DBProviderBundle$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,325:1\n1855#2:326\n1856#2:329\n215#3,2:327\n*S KotlinDebug\n*F\n+ 1 DBProviderBundle.kt\ncom/onyx/android/sdk/bundle/DBProviderBundle$Companion\n*L\n315#1:326\n315#1:329\n318#1:327,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;Lcom/onyx/android/sdk/bundle/DBProviderBundle;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    sget-object p3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;->a(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic dumpAllProviderInfo$default(Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;Lcom/onyx/android/sdk/bundle/DBProviderBundle;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;->dumpAllProviderInfo(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Z)V

    return-void
.end method

.method public static synthetic dumpDocProviderInfo$default(Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;Lcom/onyx/android/sdk/bundle/DBProviderBundle;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;->dumpDocProviderInfo(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Z)V

    return-void
.end method

.method public static synthetic dumpUserProviderInfo$default(Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;Lcom/onyx/android/sdk/bundle/DBProviderBundle;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;->dumpUserProviderInfo(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/bundle/DBProviderBundle;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "*>;>;Z)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_1

    sget-object p3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump providers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Map;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p3, v0, v1, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p3, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final dumpAllProviderInfo(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/bundle/DBProviderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;->dumpUserProviderInfo(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Z)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;->dumpDocProviderInfo(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Z)V

    return-void
.end method

.method public final dumpDocProviderInfo(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/bundle/DBProviderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->access$getDocProviderMapList$p(Lcom/onyx/android/sdk/bundle/DBProviderBundle;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;->a(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Ljava/util/List;Z)V

    return-void
.end method

.method public final dumpUserProviderInfo(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/bundle/DBProviderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->access$getUserProviderMapList$p(Lcom/onyx/android/sdk/bundle/DBProviderBundle;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;->a(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Ljava/util/List;Z)V

    return-void
.end method
