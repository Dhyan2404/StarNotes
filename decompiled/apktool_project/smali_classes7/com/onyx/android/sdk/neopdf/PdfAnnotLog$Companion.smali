.class public final Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JD\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Companion;",
        "",
        "()V",
        "addToList",
        "",
        "list",
        "",
        "Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;",
        "action",
        "",
        "pageId",
        "annotId",
        "pageIndex",
        "",
        "pageNewIndex",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final addToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;

    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;-><init>()V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Action;->valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Action;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;->setAction(Lcom/onyx/android/sdk/neopdf/PdfAnnotLog$Action;)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;->setPageId(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;->setAnnotId(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;->setPageIndex(I)V

    invoke-virtual {p0, p6}, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;->setPageNewIndex(I)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p2, Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;

    invoke-virtual {p1, p2, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
