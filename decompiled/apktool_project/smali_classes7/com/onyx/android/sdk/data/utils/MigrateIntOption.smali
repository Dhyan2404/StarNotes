.class public final Lcom/onyx/android/sdk/data/utils/MigrateIntOption;
.super Lcom/onyx/android/sdk/data/utils/IntOption;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u0008H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/utils/MigrateIntOption;",
        "Lcom/onyx/android/sdk/data/utils/IntOption;",
        "parent",
        "Lcom/tencent/mmkv/MMKV;",
        "oldKey",
        "",
        "key",
        "defaultValue",
        "",
        "(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/String;I)V",
        "get",
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
.field private final oldKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Lcom/tencent/mmkv/MMKV;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p3, p4}, Lcom/onyx/android/sdk/data/utils/IntOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;I)V

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/data/utils/MigrateIntOption;->oldKey:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/data/utils/MigrateIntOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()I
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BaseOption;->getParent()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BaseOption;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BaseOption;->getParent()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/data/utils/MigrateIntOption;->oldKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BaseOption;->getParent()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/data/utils/MigrateIntOption;->oldKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/IntOption;->getDefaultValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/IntOption;->put(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BaseOption;->getParent()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/MigrateIntOption;->oldKey:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/tencent/mmkv/MMKV;->removeValueForKey(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-super {p0}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p0

    return p0
.end method
