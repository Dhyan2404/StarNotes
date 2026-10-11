.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSampleData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSampleData;",
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

    const-string v2, "ctsampledata6dfdtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSampleData;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTSampleData;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDataModel()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDataModel;
.end method

.method public abstract getDataModel()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDataModel;
.end method

.method public abstract getUseDef()Z
.end method

.method public abstract isSetDataModel()Z
.end method

.method public abstract isSetUseDef()Z
.end method

.method public abstract setDataModel(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDataModel;)V
.end method

.method public abstract setUseDef(Z)V
.end method

.method public abstract unsetDataModel()V
.end method

.method public abstract unsetUseDef()V
.end method

.method public abstract xgetUseDef()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetUseDef(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
