.class public Lorg/apache/poi/hemf/record/emf/HemfPenStyle;
.super Lorg/apache/poi/hwmf/record/HwmfPenStyle;
.source "SourceFile"


# instance fields
.field private dashPattern:[F


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hemf/record/emf/HemfPenStyle;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;-><init>(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V

    .line 3
    iget-object p1, p1, Lorg/apache/poi/hemf/record/emf/HemfPenStyle;->dashPattern:[F

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hemf/record/emf/HemfPenStyle;->dashPattern:[F

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hemf/record/emf/HemfPenStyle;
    .locals 1

    .line 7
    new-instance v0, Lorg/apache/poi/hemf/record/emf/HemfPenStyle;

    invoke-direct {v0, p0}, Lorg/apache/poi/hemf/record/emf/HemfPenStyle;-><init>(I)V

    return-object v0
.end method

.method public static valueOf(Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineCap;Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineJoin;Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;ZZ)Lorg/apache/poi/hemf/record/emf/HemfPenStyle;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->SUBSECTION_DASH:Lorg/apache/poi/util/BitField;

    iget p2, p2, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->wmfFlag:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p2

    .line 2
    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->SUBSECTION_ENDCAP:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineCap;->wmfFlag:I

    invoke-virtual {v0, p2, p0}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p0

    .line 3
    sget-object p2, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->SUBSECTION_JOIN:Lorg/apache/poi/util/BitField;

    iget p1, p1, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineJoin;->wmfFlag:I

    invoke-virtual {p2, p0, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p0

    .line 4
    sget-object p1, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->SUBSECTION_ALTERNATE:Lorg/apache/poi/util/BitField;

    invoke-virtual {p1, p0, p3}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p0

    .line 5
    sget-object p1, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->SUBSECTION_GEOMETRIC:Lorg/apache/poi/util/BitField;

    invoke-virtual {p1, p0, p4}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p0

    .line 6
    new-instance p1, Lorg/apache/poi/hemf/record/emf/HemfPenStyle;

    invoke-direct {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfPenStyle;-><init>(I)V

    return-object p1
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfPenStyle;->copy()Lorg/apache/poi/hemf/record/emf/HemfPenStyle;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hemf/record/emf/HemfPenStyle;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hemf/record/emf/HemfPenStyle;

    invoke-direct {v0, p0}, Lorg/apache/poi/hemf/record/emf/HemfPenStyle;-><init>(Lorg/apache/poi/hemf/record/emf/HemfPenStyle;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hwmf/record/HwmfPenStyle;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfPenStyle;->copy()Lorg/apache/poi/hemf/record/emf/HemfPenStyle;

    move-result-object p0

    return-object p0
.end method

.method public getLineDashes()[F
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->getLineDash()Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->USERSTYLE:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfPenStyle;->dashPattern:[F

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->getLineDashes()[F

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public setLineDashes([F)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hemf/record/emf/HemfPenStyle;->dashPattern:[F

    return-void
.end method
