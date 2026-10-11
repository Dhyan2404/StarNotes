.class public final Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0013\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008R\"\u0010\u0011\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0016\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014R\"\u0010\u0019\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0010\u001a\u0004\u0008\u0019\u0010\u0012\"\u0004\u0008\u001a\u0010\u0014R\"\u0010\u001e\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0010\u001a\u0004\u0008\u001c\u0010\u0012\"\u0004\u0008\u001d\u0010\u0014\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;",
        "",
        "Landroid/graphics/RectF;",
        "a",
        "Landroid/graphics/RectF;",
        "getTouchLimitRect",
        "()Landroid/graphics/RectF;",
        "setTouchLimitRect",
        "(Landroid/graphics/RectF;)V",
        "touchLimitRect",
        "b",
        "getLimitRect",
        "setLimitRect",
        "limitRect",
        "",
        "c",
        "Z",
        "isRtl",
        "()Z",
        "setRtl",
        "(Z)V",
        "d",
        "isVertical",
        "setVertical",
        "e",
        "isLimitTranslateRect",
        "setLimitTranslateRect",
        "f",
        "getEnableHandleTouchEvent",
        "setEnableHandleTouchEvent",
        "enableHandleTouchEvent",
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
.field public a:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->c:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->f:Z

    return-void
.end method


# virtual methods
.method public final getEnableHandleTouchEvent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->f:Z

    return p0
.end method

.method public final getLimitRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->b:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getTouchLimitRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->a:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final isLimitTranslateRect()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->e:Z

    return p0
.end method

.method public final isRtl()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->c:Z

    return p0
.end method

.method public final isVertical()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->d:Z

    return p0
.end method

.method public final setEnableHandleTouchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->f:Z

    return-void
.end method

.method public final setLimitRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->b:Landroid/graphics/RectF;

    return-void
.end method

.method public final setLimitTranslateRect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->e:Z

    return-void
.end method

.method public final setRtl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->c:Z

    return-void
.end method

.method public final setTouchLimitRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->a:Landroid/graphics/RectF;

    return-void
.end method

.method public final setVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->d:Z

    return-void
.end method
