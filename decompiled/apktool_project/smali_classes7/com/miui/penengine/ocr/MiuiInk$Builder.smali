.class public Lcom/miui/penengine/ocr/MiuiInk$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/penengine/ocr/MiuiInk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/penengine/ocr/MiuiInk$Builder;->strokes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addStroke(Lcom/miui/penengine/ocr/MiuiInk$Stroke;)Lcom/miui/penengine/ocr/MiuiInk$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/penengine/ocr/MiuiInk$Builder;->strokes:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/penengine/ocr/MiuiInk$Stroke;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/miui/penengine/ocr/MiuiInk;
    .locals 2

    new-instance v0, Lcom/miui/penengine/ocr/MiuiInk;

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/penengine/ocr/MiuiInk$Builder;->strokes:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/miui/penengine/ocr/MiuiInk;-><init>(Ljava/util/List;Lcom/miui/penengine/ocr/MiuiInk$a;)V

    return-object v0
.end method
