.class public final synthetic Lcom/sunia/HTREnginev2/gih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtSelectClipRgn;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtSelectClipRgn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gih;->e:Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtSelectClipRgn;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gih;->e:Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtSelectClipRgn;

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtSelectClipRgn;->getRegionMode()Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    move-result-object p0

    return-object p0
.end method
