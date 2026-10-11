.class public final Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\u0004\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;",
        "",
        "",
        "update",
        "setUpdateAp",
        "a",
        "Z",
        "isUpdateAp",
        "()Z",
        "(Z)V",
        "<init>",
        "()V",
        "sdk-neopdf_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;->a:Z

    return-void
.end method


# virtual methods
.method public final isUpdateAp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;->a:Z

    return p0
.end method

.method public final setUpdateAp(Z)Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-boolean p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;->a:Z

    return-object p0
.end method

.method public final setUpdateAp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;->a:Z

    return-void
.end method
