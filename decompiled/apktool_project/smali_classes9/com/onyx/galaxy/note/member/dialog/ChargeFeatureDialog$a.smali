.class public final Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->K0(Lcom/onyx/galaxy/note/member/data/ChargeProduct;)V
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
    value = "SMAP\nChargeFeatureDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChargeFeatureDialog.kt\ncom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$loadProductInfo$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,383:1\n256#2,2:384\n*S KotlinDebug\n*F\n+ 1 ChargeFeatureDialog.kt\ncom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$loadProductInfo$1\n*L\n261#1:384,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nChargeFeatureDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChargeFeatureDialog.kt\ncom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$loadProductInfo$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,383:1\n256#2,2:384\n*S KotlinDebug\n*F\n+ 1 ChargeFeatureDialog.kt\ncom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$loadProductInfo$1\n*L\n261#1:384,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$a;->e:Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$a;->e:Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;

    invoke-static {p1}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->access$getBinding$p(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->tvActive:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v2, "tvActive"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$a;->e:Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->access$getBinding$p(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    iget-object p0, v0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->tvFinalAmount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget p1, Lcom/onyx/galaxy/note/R$string;->failed_to_get_product_info:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$a;->e:Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->access$getBinding$p(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, p0

    :goto_1
    iget-object p0, v0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->tvFinalAmount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;->getFinalAmount()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$a;->a(Ljava/util/List;)V

    return-void
.end method
