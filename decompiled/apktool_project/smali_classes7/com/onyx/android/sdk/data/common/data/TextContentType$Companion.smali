.class public final Lcom/onyx/android/sdk/data/common/data/TextContentType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/common/data/TextContentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextContentType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextContentType.kt\ncom/onyx/android/sdk/data/common/data/TextContentType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,33:1\n1282#2,2:34\n*S KotlinDebug\n*F\n+ 1 TextContentType.kt\ncom/onyx/android/sdk/data/common/data/TextContentType$Companion\n*L\n22#1:34,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u000b*\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u0010\u0010\u000c\u001a\u00020\u000b*\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/data/TextContentType$Companion;",
        "",
        "()V",
        "allPageContentTypes",
        "",
        "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
        "editablePageContentTypes",
        "fromString",
        "name",
        "",
        "containsHwrContent",
        "",
        "containsOcrContent",
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
        "SMAP\nTextContentType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextContentType.kt\ncom/onyx/android/sdk/data/common/data/TextContentType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,33:1\n1282#2,2:34\n*S KotlinDebug\n*F\n+ 1 TextContentType.kt\ncom/onyx/android/sdk/data/common/data/TextContentType$Companion\n*L\n22#1:34,2\n*E\n"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/data/TextContentType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final allPageContentTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/common/data/TextContentType;->PDF:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/TextContentType;->TEXT_BOX:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/TextContentType;->HANDWRITING:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    sget-object v2, Lcom/onyx/android/sdk/data/common/data/TextContentType;->HWR_FONT_TEXT:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    filled-new-array {p0, v0, v1, v2}, [Lcom/onyx/android/sdk/data/common/data/TextContentType;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final containsHwrContent(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    sget-object p0, Lcom/onyx/android/sdk/data/common/data/TextContentType;->HANDWRITING:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/TextContentType;->HWR_FONT_TEXT:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    filled-new-array {p0, v0}, [Lcom/onyx/android/sdk/data/common/data/TextContentType;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->containsAnyElement(Ljava/lang/Iterable;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final containsOcrContent(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    sget-object p0, Lcom/onyx/android/sdk/data/common/data/TextContentType;->HANDWRITING:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/TextContentType;->OCR_TEXT:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    filled-new-array {p0, v0}, [Lcom/onyx/android/sdk/data/common/data/TextContentType;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->containsAnyElement(Ljava/lang/Iterable;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final editablePageContentTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/common/data/TextContentType;->TEXT_BOX:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/TextContentType;->HANDWRITING:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/TextContentType;->HWR_FONT_TEXT:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    filled-new-array {p0, v0, v1}, [Lcom/onyx/android/sdk/data/common/data/TextContentType;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/data/TextContentType;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/data/common/data/TextContentType;->values()[Lcom/onyx/android/sdk/data/common/data/TextContentType;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    sget-object v2, Lcom/onyx/android/sdk/data/common/data/TextContentType;->UNDEFINED:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    :cond_2
    return-object v2
.end method
