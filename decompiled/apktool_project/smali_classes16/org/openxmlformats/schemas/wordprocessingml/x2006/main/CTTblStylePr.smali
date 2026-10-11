.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblStylePr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblStylePr;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "cttblstylepreb53type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblStylePr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblStylePr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;
.end method

.method public abstract addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
.end method

.method public abstract addNewTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;
.end method

.method public abstract addNewTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;
.end method

.method public abstract addNewTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;
.end method

.method public abstract getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;
.end method

.method public abstract getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
.end method

.method public abstract getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;
.end method

.method public abstract getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;
.end method

.method public abstract getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;
.end method

.method public abstract isSetPPr()Z
.end method

.method public abstract isSetRPr()Z
.end method

.method public abstract isSetTblPr()Z
.end method

.method public abstract isSetTcPr()Z
.end method

.method public abstract isSetTrPr()Z
.end method

.method public abstract setPPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;)V
.end method

.method public abstract setRPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V
.end method

.method public abstract setTblPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;)V
.end method

.method public abstract setTcPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;)V
.end method

.method public abstract setTrPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType$Enum;)V
.end method

.method public abstract unsetPPr()V
.end method

.method public abstract unsetRPr()V
.end method

.method public abstract unsetTblPr()V
.end method

.method public abstract unsetTcPr()V
.end method

.method public abstract unsetTrPr()V
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblStyleOverrideType;)V
.end method
