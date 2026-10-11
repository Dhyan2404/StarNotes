.class public final Lcom/onyx/android/sdk/data/utils/LongOption;
.super Lcom/onyx/android/sdk/data/utils/BaseOption;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\t\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/utils/LongOption;",
        "Lcom/onyx/android/sdk/data/utils/BaseOption;",
        "parent",
        "Lcom/tencent/mmkv/MMKV;",
        "key",
        "",
        "defaultValue",
        "",
        "(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;J)V",
        "get",
        "put",
        "",
        "value",
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
.field private final defaultValue:J


# direct methods
.method public constructor <init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;J)V
    .locals 1
    .param p1    # Lcom/tencent/mmkv/MMKV;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/data/utils/BaseOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;)V

    .line 3
    iput-wide p3, p0, Lcom/onyx/android/sdk/data/utils/LongOption;->defaultValue:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const-wide/16 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/data/utils/LongOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final get()J
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BaseOption;->getParent()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BaseOption;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/onyx/android/sdk/data/utils/LongOption;->defaultValue:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BaseOption;->getParent()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BaseOption;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
