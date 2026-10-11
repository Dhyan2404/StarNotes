.class public final synthetic Lcom/sunia/HTREnginev2/gai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gai;->e:Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gai;->e:Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;

    invoke-static {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->b(Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;)Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    move-result-object p0

    return-object p0
.end method
