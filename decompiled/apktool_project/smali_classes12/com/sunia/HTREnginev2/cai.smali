.class public final synthetic Lcom/sunia/HTREnginev2/cai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cai;->e:Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cai;->e:Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;

    invoke-static {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->a(Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method
