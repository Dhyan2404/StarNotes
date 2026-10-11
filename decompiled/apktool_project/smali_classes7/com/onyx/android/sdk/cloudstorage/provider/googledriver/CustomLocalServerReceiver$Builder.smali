.class public final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0004J\u001a\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u000bR\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0007R\u001e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;",
        "",
        "()V",
        "<set-?>",
        "",
        "callbackPath",
        "getCallbackPath",
        "()Ljava/lang/String;",
        "failureLandingPageUrl",
        "host",
        "getHost",
        "",
        "port",
        "getPort",
        "()I",
        "successLandingPageUrl",
        "build",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;",
        "setCallbackPath",
        "setHost",
        "setLandingPages",
        "setPort",
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


# instance fields
.field private callbackPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private failureLandingPageUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private host:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private port:I

.field private successLandingPageUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "localhost"

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;->host:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;->port:I

    const-string v0, "/Callback"

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;->callbackPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;->host:Ljava/lang/String;

    iget v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;->port:I

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;->callbackPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;->successLandingPageUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;->failureLandingPageUrl:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public final getCallbackPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;->callbackPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;->host:Ljava/lang/String;

    return-object p0
.end method

.method public final getPort()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;->port:I

    return p0
.end method

.method public final setCallbackPath(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "callbackPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;->callbackPath:Ljava/lang/String;

    return-object p0
.end method

.method public final setHost(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;->host:Ljava/lang/String;

    return-object p0
.end method

.method public final setLandingPages(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;->successLandingPageUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;->failureLandingPageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setPort(I)Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;->port:I

    return-object p0
.end method
