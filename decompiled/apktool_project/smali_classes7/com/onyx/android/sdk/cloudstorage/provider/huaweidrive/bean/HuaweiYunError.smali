.class public final Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Companion;,
        Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 \u00142\u00020\u0001:\u0002\u0014\u0015B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError;",
        "",
        "",
        "a",
        "I",
        "getHttpCode",
        "()I",
        "setHttpCode",
        "(I)V",
        "httpCode",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error;",
        "b",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error;",
        "getError",
        "()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error;",
        "setError",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error;)V",
        "error",
        "<init>",
        "()V",
        "Companion",
        "Error",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final CODE_FILE_ID_NOT_FOUND:I = 0x190

.field public static final CODE_FOLDER_CONFLICTED:I = 0x193

.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getError()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError;->b:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error;

    return-object p0
.end method

.method public final getHttpCode()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError;->a:I

    return p0
.end method

.method public final setError(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError;->b:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error;

    return-void
.end method

.method public final setHttpCode(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError;->a:I

    return-void
.end method
