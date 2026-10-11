.class public final Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/BiFunction;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel$a;->e:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;Lcom/onyx/galaxy/note/editor/action/theme/UserThemeRequestAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/action/theme/UserThemeRequestAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paymentResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userThemeResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel$a;->e:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->access$combinedResult(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;Lcom/onyx/galaxy/note/editor/action/theme/UserThemeRequestAction;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;

    check-cast p2, Lcom/onyx/galaxy/note/editor/action/theme/UserThemeRequestAction;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel$a;->a(Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;Lcom/onyx/galaxy/note/editor/action/theme/UserThemeRequestAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
