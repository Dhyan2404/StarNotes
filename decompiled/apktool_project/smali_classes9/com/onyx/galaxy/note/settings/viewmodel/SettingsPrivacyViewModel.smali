.class public final Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008*\u0010+J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\u0004J\u0006\u0010\u000c\u001a\u00020\u0004R\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u000f\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u000f\u001a\u0004\u0008\u001a\u0010\u001bR%\u0010#\u001a\u0010\u0012\u000c\u0012\n \u001e*\u0004\u0018\u00010\u00020\u00020\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R%\u0010&\u001a\u0010\u0012\u000c\u0012\n \u001e*\u0004\u0018\u00010\u00020\u00020\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010 \u001a\u0004\u0008%\u0010\"R%\u0010)\u001a\u0010\u0012\u000c\u0012\n \u001e*\u0004\u0018\u00010\u00070\u00070\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010 \u001a\u0004\u0008(\u0010\"\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "",
        "enable",
        "",
        "configureNoteFingerLock",
        "configureNoteEncryption",
        "",
        "interval",
        "configureNoteEncryptionInterval",
        "deleteNotePassword",
        "clearNoteLock",
        "onChangeNotePassword",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "i",
        "Lkotlin/Lazy;",
        "d",
        "()Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "noteFingerLockPasswordOption",
        "Lcom/onyx/android/sdk/data/utils/IntOption;",
        "j",
        "e",
        "()Lcom/onyx/android/sdk/data/utils/IntOption;",
        "noteIdleAutoLockIntervalOption",
        "Lcom/onyx/android/sdk/data/utils/StringOption;",
        "k",
        "f",
        "()Lcom/onyx/android/sdk/data/utils/StringOption;",
        "noteLockPasswordOption",
        "Landroidx/lifecycle/MutableLiveData;",
        "kotlin.jvm.PlatformType",
        "l",
        "Landroidx/lifecycle/MutableLiveData;",
        "getEnableNoteEncryption",
        "()Landroidx/lifecycle/MutableLiveData;",
        "enableNoteEncryption",
        "m",
        "getEnableNoteFingerLock",
        "enableNoteFingerLock",
        "n",
        "getNoteIdleAutoLockInterval",
        "noteIdleAutoLockInterval",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final i:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel$noteFingerLockPasswordOption$2;->INSTANCE:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel$noteFingerLockPasswordOption$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->i:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel$noteIdleAutoLockIntervalOption$2;->INSTANCE:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel$noteIdleAutoLockIntervalOption$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->j:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel$noteLockPasswordOption$2;->INSTANCE:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel$noteLockPasswordOption$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->k:Lkotlin/Lazy;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->f()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->d()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->e()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final clearNoteLock()V
    .locals 6

    new-instance v0, Lcom/onyx/galaxy/note/category/action/UpdateAllLockedNotePasswordAction;

    const/4 p0, 0x0

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/action/UpdateAllLockedNotePasswordAction;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final configureNoteEncryption(Z)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->configureNoteEncryptionInterval(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->configureNoteFingerLock(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->deleteNotePassword()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->clearNoteLock()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->d()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final configureNoteEncryptionInterval(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->e()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->put(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->INSTANCE:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->updateReLockTaskTime()V

    return-void
.end method

.method public final configureNoteFingerLock(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->d()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final d()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    return-object p0
.end method

.method public final deleteNotePassword()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->f()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    return-void
.end method

.method public final e()Lcom/onyx/android/sdk/data/utils/IntOption;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->j:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/utils/IntOption;

    return-object p0
.end method

.method public final f()Lcom/onyx/android/sdk/data/utils/StringOption;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->k:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/utils/StringOption;

    return-object p0
.end method

.method public final getEnableNoteEncryption()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getEnableNoteFingerLock()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getNoteIdleAutoLockInterval()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final onChangeNotePassword()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->d()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
