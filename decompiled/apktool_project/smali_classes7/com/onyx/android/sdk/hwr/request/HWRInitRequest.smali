.class public final Lcom/onyx/android/sdk/hwr/request/HWRInitRequest;
.super Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest<",
        "Lcom/onyx/android/sdk/hwr/request/HWRInitRequest;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0008\u0010\u0002\u001a\u00020\u0000H\u0016R\"\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/request/HWRInitRequest;",
        "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;",
        "execute",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "b",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "getInput",
        "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "setInput",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V",
        "input",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "bundle",
        "<init>",
        "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public b:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/hwr/request/HWRInitRequest;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-void
.end method


# virtual methods
.method public execute()Lcom/onyx/android/sdk/hwr/request/HWRInitRequest;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/request/HWRInitRequest;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;->getBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;->getBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getRecognizerManager()Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/request/HWRInitRequest;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getRecognizerType()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/hwr/request/HWRInitRequest;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->initRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/request/HWRInitRequest;->execute()Lcom/onyx/android/sdk/hwr/request/HWRInitRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/request/HWRInitRequest;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-object p0
.end method

.method public final setInput(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/request/HWRInitRequest;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-void
.end method
