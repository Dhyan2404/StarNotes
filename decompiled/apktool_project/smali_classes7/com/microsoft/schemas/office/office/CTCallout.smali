.class public interface abstract Lcom/microsoft/schemas/office/office/CTCallout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/office/CTCallout;",
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

    const-string v2, "ctcallouta029type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/CTCallout;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/CTCallout;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAccentbar()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getAngle()Lcom/microsoft/schemas/office/office/STAngle$Enum;
.end method

.method public abstract getDistance()Ljava/lang/String;
.end method

.method public abstract getDrop()Ljava/lang/String;
.end method

.method public abstract getDropauto()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getExt()Lcom/microsoft/schemas/vml/STExt$Enum;
.end method

.method public abstract getGap()Ljava/lang/String;
.end method

.method public abstract getLength()Ljava/lang/String;
.end method

.method public abstract getLengthspecified()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getMinusx()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getMinusy()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getOn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getTextborder()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract isSetAccentbar()Z
.end method

.method public abstract isSetAngle()Z
.end method

.method public abstract isSetDistance()Z
.end method

.method public abstract isSetDrop()Z
.end method

.method public abstract isSetDropauto()Z
.end method

.method public abstract isSetExt()Z
.end method

.method public abstract isSetGap()Z
.end method

.method public abstract isSetLength()Z
.end method

.method public abstract isSetLengthspecified()Z
.end method

.method public abstract isSetMinusx()Z
.end method

.method public abstract isSetMinusy()Z
.end method

.method public abstract isSetOn()Z
.end method

.method public abstract isSetTextborder()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract setAccentbar(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setAngle(Lcom/microsoft/schemas/office/office/STAngle$Enum;)V
.end method

.method public abstract setDistance(Ljava/lang/String;)V
.end method

.method public abstract setDrop(Ljava/lang/String;)V
.end method

.method public abstract setDropauto(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setExt(Lcom/microsoft/schemas/vml/STExt$Enum;)V
.end method

.method public abstract setGap(Ljava/lang/String;)V
.end method

.method public abstract setLength(Ljava/lang/String;)V
.end method

.method public abstract setLengthspecified(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setMinusx(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setMinusy(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setOn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setTextborder(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setType(Ljava/lang/String;)V
.end method

.method public abstract unsetAccentbar()V
.end method

.method public abstract unsetAngle()V
.end method

.method public abstract unsetDistance()V
.end method

.method public abstract unsetDrop()V
.end method

.method public abstract unsetDropauto()V
.end method

.method public abstract unsetExt()V
.end method

.method public abstract unsetGap()V
.end method

.method public abstract unsetLength()V
.end method

.method public abstract unsetLengthspecified()V
.end method

.method public abstract unsetMinusx()V
.end method

.method public abstract unsetMinusy()V
.end method

.method public abstract unsetOn()V
.end method

.method public abstract unsetTextborder()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetAccentbar()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetAngle()Lcom/microsoft/schemas/office/office/STAngle;
.end method

.method public abstract xgetDistance()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetDrop()Lcom/microsoft/schemas/office/office/STCalloutDrop;
.end method

.method public abstract xgetDropauto()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetExt()Lcom/microsoft/schemas/vml/STExt;
.end method

.method public abstract xgetGap()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetLength()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetLengthspecified()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetMinusx()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetMinusy()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetOn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetTextborder()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetType()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetAccentbar(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetAngle(Lcom/microsoft/schemas/office/office/STAngle;)V
.end method

.method public abstract xsetDistance(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetDrop(Lcom/microsoft/schemas/office/office/STCalloutDrop;)V
.end method

.method public abstract xsetDropauto(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetExt(Lcom/microsoft/schemas/vml/STExt;)V
.end method

.method public abstract xsetGap(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetLength(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetLengthspecified(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetMinusx(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetMinusy(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetOn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetTextborder(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetType(Lorg/apache/xmlbeans/XmlString;)V
.end method
