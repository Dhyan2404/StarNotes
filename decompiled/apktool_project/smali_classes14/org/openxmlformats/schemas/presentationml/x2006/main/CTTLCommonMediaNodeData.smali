.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;",
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

    const-string v2, "cttlcommonmedianodedatab6c2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCTn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;
.end method

.method public abstract addNewTgtEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;
.end method

.method public abstract getCTn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;
.end method

.method public abstract getMute()Z
.end method

.method public abstract getNumSld()J
.end method

.method public abstract getShowWhenStopped()Z
.end method

.method public abstract getTgtEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;
.end method

.method public abstract getVol()Ljava/lang/Object;
.end method

.method public abstract isSetMute()Z
.end method

.method public abstract isSetNumSld()Z
.end method

.method public abstract isSetShowWhenStopped()Z
.end method

.method public abstract isSetVol()Z
.end method

.method public abstract setCTn(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setNumSld(J)V
.end method

.method public abstract setShowWhenStopped(Z)V
.end method

.method public abstract setTgtEl(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;)V
.end method

.method public abstract setVol(Ljava/lang/Object;)V
.end method

.method public abstract unsetMute()V
.end method

.method public abstract unsetNumSld()V
.end method

.method public abstract unsetShowWhenStopped()V
.end method

.method public abstract unsetVol()V
.end method

.method public abstract xgetMute()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNumSld()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetShowWhenStopped()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetVol()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;
.end method

.method public abstract xsetMute(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNumSld(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetShowWhenStopped(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetVol(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;)V
.end method
