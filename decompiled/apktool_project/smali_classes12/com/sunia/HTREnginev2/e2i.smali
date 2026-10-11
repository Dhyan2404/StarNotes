.class public final synthetic Lcom/sunia/HTREnginev2/e2i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e2i;->e:Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e2i;->e:Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method
