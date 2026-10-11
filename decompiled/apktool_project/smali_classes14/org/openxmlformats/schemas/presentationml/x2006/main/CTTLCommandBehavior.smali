.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommandBehavior;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommandBehavior;",
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

    const-string v2, "cttlcommandbehavior902atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommandBehavior;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommandBehavior;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCBhvr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;
.end method

.method public abstract getCBhvr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;
.end method

.method public abstract getCmd()Ljava/lang/String;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType$Enum;
.end method

.method public abstract isSetCmd()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract setCBhvr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonBehaviorData;)V
.end method

.method public abstract setCmd(Ljava/lang/String;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType$Enum;)V
.end method

.method public abstract unsetCmd()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetCmd()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType;
.end method

.method public abstract xsetCmd(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType;)V
.end method
