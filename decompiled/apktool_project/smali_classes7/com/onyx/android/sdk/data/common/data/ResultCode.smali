.class public Lcom/onyx/android/sdk/data/common/data/ResultCode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/common/data/ResultCode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0016\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007\u0008\u0017\u00a2\u0006\u0002\u0010\u0002B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0014\u001a\u00020\u0006H\u0016R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000eR \u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/data/ResultCode;",
        "Ljava/io/Serializable;",
        "()V",
        "code",
        "",
        "message",
        "",
        "(ILjava/lang/String;)V",
        "getCode",
        "()I",
        "setCode",
        "(I)V",
        "isSuccessful",
        "",
        "()Z",
        "isTokenInvalid",
        "getMessage",
        "()Ljava/lang/String;",
        "setMessage",
        "(Ljava/lang/String;)V",
        "toString",
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
.field public static final CLOUD_SPACE_NOT_ENOUGH:I = 0x2810758

.field public static final CODE:Ljava/lang/String; = "code"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CODE_FAIL:I = -0x1

.field public static final CODE_SUCCESS:I = 0x0

.field public static final Companion:Lcom/onyx/android/sdk/data/common/data/ResultCode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEVICE_NOT_FOUND:I = 0x1e848e

.field public static final EMAIL_ADDRESS_ERROR:I = 0x28105e9

.field public static final MESSAGE:Ljava/lang/String; = "message"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SERVER_ERROR:I = 0x2faf081

.field public static final SESSION_TOKEN_INVALID:I = 0x281059b

.field public static final SESSION_TOKEN_MISSING:I = 0x281059a

.field public static final VERIFICATION_CODE_EXPIRED:I = 0x18e72

.field public static final VERIFICATION_CODE_INVALIDED:I = 0x18e71


# instance fields
.field private code:I
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "result_code",
            "ret"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/ResultCode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/data/ResultCode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/common/data/ResultCode;->Companion:Lcom/onyx/android/sdk/data/common/data/ResultCode$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONCreator;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/data/common/data/ResultCode;->code:I

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/data/common/data/ResultCode;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/common/data/ResultCode;->code:I

    return p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/ResultCode;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final isSuccessful()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/ResultCode;->Companion:Lcom/onyx/android/sdk/data/common/data/ResultCode$Companion;

    iget p0, p0, Lcom/onyx/android/sdk/data/common/data/ResultCode;->code:I

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode$Companion;->isSuccessful(I)Z

    move-result p0

    return p0
.end method

.method public final isTokenInvalid()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/ResultCode;->Companion:Lcom/onyx/android/sdk/data/common/data/ResultCode$Companion;

    iget p0, p0, Lcom/onyx/android/sdk/data/common/data/ResultCode;->code:I

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode$Companion;->isTokenInvalid(I)Z

    move-result p0

    return p0
.end method

.method public final setCode(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/common/data/ResultCode;->code:I

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/ResultCode;->message:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultCode{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/data/common/data/ResultCode;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/ResultCode;->message:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
