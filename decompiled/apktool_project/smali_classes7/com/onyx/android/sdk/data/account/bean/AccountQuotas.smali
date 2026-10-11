.class public final Lcom/onyx/android/sdk/data/account/bean/AccountQuotas;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u0013*\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0004J\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0017*\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004J\u001c\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u001a*\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/AccountQuotas;",
        "",
        "()V",
        "KEY_QUOTAS_AUDIO_RECORD",
        "",
        "KEY_QUOTAS_NLP",
        "KEY_QUOTAS_NOTE_CREATE",
        "KEY_QUOTAS_PAGE_OCR",
        "KEY_QUOTAS_SUB_BAIDU_TRANSLATE",
        "KEY_QUOTAS_SUB_BING_TRANSLATE",
        "KEY_QUOTAS_SUB_FEISHU_NLP",
        "KEY_QUOTAS_SUB_FEISHU_PAGE_OCR",
        "KEY_QUOTAS_SUB_FEISHU_TRANSLATE",
        "KEY_QUOTAS_SUB_OSS_AUDIO_RECORD",
        "KEY_QUOTAS_SUB_PAGE_OCR",
        "KEY_QUOTAS_TRANSLATE",
        "SUB_KEY_QUOTAS_AUDIO_RECORD",
        "SUB_KEY_QUOTAS_NOTE_CREATE",
        "getAccountQuotaItem",
        "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItem;",
        "Lcom/onyx/android/sdk/data/account/bean/AccountQuota;",
        "category",
        "getAccountQuotaSubItem",
        "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;",
        "subCategory",
        "getAccountQuotaSubItems",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/account/bean/AccountQuotas;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_QUOTAS_AUDIO_RECORD:Ljava/lang/String; = "audioRecord"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_QUOTAS_NLP:Ljava/lang/String; = "NLP"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_QUOTAS_NOTE_CREATE:Ljava/lang/String; = "notebook"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_QUOTAS_PAGE_OCR:Ljava/lang/String; = "pageOcr"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_QUOTAS_SUB_BAIDU_TRANSLATE:Ljava/lang/String; = "baiduTranslate"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_QUOTAS_SUB_BING_TRANSLATE:Ljava/lang/String; = "bingTranslate"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_QUOTAS_SUB_FEISHU_NLP:Ljava/lang/String; = "feishuNLP"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_QUOTAS_SUB_FEISHU_PAGE_OCR:Ljava/lang/String; = "feishuPageOcr"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_QUOTAS_SUB_FEISHU_TRANSLATE:Ljava/lang/String; = "feishuTranslate"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_QUOTAS_SUB_OSS_AUDIO_RECORD:Ljava/lang/String; = "ossAudioRecord"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_QUOTAS_SUB_PAGE_OCR:Ljava/lang/String; = "pageOcr"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_QUOTAS_TRANSLATE:Ljava/lang/String; = "translate"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SUB_KEY_QUOTAS_AUDIO_RECORD:Ljava/lang/String; = "normalAudioRecord"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SUB_KEY_QUOTAS_NOTE_CREATE:Ljava/lang/String; = "normalNotebook"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotas;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotas;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotas;->INSTANCE:Lcom/onyx/android/sdk/data/account/bean/AccountQuotas;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccountQuotaItem(Lcom/onyx/android/sdk/data/account/bean/AccountQuota;Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItem;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountQuota;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "category"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountQuota;->getQuotaMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItem;

    return-object p0
.end method

.method public final getAccountQuotaSubItem(Lcom/onyx/android/sdk/data/account/bean/AccountQuota;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountQuota;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "category"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subCategory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotas;->getAccountQuotaItem(Lcom/onyx/android/sdk/data/account/bean/AccountQuota;Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItem;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItem;->getSubItemMap()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;

    :cond_1
    return-object v0
.end method

.method public final getAccountQuotaSubItems(Lcom/onyx/android/sdk/data/account/bean/AccountQuota;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountQuota;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/AccountQuota;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "category"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotas;->getAccountQuotaItem(Lcom/onyx/android/sdk/data/account/bean/AccountQuota;Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItem;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItem;->getSubItemMap()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method
