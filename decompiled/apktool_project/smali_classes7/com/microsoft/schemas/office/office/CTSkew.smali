.class public interface abstract Lcom/microsoft/schemas/office/office/CTSkew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/office/CTSkew;",
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

    const-string v2, "ctskew006dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/CTSkew;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/CTSkew;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getExt()Lcom/microsoft/schemas/vml/STExt$Enum;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getMatrix()Ljava/lang/String;
.end method

.method public abstract getOffset()Ljava/lang/String;
.end method

.method public abstract getOn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getOrigin()Ljava/lang/String;
.end method

.method public abstract isSetExt()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetMatrix()Z
.end method

.method public abstract isSetOffset()Z
.end method

.method public abstract isSetOn()Z
.end method

.method public abstract isSetOrigin()Z
.end method

.method public abstract setExt(Lcom/microsoft/schemas/vml/STExt$Enum;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setMatrix(Ljava/lang/String;)V
.end method

.method public abstract setOffset(Ljava/lang/String;)V
.end method

.method public abstract setOn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setOrigin(Ljava/lang/String;)V
.end method

.method public abstract unsetExt()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetMatrix()V
.end method

.method public abstract unsetOffset()V
.end method

.method public abstract unsetOn()V
.end method

.method public abstract unsetOrigin()V
.end method

.method public abstract xgetExt()Lcom/microsoft/schemas/vml/STExt;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetMatrix()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetOffset()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetOn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetOrigin()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetExt(Lcom/microsoft/schemas/vml/STExt;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetMatrix(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetOffset(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetOn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetOrigin(Lorg/apache/xmlbeans/XmlString;)V
.end method
