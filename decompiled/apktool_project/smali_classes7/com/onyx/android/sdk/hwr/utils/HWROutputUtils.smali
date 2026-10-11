.class public final Lcom/onyx/android/sdk/hwr/utils/HWROutputUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWROutputUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWROutputUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWROutputUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1864#2,3:36\n*S KotlinDebug\n*F\n+ 1 HWROutputUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWROutputUtils\n*L\n16#1:36,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006*\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/utils/HWROutputUtils;",
        "",
        "()V",
        "extractTextLines",
        "Ljava/util/ArrayList;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRTextLine;",
        "Lkotlin/collections/ArrayList;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
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
        "SMAP\nHWROutputUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWROutputUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWROutputUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1864#2,3:36\n*S KotlinDebug\n*F\n+ 1 HWROutputUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWROutputUtils\n*L\n16#1:36,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWROutputUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/hwr/utils/HWROutputUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/utils/HWROutputUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/utils/HWROutputUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWROutputUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extractTextLines(Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;)Ljava/util/ArrayList;
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRTextLine;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;->getResult()Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->getChars()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v5, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->getLabel()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "toString(...)"

    if-eqz v7, :cond_1

    new-instance v4, Lcom/onyx/android/sdk/hwr/data/bean/HWRTextLine;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRTextLine;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;->getResult()Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->getChars()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-eqz v4, :cond_3

    new-instance v4, Lcom/onyx/android/sdk/hwr/data/bean/HWRTextLine;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRTextLine;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    move v4, v6

    goto :goto_0

    :cond_4
    return-object p0
.end method
