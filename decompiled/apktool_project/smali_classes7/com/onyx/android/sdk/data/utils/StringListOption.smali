.class public final Lcom/onyx/android/sdk/data/utils/StringListOption;
.super Lcom/onyx/android/sdk/data/utils/BaseOption;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\"\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ(\u0010\u000f\u001a\u00020\u00072\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00112\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u0012\u001a\u00020\u0007J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0007J\u0016\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/utils/StringListOption;",
        "Lcom/onyx/android/sdk/data/utils/BaseOption;",
        "parent",
        "Lcom/tencent/mmkv/MMKV;",
        "key",
        "",
        "defaultValue",
        "Lcom/onyx/android/sdk/base/extension/StringList;",
        "(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringList;)V",
        "add",
        "item",
        "distinct",
        "",
        "trimSize",
        "",
        "addAll",
        "items",
        "",
        "get",
        "put",
        "",
        "value",
        "update",
        "index",
        "itemValue",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private defaultValue:Lcom/onyx/android/sdk/base/extension/StringList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringList;)V
    .locals 1
    .param p1    # Lcom/tencent/mmkv/MMKV;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/extension/StringList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/data/utils/BaseOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;)V

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/data/utils/StringListOption;->defaultValue:Lcom/onyx/android/sdk/base/extension/StringList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1
    new-instance p3, Lcom/onyx/android/sdk/base/extension/StringList;

    invoke-direct {p3}, Lcom/onyx/android/sdk/base/extension/StringList;-><init>()V

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/utils/StringListOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringList;)V

    return-void
.end method

.method public static synthetic add$default(Lcom/onyx/android/sdk/data/utils/StringListOption;Ljava/lang/String;ZIILjava/lang/Object;)Lcom/onyx/android/sdk/base/extension/StringList;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, -0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/utils/StringListOption;->add(Ljava/lang/String;ZI)Lcom/onyx/android/sdk/base/extension/StringList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic addAll$default(Lcom/onyx/android/sdk/data/utils/StringListOption;Ljava/util/List;ZIILjava/lang/Object;)Lcom/onyx/android/sdk/base/extension/StringList;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, -0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/utils/StringListOption;->addAll(Ljava/util/List;ZI)Lcom/onyx/android/sdk/base/extension/StringList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(Ljava/lang/String;ZI)Lcom/onyx/android/sdk/base/extension/StringList;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/utils/StringListOption;->addAll(Ljava/util/List;ZI)Lcom/onyx/android/sdk/base/extension/StringList;

    move-result-object p0

    return-object p0
.end method

.method public final addAll(Ljava/util/List;ZI)Lcom/onyx/android/sdk/base/extension/StringList;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)",
            "Lcom/onyx/android/sdk/base/extension/StringList;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/StringListOption;->get()Lcom/onyx/android/sdk/base/extension/StringList;

    move-result-object v0

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    if-lez p3, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/extension/StringList;->size()I

    move-result p1

    if-le p1, p3, :cond_1

    div-int/lit8 p1, p3, 0x2

    invoke-static {v0, p1, p3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/TypeExtKt;->toStringList(Ljava/util/List;)Lcom/onyx/android/sdk/base/extension/StringList;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/StringListOption;->put(Lcom/onyx/android/sdk/base/extension/StringList;)V

    return-object v0
.end method

.method public final get()Lcom/onyx/android/sdk/base/extension/StringList;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BaseOption;->getParent()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BaseOption;->getKey()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/onyx/android/sdk/base/extension/StringList;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/StringListOption;->defaultValue:Lcom/onyx/android/sdk/base/extension/StringList;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getObject(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/extension/StringList;

    return-object p0
.end method

.method public final put(Lcom/onyx/android/sdk/base/extension/StringList;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/extension/StringList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BaseOption;->getParent()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BaseOption;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putObject(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final update(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/StringListOption;->get()Lcom/onyx/android/sdk/base/extension/StringList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/StringListOption;->put(Lcom/onyx/android/sdk/base/extension/StringList;)V

    return-void
.end method
