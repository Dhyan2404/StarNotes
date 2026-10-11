.class public Lcom/miui/penengine/ocr/MiuiInk$Stroke;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/penengine/ocr/MiuiInk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stroke"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/penengine/ocr/MiuiInk$Stroke$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/penengine/ocr/MiuiInk$Stroke;->a:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/miui/penengine/ocr/MiuiInk$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/penengine/ocr/MiuiInk$Stroke;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static a()Lcom/miui/penengine/ocr/MiuiInk$Stroke$Builder;
    .locals 1

    new-instance v0, Lcom/miui/penengine/ocr/MiuiInk$Stroke$Builder;

    invoke-direct {v0}, Lcom/miui/penengine/ocr/MiuiInk$Stroke$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/miui/penengine/ocr/MiuiInk$Stroke;->a:Ljava/util/List;

    return-object p0
.end method
