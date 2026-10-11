.class public final Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0004R\u0014\u0010\u0008\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0004R\u0014\u0010\u000c\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u000e8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u000e8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u000e8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0010R\u0017\u0010\u0018\u001a\u00020\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u001c\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0010\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;",
        "",
        "",
        "CATEGORY_TYPE_ALL",
        "I",
        "CATEGORY_TYPE_RECENT",
        "CATEGORY_TYPE_USER",
        "CATEGORY_TYPE_OFFICIAL",
        "CATEGORY_TYPE_CUSTOM",
        "CATEGORY_TYPE_HOT",
        "CATEGORY_TYPE_MATERIALS",
        "CODE_RESPONSE_SUCCESS",
        "CODE_OBJECT_NOT_FOUND",
        "MAX_UPLOAD_SIZE",
        "",
        "DB_NAME",
        "Ljava/lang/String;",
        "CATEGORY_TYPE_MATERIALS_ID",
        "STICKER_MATERIAL_ADD_ID",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "a",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "getScheduler",
        "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "scheduler",
        "b",
        "getLocalCacheDir",
        "()Ljava/lang/String;",
        "localCacheDir",
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
.field public static final CATEGORY_TYPE_ALL:I = -0x1

.field public static final CATEGORY_TYPE_CUSTOM:I = 0x2

.field public static final CATEGORY_TYPE_HOT:I = 0x3

.field public static final CATEGORY_TYPE_MATERIALS:I = 0x4

.field public static final CATEGORY_TYPE_MATERIALS_ID:Ljava/lang/String; = "category_type_materials"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CATEGORY_TYPE_OFFICIAL:I = 0x1

.field public static final CATEGORY_TYPE_RECENT:I = -0x2

.field public static final CATEGORY_TYPE_USER:I = 0x0

.field public static final CODE_OBJECT_NOT_FOUND:I = 0x1

.field public static final CODE_RESPONSE_SUCCESS:I = 0x0

.field public static final DB_NAME:Ljava/lang/String; = "sticker"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_UPLOAD_SIZE:I = 0x14

.field public static final STICKER_MATERIAL_ADD_ID:Ljava/lang/String; = "sticker_material_add_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;

    sget-object v1, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;

    const-string v2, "Thread-Sticker"

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->newSingleThreadManager$default(Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;Ljava/lang/String;JILjava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;->a:Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAbsolutePath(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sticker"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "get(base, *subpaths)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocalCacheDir()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;->a:Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method
