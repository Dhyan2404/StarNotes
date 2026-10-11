.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateEffectBehavior;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateEffectBehavior;",
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

    const-string v2, "cttlanimateeffectbehavior5083type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateEffectBehavior;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateEffectBehavior;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCBhvr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;
.end method

.method public abstract addNewProgress()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariant;
.end method

.method public abstract getCBhvr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;
.end method

.method public abstract getFilter()Ljava/lang/String;
.end method

.method public abstract getPrLst()Ljava/lang/String;
.end method

.method public abstract getProgress()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariant;
.end method

.method public abstract getTransition()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateEffectTransition$Enum;
.end method

.method public abstract isSetFilter()Z
.end method

.method public abstract isSetPrLst()Z
.end method

.method public abstract isSetProgress()Z
.end method

.method public abstract isSetTransition()Z
.end method

.method public abstract setCBhvr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;)V
.end method

.method public abstract setFilter(Ljava/lang/String;)V
.end method

.method public abstract setPrLst(Ljava/lang/String;)V
.end method

.method public abstract setProgress(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariant;)V
.end method

.method public abstract setTransition(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateEffectTransition$Enum;)V
.end method

.method public abstract unsetFilter()V
.end method

.method public abstract unsetPrLst()V
.end method

.method public abstract unsetProgress()V
.end method

.method public abstract unsetTransition()V
.end method

.method public abstract xgetFilter()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPrLst()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTransition()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateEffectTransition;
.end method

.method public abstract xsetFilter(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPrLst(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTransition(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateEffectTransition;)V
.end method
