.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeAudio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeAudio;",
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

    const-string v2, "cttlmedianodeaudio47bdtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeAudio;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeAudio;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCMediaNode()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;
.end method

.method public abstract getCMediaNode()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;
.end method

.method public abstract getIsNarration()Z
.end method

.method public abstract isSetIsNarration()Z
.end method

.method public abstract setCMediaNode(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;)V
.end method

.method public abstract setIsNarration(Z)V
.end method

.method public abstract unsetIsNarration()V
.end method

.method public abstract xgetIsNarration()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetIsNarration(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
