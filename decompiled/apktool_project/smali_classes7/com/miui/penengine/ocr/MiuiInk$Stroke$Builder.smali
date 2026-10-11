.class public Lcom/miui/penengine/ocr/MiuiInk$Stroke$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/penengine/ocr/MiuiInk$Stroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/penengine/ocr/MiuiInk$Stroke$Builder;->points:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPoint(Landroid/view/MotionEvent;)Lcom/miui/penengine/ocr/MiuiInk$Stroke$Builder;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/miui/penengine/ocr/MiuiInk$Stroke$Builder;->points:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/miui/penengine/ocr/MiuiInk$Stroke;
    .locals 2

    new-instance v0, Lcom/miui/penengine/ocr/MiuiInk$Stroke;

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/penengine/ocr/MiuiInk$Stroke$Builder;->points:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/miui/penengine/ocr/MiuiInk$Stroke;-><init>(Ljava/util/List;)V

    return-object v0
.end method
