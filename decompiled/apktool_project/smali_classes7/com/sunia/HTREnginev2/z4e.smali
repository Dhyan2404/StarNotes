.class public final synthetic Lcom/sunia/HTREnginev2/z4e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/device/CommonBaseDevice;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/device/CommonBaseDevice;Landroid/app/Activity;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/z4e;->a:Lcom/onyx/android/sdk/device/CommonBaseDevice;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/z4e;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/z4e;->c:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/z4e;->a:Lcom/onyx/android/sdk/device/CommonBaseDevice;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/z4e;->b:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/z4e;->c:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->a(Lcom/onyx/android/sdk/device/CommonBaseDevice;Landroid/app/Activity;Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
