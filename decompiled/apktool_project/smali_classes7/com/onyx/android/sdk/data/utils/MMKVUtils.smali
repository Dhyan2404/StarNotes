.class public final Lcom/onyx/android/sdk/data/utils/MMKVUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMMKVUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MMKVUtils.kt\ncom/onyx/android/sdk/data/utils/MMKVUtils\n*L\n1#1,461:1\n312#1:462\n316#1:463\n*S KotlinDebug\n*F\n+ 1 MMKVUtils.kt\ncom/onyx/android/sdk/data/utils/MMKVUtils\n*L\n323#1:462\n330#1:463\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0004J\u0016\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000eJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0010J\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0012J\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0010JF\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001b\"\n\u0008\u0000\u0010\u001c\u0018\u0001*\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00082\u001e\u0008\n\u0010\u001d\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002H\u001c0\u001fj\u0008\u0012\u0004\u0012\u0002H\u001c` 0\u001eH\u0086\u0008\u00f8\u0001\u0000J%\u0010!\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002H\u001c0\u001fj\u0008\u0012\u0004\u0012\u0002H\u001c` 0\"\"\u0004\u0008\u0000\u0010\u001cH\u0086\u0008J\u001e\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0010J6\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H\u001c0&\"\n\u0008\u0000\u0010\u001c\u0018\u0001*\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00082\u000e\u0008\u0008\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001eH\u0086\u0008\u00f8\u0001\u0000J\u0016\u0010\'\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\nJ\u0016\u0010)\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u000eJ\u0016\u0010*\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u0010J\u0016\u0010+\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u0012J\u0016\u0010,\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u0008J\u0016\u0010-\u001a\u00020.2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008J\u0015\u0010/\u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\"\"\u0004\u0008\u0000\u0010\u001cH\u0086\u0008J3\u00100\u001a\u0002H\u001c\"\u0004\u0008\u0000\u0010\u001c*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002H\u001c022\u0006\u00103\u001a\u0002H\u001c\u00a2\u0006\u0002\u00104J+\u00105\u001a\u0002H\u001c\"\u0004\u0008\u0000\u0010\u001c*\u00020\u00042\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002H\u001c022\u0006\u00103\u001a\u0002H\u001c\u00a2\u0006\u0002\u00106J\u001a\u00107\u001a\u00020\u0015*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u00108\u001a\u00020\u0001J\u0012\u00109\u001a\u00020\u0015*\u00020\u00042\u0006\u00108\u001a\u00020\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006:"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/utils/MMKVUtils;",
        "",
        "()V",
        "mmkv",
        "Lcom/tencent/mmkv/MMKV;",
        "booleanOption",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "key",
        "",
        "defaultValue",
        "",
        "get",
        "getBoolean",
        "getFloat",
        "",
        "getInt",
        "",
        "getLong",
        "",
        "getString",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
        "intOption",
        "Lcom/onyx/android/sdk/data/utils/IntOption;",
        "listOption",
        "Lcom/onyx/android/sdk/data/utils/JSONListOption;",
        "T",
        "defaultValueBuilder",
        "Lkotlin/Function0;",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "listRef",
        "Lcom/alibaba/fastjson2/TypeReference;",
        "migrateIntOption",
        "oldKey",
        "objectOption",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "putBoolean",
        "value",
        "putFloat",
        "putInt",
        "putLong",
        "putString",
        "stringOption",
        "Lcom/onyx/android/sdk/data/utils/StringOption;",
        "typeRef",
        "getObject",
        "clazz",
        "Ljava/lang/Class;",
        "default",
        "(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;",
        "getObjectByClass",
        "(Lcom/tencent/mmkv/MMKV;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;",
        "putObject",
        "any",
        "putObjectByClass",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMMKVUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MMKVUtils.kt\ncom/onyx/android/sdk/data/utils/MMKVUtils\n*L\n1#1,461:1\n312#1:462\n316#1:463\n*S KotlinDebug\n*F\n+ 1 MMKVUtils.kt\ncom/onyx/android/sdk/data/utils/MMKVUtils\n*L\n323#1:462\n330#1:463\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mmkv:Lcom/tencent/mmkv/MMKV;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic listOption$default(Lcom/onyx/android/sdk/data/utils/MMKVUtils;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/JSONListOption;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object p2, Lcom/onyx/android/sdk/data/utils/MMKVUtils$listOption$1;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils$listOption$1;

    :cond_0
    const-string p3, "key"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "defaultValueBuilder"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/onyx/android/sdk/data/utils/JSONListOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    new-instance p4, Lcom/onyx/android/sdk/data/utils/MMKVUtils$listRef$1;

    invoke-direct {p4}, Lcom/onyx/android/sdk/data/utils/MMKVUtils$listRef$1;-><init>()V

    invoke-direct {p3, p0, p1, p4, p2}, Lcom/onyx/android/sdk/data/utils/JSONListOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;Lkotlin/jvm/functions/Function0;)V

    return-object p3
