.class public interface abstract Lcom/microsoft/schemas/office/office/CTDiagram;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/office/CTDiagram;",
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

    const-string v2, "ctdiagramc1cctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/CTDiagram;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/CTDiagram;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewRelationtable()Lcom/microsoft/schemas/office/office/CTRelationTable;
.end method

.method public abstract getAutoformat()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getAutolayout()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getConstrainbounds()Ljava/lang/String;
.end method

.method public abstract getDgmbasetextscale()Ljava/math/BigInteger;
.end method

.method public abstract getDgmfontsize()Ljava/math/BigInteger;
.end method

.method public abstract getDgmscalex()Ljava/math/BigInteger;
.end method

.method public abstract getDgmscaley()Ljava/math/BigInteger;
.end method

.method public abstract getDgmstyle()Ljava/math/BigInteger;
.end method

.method public abstract getExt()Lcom/microsoft/schemas/vml/STExt$Enum;
.end method

.method public abstract getRelationtable()Lcom/microsoft/schemas/office/office/CTRelationTable;
.end method

.method public abstract getReverse()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract isSetAutoformat()Z
.end method

.method public abstract isSetAutolayout()Z
.end method

.method public abstract isSetConstrainbounds()Z
.end method

.method public abstract isSetDgmbasetextscale()Z
.end method

.method public abstract isSetDgmfontsize()Z
.end method

.method public abstract isSetDgmscalex()Z
.end method

.method public abstract isSetDgmscaley()Z
.end method

.method public abstract isSetDgmstyle()Z
.end method

.method public abstract isSetExt()Z
.end method

.method public abstract isSetRelationtable()Z
.end method

.method public abstract isSetReverse()Z
.end method

.method public abstract setAutoformat(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setAutolayout(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setConstrainbounds(Ljava/lang/String;)V
.end method

.method public abstract setDgmbasetextscale(Ljava/math/BigInteger;)V
.end method

.method public abstract setDgmfontsize(Ljava/math/BigInteger;)V
.end method

.method public abstract setDgmscalex(Ljava/math/BigInteger;)V
.end method

.method public abstract setDgmscaley(Ljava/math/BigInteger;)V
.end method

.method public abstract setDgmstyle(Ljava/math/BigInteger;)V
.end method

.method public abstract setExt(Lcom/microsoft/schemas/vml/STExt$Enum;)V
.end method

.method public abstract setRelationtable(Lcom/microsoft/schemas/office/office/CTRelationTable;)V
.end method

.method public abstract setReverse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract unsetAutoformat()V
.end method

.method public abstract unsetAutolayout()V
.end method

.method public abstract unsetConstrainbounds()V
.end method

.method public abstract unsetDgmbasetextscale()V
.end method

.method public abstract unsetDgmfontsize()V
.end method

.method public abstract unsetDgmscalex()V
.end method

.method public abstract unsetDgmscaley()V
.end method

.method public abstract unsetDgmstyle()V
.end method

.method public abstract unsetExt()V
.end method

.method public abstract unsetRelationtable()V
.end method

.method public abstract unsetReverse()V
.end method

.method public abstract xgetAutoformat()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetAutolayout()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetConstrainbounds()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetDgmbasetextscale()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetDgmfontsize()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetDgmscalex()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetDgmscaley()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetDgmstyle()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetExt()Lcom/microsoft/schemas/vml/STExt;
.end method

.method public abstract xgetReverse()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xsetAutoformat(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetAutolayout(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetConstrainbounds(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetDgmbasetextscale(Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetDgmfontsize(Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetDgmscalex(Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetDgmscaley(Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetDgmstyle(Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetExt(Lcom/microsoft/schemas/vml/STExt;)V
.end method

.method public abstract xsetReverse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method
