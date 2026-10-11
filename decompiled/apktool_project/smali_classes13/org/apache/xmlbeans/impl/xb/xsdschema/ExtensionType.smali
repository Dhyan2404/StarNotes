.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;

    const-string v2, "extensiontypeed4ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAll()Lorg/apache/xmlbeans/impl/xb/xsdschema/All;
.end method

.method public abstract addNewAnyAttribute()Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;
.end method

.method public abstract addNewAttribute()Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;
.end method

.method public abstract addNewAttributeGroup()Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;
.end method

.method public abstract addNewChoice()Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;
.end method

.method public abstract addNewGroup()Lorg/apache/xmlbeans/impl/xb/xsdschema/GroupRef;
.end method

.method public abstract addNewSequence()Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;
.end method

.method public abstract getAll()Lorg/apache/xmlbeans/impl/xb/xsdschema/All;
.end method

.method public abstract getAnyAttribute()Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;
.end method

.method public abstract getAttributeArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;
.end method

.method public abstract getAttributeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;
.end method

.method public abstract getAttributeGroupArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;
.end method

.method public abstract getAttributeGroupArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;
.end method

.method public abstract getAttributeGroupList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAttributeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBase()Ljavax/xml/namespace/QName;
.end method

.method public abstract getChoice()Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;
.end method

.method public abstract getGroup()Lorg/apache/xmlbeans/impl/xb/xsdschema/GroupRef;
.end method

.method public abstract getSequence()Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;
.end method

.method public abstract insertNewAttribute(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;
.end method

.method public abstract insertNewAttributeGroup(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;
.end method

.method public abstract isSetAll()Z
.end method

.method public abstract isSetAnyAttribute()Z
.end method

.method public abstract isSetChoice()Z
.end method

.method public abstract isSetGroup()Z
.end method

.method public abstract isSetSequence()Z
.end method

.method public abstract removeAttribute(I)V
.end method

.method public abstract removeAttributeGroup(I)V
.end method

.method public abstract setAll(Lorg/apache/xmlbeans/impl/xb/xsdschema/All;)V
.end method

.method public abstract setAnyAttribute(Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;)V
.end method

.method public abstract setAttributeArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;)V
.end method

.method public abstract setAttributeArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;)V
.end method

.method public abstract setAttributeGroupArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;)V
.end method

.method public abstract setAttributeGroupArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;)V
.end method

.method public abstract setBase(Ljavax/xml/namespace/QName;)V
.end method

.method public abstract setChoice(Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;)V
.end method

.method public abstract setGroup(Lorg/apache/xmlbeans/impl/xb/xsdschema/GroupRef;)V
.end method

.method public abstract setSequence(Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;)V
.end method

.method public abstract sizeOfAttributeArray()I
.end method

.method public abstract sizeOfAttributeGroupArray()I
.end method

.method public abstract unsetAll()V
.end method

.method public abstract unsetAnyAttribute()V
.end method

.method public abstract unsetChoice()V
.end method

.method public abstract unsetGroup()V
.end method

.method public abstract unsetSequence()V
.end method

.method public abstract xgetBase()Lorg/apache/xmlbeans/XmlQName;
.end method

.method public abstract xsetBase(Lorg/apache/xmlbeans/XmlQName;)V
.end method
