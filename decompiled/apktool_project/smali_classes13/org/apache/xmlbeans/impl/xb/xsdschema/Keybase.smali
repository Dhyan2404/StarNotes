.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;",
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

    const-string v2, "keybase3955type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewField()Lorg/apache/xmlbeans/impl/xb/xsdschema/FieldDocument$Field;
.end method

.method public abstract addNewSelector()Lorg/apache/xmlbeans/impl/xb/xsdschema/SelectorDocument$Selector;
.end method

.method public abstract getFieldArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/FieldDocument$Field;
.end method

.method public abstract getFieldArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/FieldDocument$Field;
.end method

.method public abstract getFieldList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/FieldDocument$Field;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSelector()Lorg/apache/xmlbeans/impl/xb/xsdschema/SelectorDocument$Selector;
.end method

.method public abstract insertNewField(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/FieldDocument$Field;
.end method

.method public abstract removeField(I)V
.end method

.method public abstract setFieldArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/FieldDocument$Field;)V
.end method

.method public abstract setFieldArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/FieldDocument$Field;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setSelector(Lorg/apache/xmlbeans/impl/xb/xsdschema/SelectorDocument$Selector;)V
.end method

.method public abstract sizeOfFieldArray()I
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlNCName;
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlNCName;)V
.end method
