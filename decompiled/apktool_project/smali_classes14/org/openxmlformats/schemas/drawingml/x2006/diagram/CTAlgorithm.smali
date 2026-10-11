.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAlgorithm;",
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

    const-string v2, "ctalgorithmb98ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAlgorithm;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAlgorithm;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewParam()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTParameter;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getParamArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTParameter;
.end method

.method public abstract getParamArray()[Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTParameter;
.end method

.method public abstract getParamList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTParameter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRev()J
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;
.end method

.method public abstract insertNewParam(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTParameter;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetRev()Z
.end method

.method public abstract removeParam(I)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setParamArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTParameter;)V
.end method

.method public abstract setParamArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTParameter;)V
.end method

.method public abstract setRev(J)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;)V
.end method

.method public abstract sizeOfParamArray()I
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetRev()V
.end method

.method public abstract xgetRev()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType;
.end method

.method public abstract xsetRev(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType;)V
.end method
