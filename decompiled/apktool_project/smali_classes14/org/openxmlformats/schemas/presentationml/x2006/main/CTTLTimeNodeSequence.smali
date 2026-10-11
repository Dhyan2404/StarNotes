.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeSequence;",
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

    const-string v2, "cttltimenodesequenced31dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeSequence;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeSequence;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCTn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;
.end method

.method public abstract addNewNextCondLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;
.end method

.method public abstract addNewPrevCondLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;
.end method

.method public abstract getCTn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;
.end method

.method public abstract getConcurrent()Z
.end method

.method public abstract getNextAc()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLNextActionType$Enum;
.end method

.method public abstract getNextCondLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;
.end method

.method public abstract getPrevAc()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLPreviousActionType$Enum;
.end method

.method public abstract getPrevCondLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;
.end method

.method public abstract isSetConcurrent()Z
.end method

.method public abstract isSetNextAc()Z
.end method

.method public abstract isSetNextCondLst()Z
.end method

.method public abstract isSetPrevAc()Z
.end method

.method public abstract isSetPrevCondLst()Z
.end method

.method public abstract setCTn(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;)V
.end method

.method public abstract setConcurrent(Z)V
.end method

.method public abstract setNextAc(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLNextActionType$Enum;)V
.end method

.method public abstract setNextCondLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;)V
.end method

.method public abstract setPrevAc(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLPreviousActionType$Enum;)V
.end method

.method public abstract setPrevCondLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;)V
.end method

.method public abstract unsetConcurrent()V
.end method

.method public abstract unsetNextAc()V
.end method

.method public abstract unsetNextCondLst()V
.end method

.method public abstract unsetPrevAc()V
.end method

.method public abstract unsetPrevCondLst()V
.end method

.method public abstract xgetConcurrent()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNextAc()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLNextActionType;
.end method

.method public abstract xgetPrevAc()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLPreviousActionType;
.end method

.method public abstract xsetConcurrent(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNextAc(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLNextActionType;)V
.end method

.method public abstract xsetPrevAc(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLPreviousActionType;)V
.end method
