.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;->e(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
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
    value = "SMAP\nMicrosoftVerifyViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MicrosoftVerifyViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$logOffMicrosoft$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1#2:105\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMicrosoftVerifyViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MicrosoftVerifyViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$logOffMicrosoft$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1#2:105\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$b;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$b;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$b;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "t"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method
