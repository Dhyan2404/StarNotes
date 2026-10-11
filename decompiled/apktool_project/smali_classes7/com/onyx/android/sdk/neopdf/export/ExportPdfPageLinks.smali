.class public final Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0015\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u000c\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010R*\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getSrcFilePath",
        "()Ljava/lang/String;",
        "setSrcFilePath",
        "(Ljava/lang/String;)V",
        "srcFilePath",
        "",
        "b",
        "I",
        "getSrcPageIndex",
        "()I",
        "setSrcPageIndex",
        "(I)V",
        "srcPageIndex",
        "c",
        "getExportPageIndex",
        "setExportPageIndex",
        "exportPageIndex",
        "",
        "d",
        "Ljava/util/List;",
        "getLinkDestList",
        "()Ljava/util/List;",
        "setLinkDestList",
        "(Ljava/util/List;)V",
        "linkDestList",
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
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getExportPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->c:I

    return p0
.end method

.method public final getLinkDestList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->d:Ljava/util/List;

    return-object p0
.end method

.method public final getSrcFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getSrcPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->b:I

    return p0
.end method

.method public final setExportPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->c:I

    return-void
.end method

.method public final setLinkDestList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->d:Ljava/util/List;

    return-void
.end method

.method public final setSrcFilePath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->a:Ljava/lang/String;

    return-void
.end method

.method public final setSrcPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/export/ExportPdfPageLinks;->b:I

    return-void
.end method
