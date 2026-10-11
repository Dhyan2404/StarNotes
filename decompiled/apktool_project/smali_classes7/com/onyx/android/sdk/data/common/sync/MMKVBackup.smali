.class public final Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0012\u001a\u00020\u000eJ\u0006\u0010\u0013\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u000eJ\u0006\u0010\u0015\u001a\u00020\u0010J\u0006\u0010\u0016\u001a\u00020\u0010J\u0006\u0010\u0017\u001a\u00020\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;",
        "",
        "()V",
        "SETTING_CLOUD_BACKUP_IS_AUTO",
        "",
        "SETTING_CLOUD_BACKUP_IS_WIFI_ONLY",
        "SETTING_CLOUD_BACKUP_LAST_TIME",
        "SETTING_CLOUD_SYNC_IS_AUTO",
        "SETTING_CLOUD_SYNC_IS_WIFI_ONLY",
        "SETTING_CLOUD_SYNC_LAST_TIME",
        "SETTING_LOCAL_BACKUP_IS_AUTO",
        "SETTING_LOCAL_BACKUP_IS_INTERNAL_STORAGE",
        "SETTING_LOCAL_BACKUP_LAST_TIME",
        "getBackupPathOption",
        "Lcom/onyx/android/sdk/data/utils/StringOption;",
        "getCloudAutoSyncOption",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "getCloudBackupAutoOption",
        "getCloudBackupLastTime",
        "getCloudBackupWifiOnlyOption",
        "getCloudSyncLastTime",
        "getCloudSyncWifiOnlyOption",
        "getLocalBackupAutoOption",
        "getLocalBackupLastTime",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SETTING_CLOUD_BACKUP_IS_AUTO:Ljava/lang/String; = "setting_cloud_backup_is_auto"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SETTING_CLOUD_BACKUP_IS_WIFI_ONLY:Ljava/lang/String; = "setting_cloud_backup_is_wifi_only"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SETTING_CLOUD_BACKUP_LAST_TIME:Ljava/lang/String; = "setting_cloud_backup_last_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SETTING_CLOUD_SYNC_IS_AUTO:Ljava/lang/String; = "setting_cloud_is_auto_sync"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SETTING_CLOUD_SYNC_IS_WIFI_ONLY:Ljava/lang/String; = "setting_cloud_sync_is_wifi_only"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SETTING_CLOUD_SYNC_LAST_TIME:Ljava/lang/String; = "setting_cloud_sync_last_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SETTING_LOCAL_BACKUP_IS_AUTO:Ljava/lang/String; = "setting_local_backup_is_auto"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SETTING_LOCAL_BACKUP_IS_INTERNAL_STORAGE:Ljava/lang/String; = "setting_local_backup_is_internal_storage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SETTING_LOCAL_BACKUP_LAST_TIME:Ljava/lang/String; = "setting_local_backup_last_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBackupPathOption()Lcom/onyx/android/sdk/data/utils/StringOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "setting_local_backup_is_internal_storage"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->stringOption(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object p0

    return-object p0
.end method

.method public final getCloudAutoSyncOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "setting_cloud_is_auto_sync"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getCloudBackupAutoOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "setting_cloud_backup_is_auto"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getCloudBackupLastTime()Lcom/onyx/android/sdk/data/utils/StringOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    const-string v1, "setting_cloud_backup_last_time"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getUserMMKVKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->stringOption(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object p0

    return-object p0
.end method

.method public final getCloudBackupWifiOnlyOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "setting_cloud_backup_is_wifi_only"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getCloudSyncLastTime()Lcom/onyx/android/sdk/data/utils/StringOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    const-string v1, "setting_cloud_sync_last_time"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getUserMMKVKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->stringOption(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object p0

    return-object p0
.end method

.method public final getCloudSyncWifiOnlyOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "setting_cloud_sync_is_wifi_only"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getLocalBackupAutoOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "setting_local_backup_is_auto"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getLocalBackupLastTime()Lcom/onyx/android/sdk/data/utils/StringOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    const-string v1, "setting_local_backup_last_time"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getUserMMKVKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->stringOption(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object p0

    return-object p0
.end method
