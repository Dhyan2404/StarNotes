.class final Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$initAttr$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->w(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Integer;"
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
.field final synthetic $universalShape:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$initAttr$1;->$universalShape:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ColorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ColorUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$initAttr$1;->$universalShape:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getStrokeColor()I

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/utils/ColorUtils;->getColorWithAlpha$default(Lcom/onyx/android/sdk/base/utils/ColorUtils;IFZILjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$initAttr$1;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
