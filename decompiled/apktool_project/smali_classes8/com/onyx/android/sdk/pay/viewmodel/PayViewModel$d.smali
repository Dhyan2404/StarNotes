.class public final Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->o(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$d<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$d;

    invoke-direct {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$d;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$d;->e:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/pay/action/CreateQRCodeAction;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/pay/action/CreateQRCodeAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/pay/action/CreateQRCodeAction;",
            ")",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "bitmap"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/action/CreateQRCodeAction;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->setData(Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/pay/action/CreateQRCodeAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$d;->a(Lcom/onyx/android/sdk/pay/action/CreateQRCodeAction;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object p0

    return-object p0
.end method
