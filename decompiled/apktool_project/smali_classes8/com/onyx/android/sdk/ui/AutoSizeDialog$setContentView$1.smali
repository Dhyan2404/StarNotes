.class final Lcom/onyx/android/sdk/ui/AutoSizeDialog$setContentView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/ui/AutoSizeDialog;->setContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/graphics/Rect;",
        "Landroid/graphics/Rect;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "newRect",
        "Landroid/graphics/Rect;",
        "oldRect",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/ui/AutoSizeDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/ui/AutoSizeDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/AutoSizeDialog$setContentView$1;->this$0:Lcom/onyx/android/sdk/ui/AutoSizeDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Rect;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/ui/AutoSizeDialog$setContentView$1;->invoke(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget-object p2, p0, Lcom/onyx/android/sdk/ui/AutoSizeDialog$setContentView$1;->this$0:Lcom/onyx/android/sdk/ui/AutoSizeDialog;

    invoke-static {p2}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->access$getAutoFitTimerKey$p(Lcom/onyx/android/sdk/ui/AutoSizeDialog;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    .line 4
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/AutoSizeDialog$setContentView$1;->this$0:Lcom/onyx/android/sdk/ui/AutoSizeDialog;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Lcom/onyx/android/sdk/ui/AutoSizeDialog$setContentView$1$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog$setContentView$1$1;-><init>(Lcom/onyx/android/sdk/ui/AutoSizeDialog;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2, p2, v0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->access$setAutoFitTimerKey$p(Lcom/onyx/android/sdk/ui/AutoSizeDialog;I)V

    :cond_0
    return-void
.end method
