.class public final Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0015\u0012\u0006\u0010 \u001a\u00020\u001b\u0012\u0006\u0010#\u001a\u00020\u001b\u0012\u0006\u0010)\u001a\u00020$\u00a2\u0006\u0004\u0008*\u0010+R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001d\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0014\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u001a\u001a\u00020\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010 \u001a\u00020\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0017\u0010#\u001a\u00020\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001d\u001a\u0004\u0008\"\u0010\u001fR\u0017\u0010)\u001a\u00020$8\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
        "b",
        "Ljava/util/List;",
        "getOriginShapes",
        "()Ljava/util/List;",
        "originShapes",
        "Landroid/graphics/RectF;",
        "c",
        "Landroid/graphics/RectF;",
        "getShapeRectInActivity",
        "()Landroid/graphics/RectF;",
        "shapeRectInActivity",
        "",
        "d",
        "Ljava/lang/String;",
        "getText",
        "()Ljava/lang/String;",
        "text",
        "",
        "e",
        "F",
        "getStartX",
        "()F",
        "startX",
        "f",
        "getBaseline",
        "baseline",
        "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
        "g",
        "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
        "getTypesetArgs",
        "()Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
        "typesetArgs",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Landroid/graphics/RectF;Ljava/lang/String;FFLcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:F

.field public final f:F

.field public final g:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Landroid/graphics/RectF;Ljava/lang/String;FFLcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;",
            "Landroid/graphics/RectF;",
            "Ljava/lang/String;",
            "FF",
            "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
            ")V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originShapes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeRectInActivity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typesetArgs"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->c:Landroid/graphics/RectF;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->d:Ljava/lang/String;

    iput p5, p0, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->e:F

    iput p6, p0, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->f:F

    iput-object p7, p0, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->g:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    return-void
.end method


# virtual methods
.method public final getBaseline()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->f:F

    return p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getOriginShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->b:Ljava/util/List;

    return-object p0
.end method

.method public final getShapeRectInActivity()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->c:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getStartX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->e:F

    return p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getTypesetArgs()Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->g:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    return-object p0
.end method
