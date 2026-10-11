.class public final Lcom/onyx/android/sdk/data/utils/FloatListOption;
.super Lcom/onyx/android/sdk/data/utils/BaseOption;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0014\u001a\u00020\u0007J\u001a\u0010\u0015\u001a\u00020\u000f2\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000f0\u0017J\u000e\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007J\u000e\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u001a\u001a\u00020\u001bR\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/utils/FloatListOption;",
        "Lcom/onyx/android/sdk/data/utils/BaseOption;",
        "parent",
        "Lcom/tencent/mmkv/MMKV;",
        "key",
        "",
        "defaultValue",
        "Lcom/onyx/android/sdk/base/extension/FloatList;",
        "(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/FloatList;)V",
        "list",
        "getList",
        "()Lcom/onyx/android/sdk/base/extension/FloatList;",
        "setList",
        "(Lcom/onyx/android/sdk/base/extension/FloatList;)V",
        "add",
        "",
        "value",
        "",
        "contains",
        "",
        "get",
        "getAndPut",
        "block",
        "Lkotlin/Function1;",
        "put",
        "remove",
        "size",
        "",
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
.field private list:Lcom/onyx/android/sdk/base/extension/FloatList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/FloatList;)V
    .locals 2
    .param p1    # Lcom/tencent/mmkv/MMKV;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/extension/FloatList;
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
    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-class v1, Lcom/onyx/android/sdk/base/extension/FloatList;

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getObject(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/extension/FloatList;

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/FloatListOption;->list:Lcom/onyx/android/sdk/base/extension/FloatList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/FloatList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1
    new-instance p3, Lcom/onyx/android/sdk/base/extension/FloatList;

    invoke-direct {p3}, Lcom/onyx/android/sdk/base/extension/FloatList;-><init>()V

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/utils/FloatListOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/FloatList;)V

    return-void
.end method


# virtual methods
.method public final add(F)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/data/utils/FloatListOption;->list:Lcom/onyx/android/sdk/base/extension/FloatList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/onyx/android/sdk/data/utils/FloatListOption;->list:Lcom/onyx/android/sdk/base/extension/FloatList;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/FloatListOption;->put(Lcom/onyx/android/sdk/base/extension/FloatList;)V

    return-void
.end method

.method public final contains(F)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/FloatListOption;->list:Lcom/onyx/android/sdk/base/extension/FloatList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/extension/FloatList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final get()Lcom/onyx/android/sdk/base/extension/FloatList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/FloatListOption;->list:Lcom/onyx/android/sdk/base/extension/FloatList;

    return-object p0
.end method

.method public final getAndPut(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/base/extension/FloatList;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/FloatListOption;->get()Lcom/onyx/android/sdk/base/extension/FloatList;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/FloatListOption;->put(Lcom/onyx/android/sdk/base/extension/FloatList;)V

    return-void
.end method

.method public final getList()Lcom/onyx/android/sdk/base/extension/FloatList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/FloatListOption;->list:Lcom/onyx/android/sdk/base/extension/FloatList;

    return-object p0
.end method

.method public final put(Lcom/onyx/android/sdk/base/extension/FloatList;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/extension/FloatList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/FloatListOption;->list:Lcom/onyx/android/sdk/base/extension/FloatList;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BaseOption;->getParent()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BaseOption;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putObject(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final remove(F)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/data/utils/FloatListOption;->list:Lcom/onyx/android/sdk/base/extension/FloatList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/extension/FloatList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/onyx/android/sdk/data/utils/FloatListOption;->list:Lcom/onyx/android/sdk/base/extension/FloatList;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/FloatListOption;->put(Lcom/onyx/android/sdk/base/extension/FloatList;)V

    return-void
.end method

.method public final setList(Lcom/onyx/android/sdk/base/extension/FloatList;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/extension/FloatList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/FloatListOption;->list:Lcom/onyx/android/sdk/base/extension/FloatList;

    return-void
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/FloatListOption;->list:Lcom/onyx/android/sdk/base/extension/FloatList;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/extension/FloatList;->size()I

    move-result p0

    return p0
.end method
