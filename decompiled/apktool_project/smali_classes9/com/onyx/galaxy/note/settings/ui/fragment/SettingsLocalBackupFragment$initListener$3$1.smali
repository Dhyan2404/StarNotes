.class public final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$initListener$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;->z0()V
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


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$initListener$3$1;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->Companion:Lcom/onyx/android/sdk/filepicker/FilePickerBuilder$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder$Companion;->getInstance()Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/galaxy/note/utils/FilePickerExtKt;->setCommonConfig(Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->onlyNote()Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object p1

    sget v0, Lcom/onyx/galaxy/note/R$string;->import_backup:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->setTitle(I)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->multiEnable(Z)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/onyx/android/sdk/universal/ui/data/BackupFilePaths;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/BackupFilePaths;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/ui/data/BackupFilePaths;->getBackupDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->setPickerFilesDir(Ljava/io/File;)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->enableFilterDocType(Z)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/filepicker/FilePickerUtils;->INSTANCE:Lcom/onyx/android/sdk/filepicker/FilePickerUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/FilePickerUtils;->importLocalBackupMaxCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->setMaxSelectCount(I)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$initListener$3$1;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;

    const/4 v3, 0x0

    const/16 v4, 0x7da

    new-instance v5, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$initListener$3$1$1;

    invoke-direct {v5, v2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$initListener$3$1$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->pickFile$default(Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;Landroidx/fragment/app/Fragment;ZILkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$initListener$3$1;->a(Z)V

    return-void
.end method
