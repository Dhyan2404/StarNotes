.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPasswordResetViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PasswordResetViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,121:1\n1#2:122\n214#3:123\n*S KotlinDebug\n*F\n+ 1 PasswordResetViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel\n*L\n83#1:123\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008:\u0010;J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002R\"\u0010\u0013\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0017\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u000e\u001a\u0004\u0008\u0015\u0010\u0010\"\u0004\u0008\u0016\u0010\u0012R\"\u0010\u001b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u000e\u001a\u0004\u0008\u0019\u0010\u0010\"\u0004\u0008\u001a\u0010\u0012R%\u0010\"\u001a\u0010\u0012\u000c\u0012\n \u001d*\u0004\u0018\u00010\u00020\u00020\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R%\u0010%\u001a\u0010\u0012\u000c\u0012\n \u001d*\u0004\u0018\u00010\u00020\u00020\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u001f\u001a\u0004\u0008$\u0010!R\"\u0010(\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\"\u0010-\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010\'\u001a\u0004\u0008-\u0010)\"\u0004\u0008.\u0010+R%\u00101\u001a\u0010\u0012\u000c\u0012\n \u001d*\u0004\u0018\u00010\u00020\u00020\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u0010\u001f\u001a\u0004\u00080\u0010!R\u001d\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u0002028\u0006\u00a2\u0006\u000c\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106R\u001d\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u000b028\u0006\u00a2\u0006\u000c\n\u0004\u00088\u00104\u001a\u0004\u00089\u00106\u00a8\u0006<"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "",
        "getTitle",
        "Landroid/view/View;",
        "view",
        "",
        "toggleNewPasswordVisibility",
        "toggleConfirmPasswordVisibility",
        "resetPassword",
        "f",
        "",
        "e",
        "i",
        "Ljava/lang/String;",
        "getPurpose",
        "()Ljava/lang/String;",
        "setPurpose",
        "(Ljava/lang/String;)V",
        "purpose",
        "j",
        "getSocialAccount",
        "setSocialAccount",
        "socialAccount",
        "k",
        "getToken",
        "setToken",
        "token",
        "Landroidx/lifecycle/MutableLiveData;",
        "kotlin.jvm.PlatformType",
        "l",
        "Landroidx/lifecycle/MutableLiveData;",
        "getNewPassword",
        "()Landroidx/lifecycle/MutableLiveData;",
        "newPassword",
        "m",
        "getConfirmPassword",
        "confirmPassword",
        "n",
        "Z",
        "isNewPasswordVisible",
        "()Z",
        "setNewPasswordVisible",
        "(Z)V",
        "o",
        "isConfirmPasswordVisible",
        "setConfirmPasswordVisible",
        "p",
        "getEvents",
        "events",
        "Landroidx/lifecycle/LiveData;",
        "q",
        "Landroidx/lifecycle/LiveData;",
        "getErrorText",
        "()Landroidx/lifecycle/LiveData;",
        "errorText",
        "r",
        "isNextEnabled",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPasswordResetViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PasswordResetViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,121:1\n1#2:122\n214#3:123\n*S KotlinDebug\n*F\n+ 1 PasswordResetViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel\n*L\n83#1:123\n*E\n"
    }
.end annotation


# instance fields
.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Z

.field public o:Z

.field public final p:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    const-string v0, "none"

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->k:Ljava/lang/String;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel$errorText$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel$errorText$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;)V

    invoke-static {v1, v0}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->q:Landroidx/lifecycle/LiveData;

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel$isNextEnabled$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel$isNextEnabled$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->r:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getErrorTips(Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->g(Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;)V

    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "RESET_PASSWORD_SUCCESS"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$string;->user_tip_password_not_same:I

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3, v2, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    return v3

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/String;

    const-string v0, "^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$"

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$string;->user_tip_password_format:I

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3, v2, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    return v3

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/String;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->password_min_length:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    sget p0, Lcom/onyx/galaxy/note/R$string;->user_tip_password_is_null:I

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_2

    sget p0, Lcom/onyx/galaxy/note/R$string;->user_tip_password_is_short:I

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->containCharacter(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget p0, Lcom/onyx/galaxy/note/R$string;->user_tip_password_no_char:I

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->containNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    sget p0, Lcom/onyx/galaxy/note/R$string;->user_tip_password_no_number:I

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget p0, Lcom/onyx/galaxy/note/R$string;->user_tip_password_not_same:I

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p0, ""

    return-object p0
.end method

.method public final getConfirmPassword()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getErrorText()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->q:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final getEvents()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getNewPassword()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getPurpose()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final getSocialAccount()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_prefix_account:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->j:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final isConfirmPasswordVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->o:Z

    return p0
.end method

.method public final isNewPasswordVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->n:Z

    return p0
.end method

.method public final isNextEnabled()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->r:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final resetPassword(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->e()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance p1, Lcom/onyx/android/sdk/data/account/action/PasswordResetAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->k:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Lcom/onyx/android/sdk/data/account/action/PasswordResetAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel$resetPassword$1;->INSTANCE:Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel$resetPassword$1;

    new-instance v2, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->setSkipCloudLogout(Z)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/zyk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zyk;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnComplete(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel$resetPassword$$inlined$handleTimeoutError$1;->INSTANCE:Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel$resetPassword$$inlined$handleTimeoutError$1;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doOnError(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final setConfirmPasswordVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->o:Z

    return-void
.end method

.method public final setNewPasswordVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->n:Z

    return-void
.end method

.method public final setPurpose(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->i:Ljava/lang/String;

    return-void
.end method

.method public final setSocialAccount(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->j:Ljava/lang/String;

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->k:Ljava/lang/String;

    return-void
.end method

.method public final toggleConfirmPasswordVisibility(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->o:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->o:Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "OLD_PASSWORD_VISIBILITY_CHANGED"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final toggleNewPasswordVisibility(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->n:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->n:Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "NEW_PASSWORD_VISIBILITY_CHANGED"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
