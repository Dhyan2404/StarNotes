.class public final Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008#\u0010$J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u0012\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\t\u001a\u0004\u0008\u0010\u0010\u000b\"\u0004\u0008\u0011\u0010\rR\"\u0010\u0016\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\t\u001a\u0004\u0008\u0014\u0010\u000b\"\u0004\u0008\u0015\u0010\rR\"\u0010\u001a\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\t\u001a\u0004\u0008\u0018\u0010\u000b\"\u0004\u0008\u0019\u0010\rR\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "getContentWidth",
        "getContentHeight",
        "",
        "a",
        "F",
        "getWidth",
        "()F",
        "setWidth",
        "(F)V",
        "width",
        "b",
        "getHeight",
        "setHeight",
        "height",
        "c",
        "getMiniWidth",
        "setMiniWidth",
        "miniWidth",
        "d",
        "getMiniHeight",
        "setMiniHeight",
        "miniHeight",
        "",
        "e",
        "Z",
        "getScale",
        "()Z",
        "setScale",
        "(Z)V",
        "scale",
        "<init>",
        "()V",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContentHeight(Landroid/content/Context;)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->b:F

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dip2px(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public final getContentWidth(Landroid/content/Context;)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->a:F

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dip2px(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public final getHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->b:F

    return p0
.end method

.method public final getMiniHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->d:F

    return p0
.end method

.method public final getMiniWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->c:F

    return p0
.end method

.method public final getScale()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->e:Z

    return p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->a:F

    return p0
.end method

.method public final setHeight(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->b:F

    return-void
.end method

.method public final setMiniHeight(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->d:F

    return-void
.end method

.method public final setMiniWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->c:F

    return-void
.end method

.method public final setScale(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->e:Z

    return-void
.end method

.method public final setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->a:F

    return-void
.end method
