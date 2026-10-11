.class public final Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Action;,
        Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001b\u001cB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;",
        "Ljava/io/Serializable;",
        "()V",
        "action",
        "Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Action;",
        "getAction",
        "()Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Action;",
        "setAction",
        "(Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Action;)V",
        "annotId",
        "",
        "getAnnotId",
        "()Ljava/lang/String;",
        "setAnnotId",
        "(Ljava/lang/String;)V",
        "pageId",
        "getPageId",
        "setPageId",
        "pageIndex",
        "",
        "getPageIndex",
        "()I",
        "setPageIndex",
        "(I)V",
        "pageNewIndex",
        "getPageNewIndex",
        "setPageNewIndex",
        "Action",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private action:Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Action;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private annotId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pageId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pageIndex:I

.field private pageNewIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;->Companion:Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAction()Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Action;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;->action:Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Action;

    return-object p0
.end method

.method public final getAnnotId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;->annotId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;->pageId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;->pageIndex:I

    return p0
.end method

.method public final getPageNewIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;->pageNewIndex:I

    return p0
.end method

.method public final setAction(Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Action;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Action;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;->action:Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Action;

    return-void
.end method

.method public final setAnnotId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;->annotId:Ljava/lang/String;

    return-void
.end method

.method public final setPageId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;->pageId:Ljava/lang/String;

    return-void
.end method

.method public final setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;->pageIndex:I

    return-void
.end method

.method public final setPageNewIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;->pageNewIndex:I

    return-void
.end method
