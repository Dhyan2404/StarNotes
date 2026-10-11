.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;",
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

    const-string v2, "ctcell842btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
.end method

.method public abstract addNewIs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
.end method

.method public abstract getCm()J
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
.end method

.method public abstract getIs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
.end method

.method public abstract getPh()Z
.end method

.method public abstract getR()Ljava/lang/String;
.end method

.method public abstract getS()J
.end method

.method public abstract getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;
.end method

.method public abstract getV()Ljava/lang/String;
.end method

.method public abstract getVm()J
.end method

.method public abstract isSetCm()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetF()Z
.end method

.method public abstract isSetIs()Z
.end method

.method public abstract isSetPh()Z
.end method

.method public abstract isSetR()Z
.end method

.method public abstract isSetS()Z
.end method

.method public abstract isSetT()Z
.end method

.method public abstract isSetV()Z
.end method

.method public abstract isSetVm()Z
.end method

.method public abstract setCm(J)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setF(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;)V
.end method

.method public abstract setIs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V
.end method

.method public abstract setPh(Z)V
.end method

.method public abstract setR(Ljava/lang/String;)V
.end method

.method public abstract setS(J)V
.end method

.method public abstract setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V
.end method

.method public abstract setV(Ljava/lang/String;)V
.end method

.method public abstract setVm(J)V
.end method

.method public abstract unsetCm()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetF()V
.end method

.method public abstract unsetIs()V
.end method

.method public abstract unsetPh()V
.end method

.method public abstract unsetR()V
.end method

.method public abstract unsetS()V
.end method

.method public abstract unsetT()V
.end method

.method public abstract unsetV()V
.end method

.method public abstract unsetVm()V
.end method

.method public abstract xgetCm()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetPh()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetR()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;
.end method

.method public abstract xgetS()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;
.end method

.method public abstract xgetV()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetVm()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetCm(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetPh(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetR(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;)V
.end method

.method public abstract xsetS(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;)V
.end method

.method public abstract xsetV(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetVm(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
