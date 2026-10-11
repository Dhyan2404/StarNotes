.class public final Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult;
.super Lcom/onyx/android/sdk/data/common/data/ResultCode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$Companion;,
        Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \t2\u00020\u0001:\u0002\t\nB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult;",
        "Lcom/onyx/android/sdk/data/common/data/ResultCode;",
        "()V",
        "data",
        "Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;",
        "getData",
        "()Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;",
        "setData",
        "(Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;)V",
        "Companion",
        "OSSToken",
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
.field public static final Companion:Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private data:Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult;->Companion:Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;-><init>()V

    return-void
.end method


# virtual methods
.method public final getData()Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult;->data:Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;

    return-object p0
.end method

.method public final setData(Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult;->data:Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;

    return-void
.end method
