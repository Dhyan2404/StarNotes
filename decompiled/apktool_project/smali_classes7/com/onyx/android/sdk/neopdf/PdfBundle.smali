.class public final Lcom/onyx/android/sdk/neopdf/PdfBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neopdf/PdfBundle$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfBundle.kt\ncom/onyx/android/sdk/neopdf/PdfBundle\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n1#2:43\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0007\u001a\u00020\u0005J\u0006\u0010\u0008\u001a\u00020\u0005R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfBundle;",
        "",
        "Lcom/onyx/android/sdk/neopdf/NeoPdf;",
        "ensureGlobalPdfBKNative",
        "ensureNewPdfNative",
        "",
        "closeGlobalBKPdfNative",
        "closeNewPdfNative",
        "closeAll",
        "a",
        "Lcom/onyx/android/sdk/neopdf/NeoPdf;",
        "globalPdfBKNative",
        "b",
        "newPdfNative",
        "<init>",
        "()V",
        "Companion",
        "sdk-neopdf_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPdfBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfBundle.kt\ncom/onyx/android/sdk/neopdf/PdfBundle\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n1#2:43\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/neopdf/PdfBundle$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lcom/onyx/android/sdk/neopdf/PdfBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lcom/onyx/android/sdk/neopdf/NeoPdf;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/neopdf/NeoPdf;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfBundle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfBundle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/PdfBundle;->Companion:Lcom/onyx/android/sdk/neopdf/PdfBundle$Companion;

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfBundle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/PdfBundle;->c:Lcom/onyx/android/sdk/neopdf/PdfBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/onyx/android/sdk/neopdf/PdfBundle;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfBundle;->c:Lcom/onyx/android/sdk/neopdf/PdfBundle;

    return-object v0
.end method


# virtual methods
.method public final closeAll()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;->closeGlobalBKPdfNative()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;->closeNewPdfNative()V

    return-void
.end method

.method public final closeGlobalBKPdfNative()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfBundle;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfBundle;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    return-void
.end method

.method public final closeNewPdfNative()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfBundle;->b:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfBundle;->b:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    return-void
.end method

.method public final ensureGlobalPdfBKNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;->closeNewPdfNative()V

    iget-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfBundle;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfBundle;->a:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    :cond_0
    return-object v0
.end method

.method public final ensureNewPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfBundle;->closeGlobalBKPdfNative()V

    iget-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfBundle;->b:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfBundle;->b:Lcom/onyx/android/sdk/neopdf/NeoPdf;

    :cond_0
    return-object v0
.end method
