.class public final Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;",
        "",
        "Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;",
        "a",
        "Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;",
        "getStickerApi",
        "()Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;",
        "stickerApi",
        "Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;",
        "b",
        "Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;",
        "getStickerCategoryApi",
        "()Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;",
        "stickerCategoryApi",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v1, Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;

    sput-object v1, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->a:Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;

    const-class v1, Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;

    sput-object v0, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->b:Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStickerApi()Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->a:Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;

    return-object p0
.end method

.method public final getStickerCategoryApi()Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->b:Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;

    return-object p0
.end method
