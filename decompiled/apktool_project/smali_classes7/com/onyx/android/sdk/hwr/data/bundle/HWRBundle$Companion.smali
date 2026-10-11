.class public final Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle$Companion;",
        "",
        "()V",
        "Empty",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "getEmpty",
        "()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "setEmpty",
        "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V",
        "sdk-hwr_release"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmpty()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->access$getEmpty$cp()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object p0

    return-object p0
.end method

.method public final setEmpty(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->access$setEmpty$cp(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V

    return-void
.end method
