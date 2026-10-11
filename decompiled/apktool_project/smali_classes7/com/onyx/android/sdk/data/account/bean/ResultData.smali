.class public final Lcom/onyx/android/sdk/data/account/bean/ResultData;
.super Lcom/onyx/android/sdk/data/common/data/ResultCode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/account/bean/ResultData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/onyx/android/sdk/data/common/data/ResultCode;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 \r*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\rB\u0007\u0008\u0017\u00a2\u0006\u0002\u0010\u0003B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0005B\u000f\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0007R\u001e\u0010\u0008\u001a\u0004\u0018\u00018\u0000X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000c\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u0005\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/ResultData;",
        "T",
        "Lcom/onyx/android/sdk/data/common/data/ResultCode;",
        "()V",
        "t",
        "(Ljava/lang/Object;)V",
        "resultCode",
        "(Lcom/onyx/android/sdk/data/common/data/ResultCode;)V",
        "data",
        "getData",
        "()Ljava/lang/Object;",
        "setData",
        "Ljava/lang/Object;",
        "Companion",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/data/account/bean/ResultData$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/ResultData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/ResultData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/account/bean/ResultData;->Companion:Lcom/onyx/android/sdk/data/account/bean/ResultData$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONCreator;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/data/common/data/ResultCode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/data/ResultCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "resultCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setMessage(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setCode(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/ResultData;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/ResultData;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public final setData(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/ResultData;->data:Ljava/lang/Object;

    return-void
.end method
