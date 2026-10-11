.class public final Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;
.super Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent<",
        "Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0010\u0003\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 *2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001*B\u0007\u00a2\u0006\u0004\u0008(\u0010)J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR$\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0018\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0008\u001a\u0004\u0008\u0016\u0010\n\"\u0004\u0008\u0017\u0010\u000cR$\u0010\u0007\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\"\u0010\'\u001a\u00020 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;",
        "Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;",
        "",
        "isComplete",
        "",
        "info",
        "",
        "e",
        "I",
        "getStatus",
        "()I",
        "setStatus",
        "(I)V",
        "status",
        "f",
        "Ljava/lang/String;",
        "getUrl",
        "()Ljava/lang/String;",
        "setUrl",
        "(Ljava/lang/String;)V",
        "url",
        "g",
        "getProgress",
        "setProgress",
        "progress",
        "",
        "h",
        "Ljava/lang/Throwable;",
        "getE",
        "()Ljava/lang/Throwable;",
        "setE",
        "(Ljava/lang/Throwable;)V",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "i",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "getResource",
        "()Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "setResource",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V",
        "resource",
        "<init>",
        "()V",
        "Companion",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DOWNLOAD_STATUS_COMPLETE:I = 0x3

.field public static final DOWNLOAD_STATUS_ERROR:I = 0x4

.field public static final DOWNLOAD_STATUS_NOT_START:I = 0x0

.field public static final DOWNLOAD_STATUS_PROGRESS:I = 0x1

.field public static final DOWNLOAD_STATUS_UNZIP:I = 0x2


# instance fields
.field public e:I

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:I

.field public h:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->Companion:Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->i:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    return-void
.end method


# virtual methods
.method public final getE()Ljava/lang/Throwable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->h:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final getProgress()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->g:I

    return p0
.end method

.method public final getResource()Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->i:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->e:I

    return p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final info()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->h:Ljava/lang/Throwable;

    const/16 v1, 0x20

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->i:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->g:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x25

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->i:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->h:Ljava/lang/Throwable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isComplete()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->e:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setE(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->h:Ljava/lang/Throwable;

    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->g:I

    return-void
.end method

.method public final setResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->i:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->e:I

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->f:Ljava/lang/String;

    return-void
.end method
