.class public final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0015\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u000c\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;",
        "",
        "",
        "a",
        "I",
        "getHttpCode",
        "()I",
        "setHttpCode",
        "(I)V",
        "httpCode",
        "",
        "b",
        "Ljava/lang/String;",
        "getCode",
        "()Ljava/lang/String;",
        "setCode",
        "(Ljava/lang/String;)V",
        "code",
        "c",
        "getMessage",
        "setMessage",
        "message",
        "<init>",
        "()V",
        "Companion",
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
.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static e:I


# instance fields
.field public a:I

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError$Companion;

    const-string v0, "A403JE"

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;->d:Ljava/lang/String;

    const/16 v0, 0x190

    sput v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCODE_FILE_ID_NOT_FOUND$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;->e:I

    return v0
.end method

.method public static final synthetic access$getCODE_TOKEN_EXPIRED$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setCODE_FILE_ID_NOT_FOUND$cp(I)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;->e:I

    return-void
.end method

.method public static final synthetic access$setCODE_TOKEN_EXPIRED$cp(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getHttpCode()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;->a:I

    return p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final setCode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;->b:Ljava/lang/String;

    return-void
.end method

.method public final setHttpCode(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;->a:I

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;->c:Ljava/lang/String;

    return-void
.end method
