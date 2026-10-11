.class public final Lcom/onyx/android/sdk/ui/wheelview/MessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/ui/wheelview/MessageHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/wheelview/MessageHandler;",
        "Landroid/os/Handler;",
        "Landroid/os/Message;",
        "msg",
        "",
        "handleMessage",
        "Lcom/onyx/android/sdk/ui/wheelview/WheelView;",
        "a",
        "Lcom/onyx/android/sdk/ui/wheelview/WheelView;",
        "wheelView",
        "<init>",
        "(Lcom/onyx/android/sdk/ui/wheelview/WheelView;)V",
        "Companion",
        "sdk-uicommon_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/ui/wheelview/MessageHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WHAT_INVALIDATE_LOOP_VIEW:I = 0x3e8

.field public static final WHAT_ITEM_SELECTED:I = 0xbb8

.field public static final WHAT_SMOOTH_SCROLL:I = 0x7d0


# instance fields
.field public final a:Lcom/onyx/android/sdk/ui/wheelview/WheelView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/ui/wheelview/MessageHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/MessageHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/ui/wheelview/MessageHandler;->Companion:Lcom/onyx/android/sdk/ui/wheelview/MessageHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/ui/wheelview/WheelView;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ui/wheelview/WheelView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "wheelView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/wheelview/MessageHandler;->a:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/MessageHandler;->a:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->onItemSelected()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/MessageHandler;->a:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    sget-object p1, Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;->FLING:Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->smoothScroll(Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/MessageHandler;->a:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method
