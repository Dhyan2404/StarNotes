.class public final Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSizeFormat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SizeFormat.kt\ncom/onyx/android/sdk/replicator/note/bean/SizeFormat$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n1855#2,2:77\n*S KotlinDebug\n*F\n+ 1 SizeFormat.kt\ncom/onyx/android/sdk/replicator/note/bean/SizeFormat$Companion\n*L\n68#1:77,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008J\u0006\u0010\t\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat$Companion;",
        "",
        "()V",
        "fromSize",
        "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;",
        "size",
        "Landroid/util/Size;",
        "candidateList",
        "",
        "getMaxSize",
        "isCustom",
        "",
        "name",
        "",
        "safetyValueOf",
        "value",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSizeFormat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SizeFormat.kt\ncom/onyx/android/sdk/replicator/note/bean/SizeFormat$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n1855#2,2:77\n*S KotlinDebug\n*F\n+ 1 SizeFormat.kt\ncom/onyx/android/sdk/replicator/note/bean/SizeFormat$Companion\n*L\n68#1:77,2\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromSize(Landroid/util/Size;Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;
    .locals 1
    .param p1    # Landroid/util/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "size"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "candidateList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-le p0, v0, :cond_0

    new-instance p0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/util/Size;-><init>(II)V

    move-object p1, p0

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

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/SizeKt;->areApproximatelyEqual(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->CUSTOM:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    return-object p0
.end method

.method public final getMaxSize()Landroid/util/Size;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->B3:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public final isCustom(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "CUSTOM"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final safetyValueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->A4:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p0
.end method
