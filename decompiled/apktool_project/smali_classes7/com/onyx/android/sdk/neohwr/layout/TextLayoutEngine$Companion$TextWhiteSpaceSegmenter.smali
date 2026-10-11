.class public final Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextWhiteSpaceSegmenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegmenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextWhiteSpaceSegmenter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextWhiteSpaceSegmenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,766:1\n1855#2:767\n1864#2,3:768\n1856#2:771\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextWhiteSpaceSegmenter\n*L\n300#1:767\n301#1:768,3\n300#1:771\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextWhiteSpaceSegmenter;",
        "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegmenter;",
        "()V",
        "segment",
        "",
        "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;",
        "segments",
        "sdk-neohwr_release"
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
        "SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextWhiteSpaceSegmenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,766:1\n1855#2:767\n1864#2,3:768\n1856#2:771\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextWhiteSpaceSegmenter\n*L\n300#1:767\n301#1:768,3\n300#1:771\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public segment(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "segments"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getChars()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v5, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    sget-object v4, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->Companion:Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion;->create(Ljava/util/List;Ljava/util/Locale;)Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getChars()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-ne v4, v5, :cond_3

    sget-object v4, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->Companion:Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion;->create(Ljava/util/List;Ljava/util/Locale;)Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    :goto_1
    move v4, v6

    goto :goto_0

    :cond_4
    return-object p0
.end method
