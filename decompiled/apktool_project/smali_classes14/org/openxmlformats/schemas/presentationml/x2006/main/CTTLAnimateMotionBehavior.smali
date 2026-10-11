.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateMotionBehavior;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateMotionBehavior;",
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

    const-string v2, "cttlanimatemotionbehavior043etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateMotionBehavior;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateMotionBehavior;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBy()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLPoint;
.end method

.method public abstract addNewCBhvr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;
.end method

.method public abstract addNewFrom()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLPoint;
.end method

.method public abstract addNewRCtr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLPoint;
.end method

.method public abstract addNewTo()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLPoint;
.end method

.method public abstract getBy()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLPoint;
.end method

.method public abstract getCBhvr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;
.end method

.method public abstract getFrom()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLPoint;
.end method

.method public abstract getOrigin()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateMotionBehaviorOrigin$Enum;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPathEditMode()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateMotionPathEditMode$Enum;
.end method

.method public abstract getPtsTypes()Ljava/lang/String;
.end method

.method public abstract getRAng()I
.end method

.method public abstract getRCtr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLPoint;
.end method

.method public abstract getTo()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLPoint;
.end method

.method public abstract isSetBy()Z
.end method

.method public abstract isSetFrom()Z
.end method

.method public abstract isSetOrigin()Z
.end method

.method public abstract isSetPath()Z
.end method

.method public abstract isSetPathEditMode()Z
.end method

.method public abstract isSetPtsTypes()Z
.end method

.method public abstract isSetRAng()Z
.end method

.method public abstract isSetRCtr()Z
.end method

.method public abstract isSetTo()Z
.end method

.method public abstract setBy(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLPoint;)V
.end method

.method public abstract setCBhvr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;)V
.end method

.method public abstract setFrom(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLPoint;)V
.end method

.method public abstract setOrigin(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateMotionBehaviorOrigin$Enum;)V
.end method

.method public abstract setPath(Ljava/lang/String;)V
.end method

.method public abstract setPathEditMode(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateMotionPathEditMode$Enum;)V
.end method

.method public abstract setPtsTypes(Ljava/lang/String;)V
.end method

.method public abstract setRAng(I)V
.end method

.method public abstract setRCtr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLPoint;)V
.end method

.method public abstract setTo(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLPoint;)V
.end method

.method public abstract unsetBy()V
.end method

.method public abstract unsetFrom()V
.end method

.method public abstract unsetOrigin()V
.end method

.method public abstract unsetPath()V
.end method

.method public abstract unsetPathEditMode()V
.end method

.method public abstract unsetPtsTypes()V
.end method

.method public abstract unsetRAng()V
.end method

.method public abstract unsetRCtr()V
.end method

.method public abstract unsetTo()V
.end method

.method public abstract xgetOrigin()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateMotionBehaviorOrigin;
.end method

.method public abstract xgetPath()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPathEditMode()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateMotionPathEditMode;
.end method

.method public abstract xgetPtsTypes()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetRAng()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAngle;
.end method

.method public abstract xsetOrigin(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateMotionBehaviorOrigin;)V
.end method

.method public abstract xsetPath(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPathEditMode(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateMotionPathEditMode;)V
.end method

.method public abstract xsetPtsTypes(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetRAng(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAngle;)V
.end method
