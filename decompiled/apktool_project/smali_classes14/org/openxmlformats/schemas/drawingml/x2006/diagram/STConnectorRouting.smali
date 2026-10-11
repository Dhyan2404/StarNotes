.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting$Enum;
    }
.end annotation


# static fields
.field public static final BEND:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting$Enum;

.field public static final CURVE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BEND:I = 0x2

.field public static final INT_CURVE:I = 0x3

.field public static final INT_LONG_CURVE:I = 0x4

.field public static final INT_STRA:I = 0x1

.field public static final LONG_CURVE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting$Enum;

.field public static final STRA:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stconnectorrouting1808type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "stra"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting;->STRA:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting$Enum;

    const-string v0, "bend"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting;->BEND:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting$Enum;

    const-string v0, "curve"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting;->CURVE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting$Enum;

    const-string v0, "longCurve"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting;->LONG_CURVE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorRouting$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
