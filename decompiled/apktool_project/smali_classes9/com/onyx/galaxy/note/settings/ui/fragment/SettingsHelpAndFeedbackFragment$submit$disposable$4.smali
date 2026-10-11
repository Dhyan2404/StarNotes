.class final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$submit$disposable$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->M0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/base/common/error/OnyxException;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/base/common/error/OnyxException;",
        "invoke",
        "(Lcom/onyx/android/sdk/base/common/error/OnyxException;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$submit$disposable$4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$submit$disposable$4;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$submit$disposable$4;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$submit$disposable$4;->INSTANCE:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$submit$disposable$4;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/base/common/error/OnyxException;)Ljava/lang/Boolean;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/common/error/OnyxException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException;->getType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Undefined"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->feedback_submit_error:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    .line 4
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/base/common/error/OnyxException;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$submit$disposable$4;->invoke(Lcom/onyx/android/sdk/base/common/error/OnyxException;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
