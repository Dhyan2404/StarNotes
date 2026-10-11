.class public final Lcom/onyx/android/sdk/pen/PenBrushResult$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/pen/PenBrushResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public final b:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/pen/PenBrushResult$a;->a:I

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 7
    sget-object v0, Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;

    iget v1, p0, Lcom/onyx/android/sdk/pen/PenBrushResult$a;->a:I

    invoke-virtual {v0, v1, p2}, Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;->replaceAlphaWithBitwise(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iput-object p1, p0, Lcom/onyx/android/sdk/pen/PenBrushResult$a;->b:Landroid/graphics/Paint;

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/high16 p1, -0x1000000

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/pen/PenBrushResult$a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pen/PenBrushResult$a;->b:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/PenBrushResult$a;->a:I

    return p0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/PenBrushResult$a;->a:I

    return-void
.end method

.method public final d(II)V
    .locals 1

    iput p1, p0, Lcom/onyx/android/sdk/pen/PenBrushResult$a;->a:I

    iget-object p0, p0, Lcom/onyx/android/sdk/pen/PenBrushResult$a;->b:Landroid/graphics/Paint;

    sget-object v0, Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;->replaceAlphaWithBitwise(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
