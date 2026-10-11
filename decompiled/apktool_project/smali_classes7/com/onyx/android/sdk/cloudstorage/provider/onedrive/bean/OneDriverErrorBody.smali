.class public Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Companion;,
        Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$CompatibleError;,
        Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Error;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 \t2\u00020\u0001:\u0003\t\n\u000bB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody;",
        "Ljava/io/Serializable;",
        "()V",
        "error",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Error;",
        "getError",
        "()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Error;",
        "setError",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Error;)V",
        "Companion",
        "CompatibleError",
        "Error",
        "sdk-cloudstorage_release"
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
.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NOT_OPERATION_SUPPORT:Ljava/lang/String; = "notSupported"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private error:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Error;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getError()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Error;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody;->error:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Error;

    return-object p0
.end method

.method public final setError(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Error;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Error;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody;->error:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Error;

    return-void
.end method
