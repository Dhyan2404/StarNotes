.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;",
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

    const-string v2, "cttlcommonbehaviordata6ca6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAttrNameLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBehaviorAttributeNameList;
.end method

.method public abstract addNewCTn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;
.end method

.method public abstract addNewTgtEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;
.end method

.method public abstract getAccumulate()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAccumulateType$Enum;
.end method

.method public abstract getAdditive()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;
.end method

.method public abstract getAttrNameLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBehaviorAttributeNameList;
.end method

.method public abstract getBy()Ljava/lang/String;
.end method

.method public abstract getCTn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;
.end method

.method public abstract getFrom()Ljava/lang/String;
.end method

.method public abstract getOverride()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorOverrideType$Enum;
.end method

.method public abstract getRctx()Ljava/lang/String;
.end method

.method public abstract getTgtEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;
.end method

.method public abstract getTo()Ljava/lang/String;
.end method

.method public abstract getXfrmType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorTransformType$Enum;
.end method

.method public abstract isSetAccumulate()Z
.end method

.method public abstract isSetAdditive()Z
.end method

.method public abstract isSetAttrNameLst()Z
.end method

.method public abstract isSetBy()Z
.end method

.method public abstract isSetFrom()Z
.end method

.method public abstract isSetOverride()Z
.end method

.method public abstract isSetRctx()Z
.end method

.method public abstract isSetTo()Z
.end method

.method public abstract isSetXfrmType()Z
.end method

.method public abstract setAccumulate(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAccumulateType$Enum;)V
.end method

.method public abstract setAdditive(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;)V
.end method

.method public abstract setAttrNameLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBehaviorAttributeNameList;)V
.end method

.method public abstract setBy(Ljava/lang/String;)V
.end method

.method public abstract setCTn(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;)V
.end method

.method public abstract setFrom(Ljava/lang/String;)V
.end method

.method public abstract setOverride(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorOverrideType$Enum;)V
.end method

.method public abstract setRctx(Ljava/lang/String;)V
.end method

.method public abstract setTgtEl(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;)V
.end method

.method public abstract setTo(Ljava/lang/String;)V
.end method

.method public abstract setXfrmType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorTransformType$Enum;)V
.end method

.method public abstract unsetAccumulate()V
.end method

.method public abstract unsetAdditive()V
.end method

.method public abstract unsetAttrNameLst()V
.end method

.method public abstract unsetBy()V
.end method

.method public abstract unsetFrom()V
.end method

.method public abstract unsetOverride()V
.end method

.method public abstract unsetRctx()V
.end method

.method public abstract unsetTo()V
.end method

.method public abstract unsetXfrmType()V
.end method

.method public abstract xgetAccumulate()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAccumulateType;
.end method

.method public abstract xgetAdditive()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType;
.end method

.method public abstract xgetBy()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFrom()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetOverride()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorOverrideType;
.end method

.method public abstract xgetRctx()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTo()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetXfrmType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorTransformType;
.end method

.method public abstract xsetAccumulate(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAccumulateType;)V
.end method

.method public abstract xsetAdditive(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType;)V
.end method

.method public abstract xsetBy(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFrom(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetOverride(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorOverrideType;)V
.end method

.method public abstract xsetRctx(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTo(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetXfrmType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorTransformType;)V
.end method
