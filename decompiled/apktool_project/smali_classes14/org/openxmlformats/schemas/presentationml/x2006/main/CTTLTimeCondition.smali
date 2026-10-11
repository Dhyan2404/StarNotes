.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;",
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

    const-string v2, "cttltimecondition1eb9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewRtn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerRuntimeNode;
.end method

.method public abstract addNewTgtEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;
.end method

.method public abstract addNewTn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerTimeNodeID;
.end method

.method public abstract getDelay()Ljava/lang/Object;
.end method

.method public abstract getEvt()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;
.end method

.method public abstract getRtn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerRuntimeNode;
.end method

.method public abstract getTgtEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;
.end method

.method public abstract getTn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerTimeNodeID;
.end method

.method public abstract isSetDelay()Z
.end method

.method public abstract isSetEvt()Z
.end method

.method public abstract isSetRtn()Z
.end method

.method public abstract isSetTgtEl()Z
.end method

.method public abstract isSetTn()Z
.end method

.method public abstract setDelay(Ljava/lang/Object;)V
.end method

.method public abstract setEvt(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;)V
.end method

.method public abstract setRtn(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerRuntimeNode;)V
.end method

.method public abstract setTgtEl(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;)V
.end method

.method public abstract setTn(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerTimeNodeID;)V
.end method

.method public abstract unsetDelay()V
.end method

.method public abstract unsetEvt()V
.end method

.method public abstract unsetRtn()V
.end method

.method public abstract unsetTgtEl()V
.end method

.method public abstract unsetTn()V
.end method

.method public abstract xgetDelay()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;
.end method

.method public abstract xgetEvt()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;
.end method

.method public abstract xsetDelay(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;)V
.end method

.method public abstract xsetEvt(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;)V
.end method
