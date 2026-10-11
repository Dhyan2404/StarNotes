.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBehaviorAttributeNameList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBehaviorAttributeNameList;",
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

    const-string v2, "cttlbehaviorattributenamelist0494type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBehaviorAttributeNameList;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBehaviorAttributeNameList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addAttrName(Ljava/lang/String;)V
.end method

.method public abstract addNewAttrName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract getAttrNameArray(I)Ljava/lang/String;
.end method

.method public abstract getAttrNameArray()[Ljava/lang/String;
.end method

.method public abstract getAttrNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertAttrName(ILjava/lang/String;)V
.end method

.method public abstract insertNewAttrName(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract removeAttrName(I)V
.end method

.method public abstract setAttrNameArray(ILjava/lang/String;)V
.end method

.method public abstract setAttrNameArray([Ljava/lang/String;)V
.end method

.method public abstract sizeOfAttrNameArray()I
.end method

.method public abstract xgetAttrNameArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetAttrNameArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetAttrNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xsetAttrNameArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetAttrNameArray([Lorg/apache/xmlbeans/XmlString;)V
.end method
