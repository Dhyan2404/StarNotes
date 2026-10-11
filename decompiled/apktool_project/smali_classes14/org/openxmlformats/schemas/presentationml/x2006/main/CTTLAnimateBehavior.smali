.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateBehavior;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateBehavior;",
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

    const-string v2, "cttlanimatebehavior3cd4type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateBehavior;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateBehavior;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCBhvr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;
.end method

.method public abstract addNewTavLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeAnimateValueList;
.end method

.method public abstract getBy()Ljava/lang/String;
.end method

.method public abstract getCBhvr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;
.end method

.method public abstract getCalcmode()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorCalcMode$Enum;
.end method

.method public abstract getFrom()Ljava/lang/String;
.end method

.method public abstract getTavLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeAnimateValueList;
.end method

.method public abstract getTo()Ljava/lang/String;
.end method

.method public abstract getValueType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType$Enum;
.end method

.method public abstract isSetBy()Z
.end method

.method public abstract isSetCalcmode()Z
.end method

.method public abstract isSetFrom()Z
.end method

.method public abstract isSetTavLst()Z
.end method

.method public abstract isSetTo()Z
.end method

.method public abstract isSetValueType()Z
.end method

.method public abstract setBy(Ljava/lang/String;)V
.end method

.method public abstract setCBhvr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;)V
.end method

.method public abstract setCalcmode(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorCalcMode$Enum;)V
.end method

.method public abstract setFrom(Ljava/lang/String;)V
.end method

.method public abstract setTavLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeAnimateValueList;)V
.end method

.method public abstract setTo(Ljava/lang/String;)V
.end method

.method public abstract setValueType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType$Enum;)V
.end method

.method public abstract unsetBy()V
.end method

.method public abstract unsetCalcmode()V
.end method

.method public abstract unsetFrom()V
.end method

.method public abstract unsetTavLst()V
.end method

.method public abstract unsetTo()V
.end method

.method public abstract unsetValueType()V
.end method

.method public abstract xgetBy()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetCalcmode()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorCalcMode;
.end method

.method public abstract xgetFrom()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTo()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetValueType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType;
.end method

.method public abstract xsetBy(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetCalcmode(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorCalcMode;)V
.end method

.method public abstract xsetFrom(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTo(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetValueType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType;)V
.end method
