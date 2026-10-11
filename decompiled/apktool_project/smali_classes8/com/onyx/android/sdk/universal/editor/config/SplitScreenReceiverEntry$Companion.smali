.class public final Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010!\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\n\u0010\u0006R\u001b\u0010\u000c\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0008\u001a\u0004\u0008\r\u0010\u0006R\u001b\u0010\u000f\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0006R!\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0008\u001a\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u0017\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0008\u001a\u0004\u0008\u0018\u0010\u0006\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry$Companion;",
        "",
        "()V",
        "bottomReceiver",
        "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;",
        "getBottomReceiver",
        "()Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;",
        "bottomReceiver$delegate",
        "Lkotlin/Lazy;",
        "fullReceiver",
        "getFullReceiver",
        "fullReceiver$delegate",
        "leftReceiver",
        "getLeftReceiver",
        "leftReceiver$delegate",
        "rightReceiver",
        "getRightReceiver",
        "rightReceiver$delegate",
        "splitScreenReceiverEntryList",
        "",
        "getSplitScreenReceiverEntryList",
        "()Ljava/util/List;",
        "splitScreenReceiverEntryList$delegate",
        "topReceiver",
        "getTopReceiver",
        "topReceiver$delegate",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBottomReceiver()Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;->access$getBottomReceiver$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;

    return-object p0
.end method

.method public final getFullReceiver()Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;->access$getFullReceiver$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;

    return-object p0
.end method

.method public final getLeftReceiver()Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;->access$getLeftReceiver$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;

    return-object p0
.end method

.method public final getRightReceiver()Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;->access$getRightReceiver$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;

    return-object p0
.end method

.method public final getSplitScreenReceiverEntryList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;->access$getSplitScreenReceiverEntryList$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getTopReceiver()Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;->access$getTopReceiver$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;

    return-object p0
.end method
