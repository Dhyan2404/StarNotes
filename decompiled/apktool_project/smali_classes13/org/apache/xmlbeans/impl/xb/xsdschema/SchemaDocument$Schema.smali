.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/OpenAttrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Schema"
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/ElementFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;

    const-string v2, "schemad77felemtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAnnotation()Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;
.end method

.method public abstract addNewAttribute()Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;
.end method

.method public abstract addNewAttributeGroup()Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;
.end method

.method public abstract addNewComplexType()Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;
.end method

.method public abstract addNewElement()Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;
.end method

.method public abstract addNewGroup()Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;
.end method

.method public abstract addNewImport()Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;
.end method

.method public abstract addNewInclude()Lorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;
.end method

.method public abstract addNewNotation()Lorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;
.end method

.method public abstract addNewRedefine()Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;
.end method

.method public abstract addNewSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;
.end method

.method public abstract getAnnotationArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;
.end method

.method public abstract getAnnotationArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;
.end method

.method public abstract getAnnotationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAttributeArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;
.end method

.method public abstract getAttributeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;
.end method

.method public abstract getAttributeFormDefault()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;
.end method

.method public abstract getAttributeGroupArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;
.end method

.method public abstract getAttributeGroupArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;
.end method

.method public abstract getAttributeGroupList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAttributeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBlockDefault()Ljava/lang/Object;
.end method

.method public abstract getComplexTypeArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;
.end method

.method public abstract getComplexTypeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;
.end method

.method public abstract getComplexTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getElementArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;
.end method

.method public abstract getElementArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;
.end method

.method public abstract getElementFormDefault()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;
.end method

.method public abstract getElementList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFinalDefault()Ljava/lang/Object;
.end method

.method public abstract getGroupArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;
.end method

.method public abstract getGroupArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;
.end method

.method public abstract getGroupList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getImportArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;
.end method

.method public abstract getImportArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;
.end method

.method public abstract getImportList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIncludeArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;
.end method

.method public abstract getIncludeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;
.end method

.method public abstract getIncludeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLang()Ljava/lang/String;
.end method

.method public abstract getNotationArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;
.end method

.method public abstract getNotationArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;
.end method

.method public abstract getNotationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRedefineArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;
.end method

.method public abstract getRedefineArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;
.end method

.method public abstract getRedefineList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSimpleTypeArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;
.end method

.method public abstract getSimpleTypeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;
.end method

.method public abstract getSimpleTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTargetNamespace()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract insertNewAnnotation(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;
.end method

.method public abstract insertNewAttribute(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;
.end method

.method public abstract insertNewAttributeGroup(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;
.end method

.method public abstract insertNewComplexType(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;
.end method

.method public abstract insertNewElement(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;
.end method

.method public abstract insertNewGroup(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;
.end method

.method public abstract insertNewImport(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;
.end method

.method public abstract insertNewInclude(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;
.end method

.method public abstract insertNewNotation(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;
.end method

.method public abstract insertNewRedefine(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;
.end method

.method public abstract insertNewSimpleType(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;
.end method

.method public abstract isSetAttributeFormDefault()Z
.end method

.method public abstract isSetBlockDefault()Z
.end method

.method public abstract isSetElementFormDefault()Z
.end method

.method public abstract isSetFinalDefault()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetLang()Z
.end method

.method public abstract isSetTargetNamespace()Z
.end method

.method public abstract isSetVersion()Z
.end method

.method public abstract removeAnnotation(I)V
.end method

.method public abstract removeAttribute(I)V
.end method

.method public abstract removeAttributeGroup(I)V
.end method

.method public abstract removeComplexType(I)V
.end method

.method public abstract removeElement(I)V
.end method

.method public abstract removeGroup(I)V
.end method

.method public abstract removeImport(I)V
.end method

.method public abstract removeInclude(I)V
.end method

.method public abstract removeNotation(I)V
.end method

.method public abstract removeRedefine(I)V
.end method

.method public abstract removeSimpleType(I)V
.end method

.method public abstract setAnnotationArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;)V
.end method

.method public abstract setAnnotationArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;)V
.end method

.method public abstract setAttributeArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;)V
.end method

.method public abstract setAttributeArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;)V
.end method

.method public abstract setAttributeFormDefault(Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;)V
.end method

.method public abstract setAttributeGroupArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;)V
.end method

.method public abstract setAttributeGroupArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;)V
.end method

.method public abstract setBlockDefault(Ljava/lang/Object;)V
.end method

.method public abstract setComplexTypeArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;)V
.end method

.method public abstract setComplexTypeArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;)V
.end method

.method public abstract setElementArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;)V
.end method

.method public abstract setElementArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;)V
.end method

.method public abstract setElementFormDefault(Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;)V
.end method

.method public abstract setFinalDefault(Ljava/lang/Object;)V
.end method

.method public abstract setGroupArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;)V
.end method

