.class public final Lcom/onyx/android/sdk/ui/LayoutParamRes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u001e\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008R\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u0004\u001a\u0004\u0008\u000f\u0010\u0006\"\u0004\u0008\u0010\u0010\u0008R\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0004\u001a\u0004\u0008\u0017\u0010\u0006\"\u0004\u0008\u0018\u0010\u0008R\"\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0004\u001a\u0004\u0008\u001b\u0010\u0006\"\u0004\u0008\u001c\u0010\u0008\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/LayoutParamRes;",
        "",
        "",
        "a",
        "I",
        "getPopupWidthRes",
        "()I",
        "setPopupWidthRes",
        "(I)V",
        "popupWidthRes",
        "b",
        "getPopupHeightRes",
        "setPopupHeightRes",
        "popupHeightRes",
        "c",
        "getPopupBackgroundRes",
        "setPopupBackgroundRes",
        "popupBackgroundRes",
        "d",
        "getItemWidthRes",
        "setItemWidthRes",
        "itemWidthRes",
        "e",
        "getItemHeightRes",
        "setItemHeightRes",
        "itemHeightRes",
        "f",
        "getItemTextSizeRes",
        "setItemTextSizeRes",
        "itemTextSizeRes",
        "<init>",
        "()V",
        "sdk-uicommon_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:I
    .annotation build Landroidx/annotation/DimenRes;
    .end annotation
.end field

.field public b:I
    .annotation build Landroidx/annotation/DimenRes;
    .end annotation
.end field

.field public c:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public d:I
    .annotation build Landroidx/annotation/DimenRes;
    .end annotation
.end field

.field public e:I
    .annotation build Landroidx/annotation/DimenRes;
    .end annotation
.end field

.field public f:I
    .annotation build Landroidx/annotation/DimenRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemHeightRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/LayoutParamRes;->e:I

    return p0
.end method

.method public final getItemTextSizeRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/LayoutParamRes;->f:I

    return p0
.end method

.method public final getItemWidthRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/LayoutParamRes;->d:I

    return p0
.end method

.method public final getPopupBackgroundRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/LayoutParamRes;->c:I

    return p0
.end method

.method public final getPopupHeightRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/LayoutParamRes;->b:I

    return p0
.end method

.method public final getPopupWidthRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/LayoutParamRes;->a:I

    return p0
.end method

.method public final setItemHeightRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/LayoutParamRes;->e:I

    return-void
.end method

.method public final setItemTextSizeRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/LayoutParamRes;->f:I

    return-void
.end method

.method public final setItemWidthRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/LayoutParamRes;->d:I

    return-void
.end method

.method public final setPopupBackgroundRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/LayoutParamRes;->c:I

    return-void
.end method

.method public final setPopupHeightRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/LayoutParamRes;->b:I

    return-void
.end method

.method public final setPopupWidthRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/LayoutParamRes;->a:I

    return-void
.end method
