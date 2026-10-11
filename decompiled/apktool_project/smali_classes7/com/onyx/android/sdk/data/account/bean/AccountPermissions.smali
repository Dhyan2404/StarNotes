.class public final Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountPermissions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountPermissions.kt\ncom/onyx/android/sdk/data/account/bean/AccountPermissions\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,32:1\n288#2,2:33\n*S KotlinDebug\n*F\n+ 1 AccountPermissions.kt\ncom/onyx/android/sdk/data/account/bean/AccountPermissions\n*L\n22#1:33,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0007\u001a\u0004\u0018\u00010\u0008*\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004H\u0002J\u0012\u0010\r\u001a\u00020\u000e*\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tJ\u001a\u0010\u000f\u001a\u00020\u000e*\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\u000e*\u0004\u0018\u00010\u0008H\u0002J\u000e\u0010\u0011\u001a\u00020\u000e*\u0004\u0018\u00010\u0008H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;",
        "",
        "()V",
        "KEY_MODULE_CLOUD",
        "",
        "KEY_MODULE_LOGIN",
        "KEY_MODULE_SYNC",
        "getPermissionOperate",
        "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;",
        "",
        "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;",
        "module",
        "subModule",
        "hasCloudSyncPermission",
        "",
        "hasLoginPermission",
        "hasReadPermission",
        "hasWritePermission",
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
        "SMAP\nAccountPermissions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountPermissions.kt\ncom/onyx/android/sdk/data/account/bean/AccountPermissions\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,32:1\n288#2,2:33\n*S KotlinDebug\n*F\n+ 1 AccountPermissions.kt\ncom/onyx/android/sdk/data/account/bean/AccountPermissions\n*L\n22#1:33,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_MODULE_CLOUD:Ljava/lang/String; = "cloud"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_MODULE_LOGIN:Ljava/lang/String; = "login"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_MODULE_SYNC:Ljava/lang/String; = "sync"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;->INSTANCE:Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getPermissionOperate(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->getModule()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->getSubModule()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast v0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->getPermission()Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static synthetic getPermissionOperate$default(Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-string p3, ""

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;->getPermissionOperate(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;

    move-result-object p0

    return-object p0
.end method

.method private final hasReadPermission(Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;->getRead()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method private final hasWritePermission(Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;->getWrite()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method


# virtual methods
.method public final hasCloudSyncPermission(Ljava/util/List;)Z
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "cloud"

    const-string v1, "sync"

    invoke-direct {p0, p1, v0, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;->getPermissionOperate(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;->hasWritePermission(Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;)Z

    move-result p0

    return p0
.end method

.method public final hasLoginPermission(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "subModule"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "login"

    invoke-direct {p0, p1, v0, p2}, Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;->getPermissionOperate(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;->hasWritePermission(Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;)Z

    move-result p0

    return p0
.end method
