.class public final synthetic Lcom/sunia/HTREnginev2/k6i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k6i;->e:Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k6i;->e:Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;

    invoke-static {p0}, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->a(Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method
