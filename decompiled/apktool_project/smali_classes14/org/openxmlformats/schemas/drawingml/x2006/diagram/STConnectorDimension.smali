.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension$Enum;
    }
.end annotation


# static fields
.field public static final CUST:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CUST:I = 0x3

.field public static final INT_X_1_D:I = 0x1

.field public static final INT_X_2_D:I = 0x2

.field public static final X_1_D:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension$Enum;

.field public static final X_2_D:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stconnectordimension2968type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "1D"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension;->X_1_D:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension$Enum;

    const-string v0, "2D"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension;->X_2_D:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension$Enum;

    const-string v0, "cust"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension;->CUST:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorDimension$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
