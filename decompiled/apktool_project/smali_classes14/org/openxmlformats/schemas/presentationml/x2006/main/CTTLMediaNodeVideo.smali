.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo;",
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

    const-string v2, "cttlmedianodevideoe3f8type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCMediaNode()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;
.end method

.method public abstract getCMediaNode()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;
.end method

.method public abstract getFullScrn()Z
.end method

.method public abstract isSetFullScrn()Z
.end method

.method public abstract setCMediaNode(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;)V
.end method

.method public abstract setFullScrn(Z)V
.end method

.method public abstract unsetFullScrn()V
.end method

.method public abstract xgetFullScrn()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetFullScrn(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
