.class public final Lcom/onyx/android/sdk/pay/data/PayArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/data/PayArgs;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getPayType",
        "()Ljava/lang/String;",
        "setPayType",
        "(Ljava/lang/String;)V",
        "payType",
        "Lcom/onyx/android/sdk/pay/data/PayAttachArgs;",
        "b",
        "Lcom/onyx/android/sdk/pay/data/PayAttachArgs;",
        "getAttach",
        "()Lcom/onyx/android/sdk/pay/data/PayAttachArgs;",
        "setAttach",
        "(Lcom/onyx/android/sdk/pay/data/PayAttachArgs;)V",
        "attach",
        "",
        "c",
        "Ljava/lang/Integer;",
        "getQrcodeWidth",
        "()Ljava/lang/Integer;",
        "setQrcodeWidth",
        "(Ljava/lang/Integer;)V",
        "qrcodeWidth",
        "<init>",
        "()V",
        "sdk-pay_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/pay/data/PayAttachArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAttach()Lcom/onyx/android/sdk/pay/data/PayAttachArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/data/PayArgs;->b:Lcom/onyx/android/sdk/pay/data/PayAttachArgs;

    return-object p0
.end method

.method public final getPayType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/data/PayArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getQrcodeWidth()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/data/PayArgs;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setAttach(Lcom/onyx/android/sdk/pay/data/PayAttachArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/pay/data/PayAttachArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/data/PayArgs;->b:Lcom/onyx/android/sdk/pay/data/PayAttachArgs;

    return-void
.end method

.method public final setPayType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/data/PayArgs;->a:Ljava/lang/String;

    return-void
.end method

.method public final setQrcodeWidth(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/data/PayArgs;->c:Ljava/lang/Integer;

    return-void
.end method
