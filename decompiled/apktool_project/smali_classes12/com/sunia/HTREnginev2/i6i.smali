.class public final synthetic Lcom/sunia/HTREnginev2/i6i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetRop2;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetRop2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/i6i;->e:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetRop2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i6i;->e:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetRop2;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetRop2;->getDrawMode()Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    move-result-object p0

    return-object p0
.end method
