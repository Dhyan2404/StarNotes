.class public final Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$initFeatureResourceAdapter$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->C0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$initFeatureResourceAdapter$1",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "onPageSelected",
        "",
        "position",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$initFeatureResourceAdapter$1;->a:Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$initFeatureResourceAdapter$1;->a:Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->access$getBinding$p(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->chargeIndicator:Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->updateSelectedIndex(I)V

    return-void
.end method
