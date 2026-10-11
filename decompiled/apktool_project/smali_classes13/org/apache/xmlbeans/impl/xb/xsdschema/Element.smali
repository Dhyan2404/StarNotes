.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;

    const-string v2, "elementd189type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->Factory:Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewComplexType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalComplexType;
.end method

.method public abstract addNewKey()Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;
.end method

.method public abstract addNewKeyref()Lorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;
.end method

.method public abstract addNewSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;
.end method

.method public abstract addNewUnique()Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;
.end method

.method public abstract getAbstract()Z
.end method

.method public abstract getBlock()Ljava/lang/Object;
.end method

.method public abstract getComplexType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalComplexType;
.end method

.method public abstract getDefault()Ljava/lang/String;
.end method

.method public abstract getFinal()Ljava/lang/Object;
.end method

.method public abstract getFixed()Ljava/lang/String;
.end method

.method public abstract getForm()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;
.end method

.method public abstract getKeyArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;
.end method

.method public abstract getKeyArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;
.end method

.method public abstract getKeyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyrefArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;
.end method

.method public abstract getKeyrefArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;
.end method

.method public abstract getKeyrefList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxOccurs()Ljava/lang/Object;
.end method

.method public abstract getMinOccurs()Ljava/math/BigInteger;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNillable()Z
.end method

.method public abstract getRef()Ljavax/xml/namespace/QName;
.end method

.method public abstract getSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;
.end method

.method public abstract getSubstitutionGroup()Ljavax/xml/namespace/QName;
.end method

.method public abstract getType()Ljavax/xml/namespace/QName;
.end method

.method public abstract getUniqueArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;
.end method

.method public abstract getUniqueArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;
.end method

.method public abstract getUniqueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewKey(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;
.end method

.method public abstract insertNewKeyref(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;
.end method

.method public abstract insertNewUnique(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;
.end method

.method public abstract isSetAbstract()Z
.end method

.method public abstract isSetBlock()Z
.end method

.method public abstract isSetComplexType()Z
.end method

.method public abstract isSetDefault()Z
.end method

.method public abstract isSetFinal()Z
.end method

.method public abstract isSetFixed()Z
.end method

.method public abstract isSetForm()Z
.end method

.method public abstract isSetMaxOccurs()Z
.end method

.method public abstract isSetMinOccurs()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetNillable()Z
.end method

.method public abstract isSetRef()Z
.end method

.method public abstract isSetSimpleType()Z
.end method

.method public abstract isSetSubstitutionGroup()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract removeKey(I)V
.end method

.method public abstract removeKeyref(I)V
.end method

.method public abstract removeUnique(I)V
.end method

.method public abstract setAbstract(Z)V
.end method

.method public abstract setBlock(Ljava/lang/Object;)V
.end method

.method public abstract setComplexType(Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalComplexType;)V
.end method

.method public abstract setDefault(Ljava/lang/String;)V
.end method

.method public abstract setFinal(Ljava/lang/Object;)V
.end method

.method public abstract setFixed(Ljava/lang/String;)V
.end method

.method public abstract setForm(Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;)V
.end method

.method public abstract setKeyArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;)V
.end method

.method public abstract setKeyArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;)V
.end method

.method public abstract setKeyrefArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;)V
.end method

.method public abstract setKeyrefArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;)V
.end method

.method public abstract setMaxOccurs(Ljava/lang/Object;)V
.end method

.method public abstract setMinOccurs(Ljava/math/BigInteger;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNillable(Z)V
.end method

.method public abstract setRef(Ljavax/xml/namespace/QName;)V
.end method

.method public abstract setSimpleType(Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;)V
.end method

.method public abstract setSubstitutionGroup(Ljavax/xml/namespace/QName;)V
.end method

.method public abstract setType(Ljavax/xml/namespace/QName;)V
.end method

.method public abstract setUniqueArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;)V
.end method

.method public abstract setUniqueArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;)V
.end method

.method public abstract sizeOfKeyArray()I
.end method

.method public abstract sizeOfKeyrefArray()I
.end method

.method public abstract sizeOfUniqueArray()I
.end method

.method public abstract unsetAbstract()V
.end method

.method public abstract unsetBlock()V
.end method

.method public abstract unsetComplexType()V
.end method

.method public abstract unsetDefault()V
.end method

.method public abstract unsetFinal()V
.end method

.method public abstract unsetFixed()V
.end method

.method public abstract unsetForm()V
.end method

.method public abstract unsetMaxOccurs()V
.end method

.method public abstract unsetMinOccurs()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetNillable()V
.end method

.method public abstract unsetRef()V
.end method

.method public abstract unsetSimpleType()V
.end method

.method public abstract unsetSubstitutionGroup()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetAbstract()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetBlock()Lorg/apache/xmlbeans/impl/xb/xsdschema/BlockSet;
.end method

.method public abstract xgetDefault()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFinal()Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationSet;
.end method

.method public abstract xgetFixed()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetForm()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;
.end method

.method public abstract xgetMaxOccurs()Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI;
.end method

.method public abstract xgetMinOccurs()Lorg/apache/xmlbeans/XmlNonNegativeInteger;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlNCName;
.end method

.method public abstract xgetNillable()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRef()Lorg/apache/xmlbeans/XmlQName;
.end method

.method public abstract xgetSubstitutionGroup()Lorg/apache/xmlbeans/XmlQName;
.end method

.method public abstract xgetType()Lorg/apache/xmlbeans/XmlQName;
.end method

.method public abstract xsetAbstract(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetBlock(Lorg/apache/xmlbeans/impl/xb/xsdschema/BlockSet;)V
.end method

.method public abstract xsetDefault(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFinal(Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationSet;)V
.end method

.method public abstract xsetFixed(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetForm(Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;)V
.end method

.method public abstract xsetMaxOccurs(Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI;)V
.end method

.method public abstract xsetMinOccurs(Lorg/apache/xmlbeans/XmlNonNegativeInteger;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlNCName;)V
.end method

.method public abstract xsetNillable(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRef(Lorg/apache/xmlbeans/XmlQName;)V
.end method

.method public abstract xsetSubstitutionGroup(Lorg/apache/xmlbeans/XmlQName;)V
.end method

.method public abstract xsetType(Lorg/apache/xmlbeans/XmlQName;)V
.end method
