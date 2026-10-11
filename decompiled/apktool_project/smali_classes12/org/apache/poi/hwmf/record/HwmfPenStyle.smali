.class public Lorg/apache/poi/hwmf/record/HwmfPenStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;,
        Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineJoin;,
        Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineCap;
    }
.end annotation


# static fields
.field protected static final SUBSECTION_ALTERNATE:Lorg/apache/poi/util/BitField;

.field protected static final SUBSECTION_DASH:Lorg/apache/poi/util/BitField;

.field protected static final SUBSECTION_ENDCAP:Lorg/apache/poi/util/BitField;

.field protected static final SUBSECTION_GEOMETRIC:Lorg/apache/poi/util/BitField;

.field protected static final SUBSECTION_JOIN:Lorg/apache/poi/util/BitField;


# instance fields
.field protected flag:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->SUBSECTION_DASH:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->SUBSECTION_ALTERNATE:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x300

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->SUBSECTION_ENDCAP:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x3000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->SUBSECTION_JOIN:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x10000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->SUBSECTION_GEOMETRIC:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->flag:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget p1, p1, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->flag:I

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->flag:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hwmf/record/HwmfPenStyle;
    .locals 1

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->copy()Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hwmf/record/HwmfPenStyle;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;-><init>(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V

    return-object v0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "lineCap"

    new-instance v1, Lcom/sunia/HTREnginev2/q6i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/q6i;-><init>(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V

    const-string v2, "lineJoin"

    new-instance v3, Lcom/sunia/HTREnginev2/r6i;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/r6i;-><init>(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V

    const-string v4, "lineDash"

    new-instance v5, Lcom/sunia/HTREnginev2/s6i;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/s6i;-><init>(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V

    const-string v6, "lineDashes"

    new-instance v7, Lcom/sunia/HTREnginev2/t6i;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/t6i;-><init>(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V

    const-string v8, "alternateDash"

    new-instance v9, Lcom/sunia/HTREnginev2/u6i;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/u6i;-><init>(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V

    const-string v10, "geometric"

    new-instance v11, Lcom/sunia/HTREnginev2/v6i;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/v6i;-><init>(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getLineCap()Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineCap;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->SUBSECTION_ENDCAP:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->flag:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineCap;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineCap;

    move-result-object p0

    return-object p0
.end method

.method public getLineDash()Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->SUBSECTION_DASH:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->flag:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    move-result-object p0

    return-object p0
.end method

.method public getLineDashes()[F
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->getLineDash()Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->dashes:[F

    return-object p0
.end method

.method public getLineJoin()Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineJoin;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->SUBSECTION_JOIN:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->flag:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineJoin;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineJoin;

    move-result-object p0

    return-object p0
.end method

.method public isAlternateDash()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->SUBSECTION_ALTERNATE:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->flag:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isGeometric()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->SUBSECTION_GEOMETRIC:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->flag:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
