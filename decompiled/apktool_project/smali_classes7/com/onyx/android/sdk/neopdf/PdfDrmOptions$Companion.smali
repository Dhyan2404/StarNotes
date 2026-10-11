.class public final Lcom/onyx/android/sdk/neopdf/PdfDrmOptions$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfDrmOptions$Companion;",
        "",
        "()V",
        "DRM_JEB",
        "",
        "DRM_NONE",
        "DRM_ONYX",
        "DRM_PASSWORD",
        "jebDrmBuilder",
        "Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;",
        "onyxDrmBuilder",
        "Lcom/onyx/android/sdk/neopdf/OnyxDrmBuilder;",
        "passwordBuilder",
        "Lcom/onyx/android/sdk/neopdf/PdfPasswordBuilder;",
        "sdk-neopdf_release"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/PdfDrmOptions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final jebDrmBuilder()Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;

    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;-><init>()V

    return-object p0
.end method

.method public final onyxDrmBuilder()Lcom/onyx/android/sdk/neopdf/OnyxDrmBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/neopdf/OnyxDrmBuilder;

    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/OnyxDrmBuilder;-><init>()V

    return-object p0
.end method

.method public final passwordBuilder()Lcom/onyx/android/sdk/neopdf/PdfPasswordBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/neopdf/PdfPasswordBuilder;

    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/PdfPasswordBuilder;-><init>()V

    return-object p0
.end method
