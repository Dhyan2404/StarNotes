.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateColorBehavior;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateColorBehavior;",
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

    const-string v2, "cttlanimatecolorbehavior50f9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateColorBehavior;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateColorBehavior;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBy()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLByAnimateColorTransform;
.end method

.method public abstract addNewCBhvr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;
.end method

.method public abstract addNewFrom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract addNewTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract getBy()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLByAnimateColorTransform;
.end method

.method public abstract getCBhvr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;
.end method

.method public abstract getClrSpc()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateColorSpace$Enum;
.end method

.method public abstract getDir()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateColorDirection$Enum;
.end method

.method public abstract getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract getTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract isSetBy()Z
.end method

.method public abstract isSetClrSpc()Z
.end method

.method public abstract isSetDir()Z
.end method

.method public abstract isSetFrom()Z
.end method

.method public abstract isSetTo()Z
.end method

.method public abstract setBy(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLByAnimateColorTransform;)V
.end method

.method public abstract setCBhvr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;)V
.end method

.method public abstract setClrSpc(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateColorSpace$Enum;)V
.end method

.method public abstract setDir(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateColorDirection$Enum;)V
.end method

.method public abstract setFrom(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
.end method

.method public abstract setTo(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
.end method

.method public abstract unsetBy()V
.end method

.method public abstract unsetClrSpc()V
.end method

.method public abstract unsetDir()V
.end method

.method public abstract unsetFrom()V
.end method

.method public abstract unsetTo()V
.end method

.method public abstract xgetClrSpc()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateColorSpace;
.end method

.method public abstract xgetDir()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateColorDirection;
.end method

.method public abstract xsetClrSpc(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateColorSpace;)V
.end method

.method public abstract xsetDir(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateColorDirection;)V
.end method
