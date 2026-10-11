.class public final Lcom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1;
.super Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/ui/NameEditDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNameEditDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NameEditDialog.kt\ncom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,205:1\n262#2,2:206\n*S KotlinDebug\n*F\n+ 1 NameEditDialog.kt\ncom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1\n*L\n26#1:206,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/android/sdk/ui/NameEditDialog$timerObserver$1",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "onNext",
        "",
        "t",
        "",
        "sdk-ui_overseasRelease"
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
        "SMAP\nNameEditDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NameEditDialog.kt\ncom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,205:1\n262#2,2:206\n*S KotlinDebug\n*F\n+ 1 NameEditDialog.kt\ncom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1\n*L\n26#1:206,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/ui/NameEditDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/ui/NameEditDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1;->e:Lcom/onyx/android/sdk/ui/NameEditDialog;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(J)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1;->e:Lcom/onyx/android/sdk/ui/NameEditDialog;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tvErrorTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1;->e:Lcom/onyx/android/sdk/ui/NameEditDialog;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tvErrorTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string p1, "tvErrorTips"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1;->onNext(J)V

    return-void
.end method
