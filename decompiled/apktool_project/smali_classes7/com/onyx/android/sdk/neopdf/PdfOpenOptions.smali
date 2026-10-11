.class public final Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;",
        "Ljava/io/Serializable;",
        "()V",
        "drmOptions",
        "Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;",
        "getDrmOptions",
        "()Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;",
        "setDrmOptions",
        "(Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;)V",
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


# instance fields
.field private drmOptions:Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;->drmOptions:Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;

    return-void
.end method


# virtual methods
.method public final getDrmOptions()Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;->drmOptions:Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;

    return-object p0
.end method

.method public final setDrmOptions(Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;->drmOptions:Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;

    return-void
.end method
