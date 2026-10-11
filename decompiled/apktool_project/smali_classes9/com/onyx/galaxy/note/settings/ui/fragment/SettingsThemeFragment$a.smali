.class public final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;->onPaymentThemeChange(Lcom/onyx/android/sdk/pay/event/PaymentThemeEvent;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;

.field public final synthetic f:Lcom/onyx/android/sdk/pay/event/PaymentThemeEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;Lcom/onyx/android/sdk/pay/event/PaymentThemeEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment$a;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;

    iput-object p2, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment$a;->f:Lcom/onyx/android/sdk/pay/event/PaymentThemeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment$a;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;->access$getViewModel(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;)Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->isPaymentEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->setPaymentEnable(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment$a;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;->access$getViewModel(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;)Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->getHasPayment()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->setHasPayment(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment$a;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;->access$getThemeAdapter(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment$a;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;

    invoke-static {v1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;->access$getViewModel(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;)Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->getHasPayment()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;->setHasPayment(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment$a;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;->access$getViewModel(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;)Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->getProductBean()Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->setProductInfoBean(Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment$a;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;->access$getViewModel(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;)Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->isPaymentEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment$a;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;->access$getViewModel(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;)Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->getHasPayment()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/theme/utils/SkinType;->Companion:Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment$a;->f:Lcom/onyx/android/sdk/pay/event/PaymentThemeEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/event/PaymentThemeEvent;->getSkinTypeValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;->getThemeByType(I)Lcom/onyx/android/sdk/theme/utils/SkinType;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/theme/utils/SkinType;->toSkinBean()Lcom/onyx/android/sdk/theme/SkinBean;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment$a;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;->access$setTheme(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;Lcom/onyx/android/sdk/theme/SkinBean;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment$a;->a(Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;)V

    return-void
.end method
