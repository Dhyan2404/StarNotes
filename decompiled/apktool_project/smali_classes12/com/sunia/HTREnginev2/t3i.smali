.class public final synthetic Lcom/sunia/HTREnginev2/t3i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hwmf/record/HwmfFill$WmfPatBlt;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfPatBlt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/t3i;->e:Lorg/apache/poi/hwmf/record/HwmfFill$WmfPatBlt;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/t3i;->e:Lorg/apache/poi/hwmf/record/HwmfFill$WmfPatBlt;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfPatBlt;->getRasterOperation()Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    move-result-object p0

    return-object p0
.end method
