.class public final Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditorBundleWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorBundleWrapper.kt\ncom/onyx/android/sdk/universal/editor/EditorBundleCache\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,82:1\n98#2,4:83\n98#2,4:87\n*S KotlinDebug\n*F\n+ 1 EditorBundleWrapper.kt\ncom/onyx/android/sdk/universal/editor/EditorBundleCache\n*L\n34#1:83,4\n48#1:87,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J$\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00022\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\nJ.\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u0014\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;",
        "Landroid/util/LruCache;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;",
        "maxSize",
        "",
        "(I)V",
        "computeIfAbsent",
        "key",
        "mappingFunction",
        "Lkotlin/Function1;",
        "entryRemoved",
        "",
        "evicted",
        "",
        "oldValue",
        "newValue",
        "sdk-universal_overseasRelease"
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
        "SMAP\nEditorBundleWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorBundleWrapper.kt\ncom/onyx/android/sdk/universal/editor/EditorBundleCache\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,82:1\n98#2,4:83\n98#2,4:87\n*S KotlinDebug\n*F\n+ 1 EditorBundleWrapper.kt\ncom/onyx/android/sdk/universal/editor/EditorBundleCache\n*L\n34#1:83,4\n48#1:87,4\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method

.method public static synthetic computeIfAbsent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/universal/editor/EditorBundleCache$computeIfAbsent$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/EditorBundleCache$computeIfAbsent$1;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;->computeIfAbsent(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final computeIfAbsent(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;",
            ">;)",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mappingFunction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "editorBundle entryCreated:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;

    check-cast p4, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;->entryRemoved(ZLjava/lang/String;Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;)V

    return-void
.end method

.method public entryRemoved(ZLjava/lang/String;Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "editorBundle entryRemoved:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2c

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p1, p2, p4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;->close()V

    :cond_1
    return-void
.end method
