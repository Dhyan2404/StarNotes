.class public Lcom/miui/penengine/ocr/MiuiInk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/penengine/ocr/MiuiInk$Builder;,
        Lcom/miui/penengine/ocr/MiuiInk$Stroke;
    }
.end annotation


# instance fields
.field private final strokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/penengine/ocr/MiuiInk;->strokes:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/miui/penengine/ocr/MiuiInk$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/penengine/ocr/MiuiInk;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static builder()Lcom/miui/penengine/ocr/MiuiInk$Builder;
    .locals 1

    new-instance v0, Lcom/miui/penengine/ocr/MiuiInk$Builder;

    invoke-direct {v0}, Lcom/miui/penengine/ocr/MiuiInk$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getStrokes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/miui/penengine/ocr/MiuiInk;->strokes:Ljava/util/List;

    return-object p0
.end method

.method public getStrokesCount()I
    .locals 0

    iget-object p0, p0, Lcom/miui/penengine/ocr/MiuiInk;->strokes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