.end method


# virtual methods
.method public final booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->mmkv:Lcom/tencent/mmkv/MMKV;

    if-nez v0, :cond_0

    const-string v0, "mmkv"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public final get()Lcom/tencent/mmkv/MMKV;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->mmkv:Lcom/tencent/mmkv/MMKV;

    if-nez p0, :cond_0

    const-string p0, "mmkv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->mmkv:Lcom/tencent/mmkv/MMKV;

    if-nez p0, :cond_0

    const-string p0, "mmkv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->mmkv:Lcom/tencent/mmkv/MMKV;

    if-nez p0, :cond_0

    const-string p0, "mmkv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->mmkv:Lcom/tencent/mmkv/MMKV;

    if-nez p0, :cond_0

    const-string p0, "mmkv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->mmkv:Lcom/tencent/mmkv/MMKV;

    if-nez p0, :cond_0

    const-string p0, "mmkv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getObject(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/tencent/mmkv/MMKV;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/mmkv/MMKV;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clazz"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string p0, ""

    invoke-virtual {p1, p2, p0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1, p0, p3}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p4, p0

    :catchall_0
    return-object p4
.end method

.method public final getObjectByClass(Lcom/tencent/mmkv/MMKV;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcom/tencent/mmkv/MMKV;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/mmkv/MMKV;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getObject(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "defaultValue"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->mmkv:Lcom/tencent/mmkv/MMKV;

    if-nez p0, :cond_0

    const-string p0, "mmkv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sput-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->mmkv:Lcom/tencent/mmkv/MMKV;

    return-void
.end method

.method public final intOption(Ljava/lang/String;I)Lcom/onyx/android/sdk/data/utils/IntOption;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/data/utils/IntOption;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->mmkv:Lcom/tencent/mmkv/MMKV;

    if-nez v0, :cond_0

    const-string v0, "mmkv"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/onyx/android/sdk/data/utils/IntOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final synthetic listOption(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/data/utils/JSONListOption;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/ArrayList<",
            "TT;>;>;)",
            "Lcom/onyx/android/sdk/data/utils/JSONListOption<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValueBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/utils/JSONListOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils$listRef$1;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils$listRef$1;-><init>()V

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/onyx/android/sdk/data/utils/JSONListOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final listRef()Lcom/alibaba/fastjson2/TypeReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/alibaba/fastjson2/TypeReference<",
            "Ljava/util/ArrayList<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils$listRef$1;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils$listRef$1;-><init>()V

    return-object p0
.end method

.method public final migrateIntOption(Ljava/lang/String;Ljava/lang/String;I)Lcom/onyx/android/sdk/data/utils/IntOption;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "oldKey"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/data/utils/MigrateIntOption;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->mmkv:Lcom/tencent/mmkv/MMKV;

    if-nez v0, :cond_0

    const-string v0, "mmkv"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/onyx/android/sdk/data/utils/MigrateIntOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final synthetic objectOption(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValueBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils$typeRef$1;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils$typeRef$1;-><init>()V

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final putBoolean(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->mmkv:Lcom/tencent/mmkv/MMKV;

    if-nez p0, :cond_0

    const-string p0, "mmkv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final putFloat(Ljava/lang/String;F)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->mmkv:Lcom/tencent/mmkv/MMKV;

    if-nez p0, :cond_0

    const-string p0, "mmkv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final putInt(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->mmkv:Lcom/tencent/mmkv/MMKV;

    if-nez p0, :cond_0

    const-string p0, "mmkv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final putLong(Ljava/lang/String;J)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->mmkv:Lcom/tencent/mmkv/MMKV;

    if-nez p0, :cond_0

    const-string p0, "mmkv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final putObject(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/tencent/mmkv/MMKV;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "any"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final putObjectByClass(Lcom/tencent/mmkv/MMKV;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lcom/tencent/mmkv/MMKV;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "any"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putObject(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->mmkv:Lcom/tencent/mmkv/MMKV;

    if-nez p0, :cond_0

    const-string p0, "mmkv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final stringOption(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/utils/StringOption;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "defaultValue"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/data/utils/StringOption;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->mmkv:Lcom/tencent/mmkv/MMKV;

    if-nez v0, :cond_0

    const-string v0, "mmkv"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/onyx/android/sdk/data/utils/StringOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final typeRef()Lcom/alibaba/fastjson2/TypeReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/alibaba/fastjson2/TypeReference<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils$typeRef$1;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils$typeRef$1;-><init>()V

    return-object p0
.end method