.method public abstract setGroupArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setImportArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;)V
.end method

.method public abstract setImportArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;)V
.end method

.method public abstract setIncludeArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;)V
.end method

.method public abstract setIncludeArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;)V
.end method

.method public abstract setLang(Ljava/lang/String;)V
.end method

.method public abstract setNotationArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;)V
.end method

.method public abstract setNotationArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;)V
.end method

.method public abstract setRedefineArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;)V
.end method

.method public abstract setRedefineArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;)V
.end method

.method public abstract setSimpleTypeArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;)V
.end method

.method public abstract setSimpleTypeArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;)V
.end method

.method public abstract setTargetNamespace(Ljava/lang/String;)V
.end method

.method public abstract setVersion(Ljava/lang/String;)V
.end method

.method public abstract sizeOfAnnotationArray()I
.end method

.method public abstract sizeOfAttributeArray()I
.end method

.method public abstract sizeOfAttributeGroupArray()I
.end method

.method public abstract sizeOfComplexTypeArray()I
.end method

.method public abstract sizeOfElementArray()I
.end method

.method public abstract sizeOfGroupArray()I
.end method

.method public abstract sizeOfImportArray()I
.end method

.method public abstract sizeOfIncludeArray()I
.end method

.method public abstract sizeOfNotationArray()I
.end method

.method public abstract sizeOfRedefineArray()I
.end method

.method public abstract sizeOfSimpleTypeArray()I
.end method

.method public abstract unsetAttributeFormDefault()V
.end method

.method public abstract unsetBlockDefault()V
.end method

.method public abstract unsetElementFormDefault()V
.end method

.method public abstract unsetFinalDefault()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetLang()V
.end method

.method public abstract unsetTargetNamespace()V
.end method

.method public abstract unsetVersion()V
.end method

.method public abstract xgetAttributeFormDefault()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;
.end method

.method public abstract xgetBlockDefault()Lorg/apache/xmlbeans/impl/xb/xsdschema/BlockSet;
.end method

.method public abstract xgetElementFormDefault()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;
.end method

.method public abstract xgetFinalDefault()Lorg/apache/xmlbeans/impl/xb/xsdschema/FullDerivationSet;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xgetLang()Lorg/apache/xmlbeans/impl/xb/xmlschema/LangAttribute$Lang;
.end method

.method public abstract xgetTargetNamespace()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetVersion()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xsetAttributeFormDefault(Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;)V
.end method

.method public abstract xsetBlockDefault(Lorg/apache/xmlbeans/impl/xb/xsdschema/BlockSet;)V
.end method

.method public abstract xsetElementFormDefault(Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;)V
.end method

.method public abstract xsetFinalDefault(Lorg/apache/xmlbeans/impl/xb/xsdschema/FullDerivationSet;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method

.method public abstract xsetLang(Lorg/apache/xmlbeans/impl/xb/xmlschema/LangAttribute$Lang;)V
.end method

.method public abstract xsetTargetNamespace(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method

.method public abstract xsetVersion(Lorg/apache/xmlbeans/XmlToken;)V
.end method
