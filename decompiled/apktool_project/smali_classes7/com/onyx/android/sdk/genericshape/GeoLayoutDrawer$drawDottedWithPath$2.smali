.class final Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$drawDottedWithPath$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->drawDottedWithPath(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Path;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $adaptiveSpace:F

.field final synthetic $startX:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $stopX:F

.field final synthetic $visibleRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;Landroid/graphics/RectF;Lkotlin/jvm/internal/Ref$FloatRef;FF)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$drawDottedWithPath$2;->this$0:Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;

    iput-object p2, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$drawDottedWithPath$2;->$visibleRect:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$drawDottedWithPath$2;->$startX:Lkotlin/jvm/internal/Ref$FloatRef;

    iput p4, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$drawDottedWithPath$2;->$stopX:F

    iput p5, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$drawDottedWithPath$2;->$adaptiveSpace:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Path;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$drawDottedWithPath$2;->this$0:Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$drawDottedWithPath$2;->$visibleRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$drawDottedWithPath$2;->$startX:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v2, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v3, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$drawDottedWithPath$2;->$stopX:F

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$drawDottedWithPath$2;->$adaptiveSpace:F

    invoke-static {v0, v1, v2, v3, p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->access$generateDottedRowPath(Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;Landroid/graphics/RectF;FFF)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$drawDottedWithPath$2;->invoke()Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method
