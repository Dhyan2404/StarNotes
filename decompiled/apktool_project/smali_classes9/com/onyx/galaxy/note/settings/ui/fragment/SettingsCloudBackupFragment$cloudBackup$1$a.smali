.class public final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1;->invoke(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsCloudBackupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsCloudBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1$disposable$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,409:1\n1549#2:410\n1620#2,3:411\n*S KotlinDebug\n*F\n+ 1 SettingsCloudBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1$disposable$1\n*L\n287#1:410\n287#1:411,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSettingsCloudBackupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsCloudBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1$disposable$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,409:1\n1549#2:410\n1620#2,3:411\n*S KotlinDebug\n*F\n+ 1 SettingsCloudBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1$disposable$1\n*L\n287#1:410\n287#1:411,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1$a;->e:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cloudStorageProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1$a;->e:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    invoke-interface {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->setProviders(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1$a;->a(Ljava/util/List;)V

    return-void
.end method
