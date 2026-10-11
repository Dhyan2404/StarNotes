.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/CTAdditionalCharacteristics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/CTAdditionalCharacteristics;",
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

    const-string v2, "ctadditionalcharacteristics01f5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/CTAdditionalCharacteristics;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/CTAdditionalCharacteristics;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCharacteristic()Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/CTCharacteristic;
.end method

.method public abstract getCharacteristicArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/CTCharacteristic;
.end method

.method public abstract getCharacteristicArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/CTCharacteristic;
.end method

.method public abstract getCharacteristicList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/CTCharacteristic;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewCharacteristic(I)Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/CTCharacteristic;
.end method

.method public abstract removeCharacteristic(I)V
.end method

.method public abstract setCharacteristicArray(ILorg/openxmlformats/schemas/officeDocument/x2006/characteristics/CTCharacteristic;)V
.end method

.method public abstract setCharacteristicArray([Lorg/openxmlformats/schemas/officeDocument/x2006/characteristics/CTCharacteristic;)V
.end method

.method public abstract sizeOfCharacteristicArray()I
.end method
