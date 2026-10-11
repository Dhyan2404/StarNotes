.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;",
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

    const-string v2, "ctrevisioncellchange4836type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewNc()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
.end method

.method public abstract addNewNdxf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
.end method

.method public abstract addNewOc()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
.end method

.method public abstract addNewOdxf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
.end method

.method public abstract getDxf()Z
.end method

.method public abstract getEndOfListFormulaUpdate()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getNc()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
.end method

.method public abstract getNdxf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
.end method

.method public abstract getNumFmtId()J
.end method

.method public abstract getOc()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
.end method

.method public abstract getOdxf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
.end method

.method public abstract getOdxf2()Z
.end method

.method public abstract getOldPh()Z
.end method

.method public abstract getOldQuotePrefix()Z
.end method

.method public abstract getPh()Z
.end method

.method public abstract getQuotePrefix()Z
.end method

.method public abstract getRId()J
.end method

.method public abstract getRa()Z
.end method

.method public abstract getS()Z
.end method

.method public abstract getSId()J
.end method

.method public abstract getUa()Z
.end method

.method public abstract getXfDxf()Z
.end method

.method public abstract isSetDxf()Z
.end method

.method public abstract isSetEndOfListFormulaUpdate()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetNdxf()Z
.end method

.method public abstract isSetNumFmtId()Z
.end method

.method public abstract isSetOc()Z
.end method

.method public abstract isSetOdxf()Z
.end method

.method public abstract isSetOdxf2()Z
.end method

.method public abstract isSetOldPh()Z
.end method

.method public abstract isSetOldQuotePrefix()Z
.end method

.method public abstract isSetPh()Z
.end method

.method public abstract isSetQuotePrefix()Z
.end method

.method public abstract isSetRa()Z
.end method

.method public abstract isSetS()Z
.end method

.method public abstract isSetUa()Z
.end method

.method public abstract isSetXfDxf()Z
.end method

.method public abstract setDxf(Z)V
.end method

.method public abstract setEndOfListFormulaUpdate(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setNc(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V
.end method

.method public abstract setNdxf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;)V
.end method

.method public abstract setNumFmtId(J)V
.end method

.method public abstract setOc(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V
.end method

.method public abstract setOdxf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;)V
.end method

.method public abstract setOdxf2(Z)V
.end method

.method public abstract setOldPh(Z)V
.end method

.method public abstract setOldQuotePrefix(Z)V
.end method

.method public abstract setPh(Z)V
.end method

.method public abstract setQuotePrefix(Z)V
.end method

.method public abstract setRId(J)V
.end method

.method public abstract setRa(Z)V
.end method

.method public abstract setS(Z)V
.end method

.method public abstract setSId(J)V
.end method

.method public abstract setUa(Z)V
.end method

.method public abstract setXfDxf(Z)V
.end method

.method public abstract unsetDxf()V
.end method

.method public abstract unsetEndOfListFormulaUpdate()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetNdxf()V
.end method

.method public abstract unsetNumFmtId()V
.end method

.method public abstract unsetOc()V
.end method

.method public abstract unsetOdxf()V
.end method

.method public abstract unsetOdxf2()V
.end method

.method public abstract unsetOldPh()V
.end method

.method public abstract unsetOldQuotePrefix()V
.end method

.method public abstract unsetPh()V
.end method

.method public abstract unsetQuotePrefix()V
.end method

.method public abstract unsetRa()V
.end method

.method public abstract unsetS()V
.end method

.method public abstract unsetUa()V
.end method

.method public abstract unsetXfDxf()V
.end method

.method public abstract xgetDxf()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetEndOfListFormulaUpdate()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNumFmtId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;
.end method

.method public abstract xgetOdxf2()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetOldPh()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetOldQuotePrefix()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPh()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetQuotePrefix()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRa()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetS()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetUa()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetXfDxf()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetDxf(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetEndOfListFormulaUpdate(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNumFmtId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;)V
.end method

.method public abstract xsetOdxf2(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetOldPh(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetOldQuotePrefix(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPh(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetQuotePrefix(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRa(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetS(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetUa(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetXfDxf(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
