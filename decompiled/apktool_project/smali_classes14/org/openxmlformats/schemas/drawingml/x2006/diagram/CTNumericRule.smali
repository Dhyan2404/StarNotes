.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTNumericRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTNumericRule;",
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

    const-string v2, "ctnumericrule4e52type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTNumericRule;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTNumericRule;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getFact()D
.end method

.method public abstract getFor()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship$Enum;
.end method

.method public abstract getForName()Ljava/lang/String;
.end method

.method public abstract getMax()D
.end method

.method public abstract getPtType()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STElementType$Enum;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintType$Enum;
.end method

.method public abstract getVal()D
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFact()Z
.end method

.method public abstract isSetFor()Z
.end method

.method public abstract isSetForName()Z
.end method

.method public abstract isSetMax()Z
.end method

.method public abstract isSetPtType()Z
.end method

.method public abstract isSetVal()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setFact(D)V
.end method

.method public abstract setFor(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship$Enum;)V
.end method

.method public abstract setForName(Ljava/lang/String;)V
.end method

.method public abstract setMax(D)V
.end method

.method public abstract setPtType(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STElementType$Enum;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintType$Enum;)V
.end method

.method public abstract setVal(D)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFact()V
.end method

.method public abstract unsetFor()V
.end method

.method public abstract unsetForName()V
.end method

.method public abstract unsetMax()V
.end method

.method public abstract unsetPtType()V
.end method

.method public abstract unsetVal()V
.end method

.method public abstract xgetFact()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetFor()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship;
.end method

.method public abstract xgetForName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetMax()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetPtType()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STElementType;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintType;
.end method

.method public abstract xgetVal()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xsetFact(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetFor(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintRelationship;)V
.end method

.method public abstract xsetForName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetMax(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetPtType(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STElementType;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConstraintType;)V
.end method

.method public abstract xsetVal(Lorg/apache/xmlbeans/XmlDouble;)V
.end method
