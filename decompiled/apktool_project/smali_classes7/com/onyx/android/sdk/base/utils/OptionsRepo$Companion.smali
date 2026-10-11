.class public final Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/base/utils/OptionsRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOptionsRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OptionsRepo.kt\ncom/onyx/android/sdk/base/utils/OptionsRepo$Companion\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,148:1\n215#2,2:149\n*S KotlinDebug\n*F\n+ 1 OptionsRepo.kt\ncom/onyx/android/sdk/base/utils/OptionsRepo$Companion\n*L\n133#1:149,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010JH\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000228\u0008\u0002\u0010\u000b\u001a2\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0004J\u000c\u0010\u000e\u001a\u00020\r*\u00020\u0001H\u0002\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion;",
        "",
        "Lcom/onyx/android/sdk/base/utils/OptionsRepo;",
        "oldOptions",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "newOptions",
        "",
        "key",
        "",
        "onCloneObject",
        "cloneOptionsRepo",
        "",
        "a",
        "<init>",
        "()V",
        "sdk-base_release"
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
        "SMAP\nOptionsRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OptionsRepo.kt\ncom/onyx/android/sdk/base/utils/OptionsRepo$Companion\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,148:1\n215#2,2:149\n*S KotlinDebug\n*F\n+ 1 OptionsRepo.kt\ncom/onyx/android/sdk/base/utils/OptionsRepo$Companion\n*L\n133#1:149,2\n*E\n"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion;-><init>()V

    return-void
.end method

.method public static synthetic cloneOptionsRepo$default(Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion;Lcom/onyx/android/sdk/base/utils/OptionsRepo;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/utils/OptionsRepo;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion$cloneOptionsRepo$1;->INSTANCE:Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion$cloneOptionsRepo$1;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion;->cloneOptionsRepo(Lcom/onyx/android/sdk/base/utils/OptionsRepo;Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Ljava/lang/Byte;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/Short;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/Long;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/Float;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/Double;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/Boolean;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/Character;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final cloneOptionsRepo(Lcom/onyx/android/sdk/base/utils/OptionsRepo;Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/base/utils/OptionsRepo;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/utils/OptionsRepo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/utils/OptionsRepo;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/onyx/android/sdk/base/utils/OptionsRepo;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/onyx/android/sdk/base/utils/OptionsRepo;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "oldOptions"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onCloneObject"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getRepo()Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->Companion:Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getRepo()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method
