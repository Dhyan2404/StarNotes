.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;
    }
.end annotation


# static fields
.field public static final AUTO:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

.field public static final B_CTR:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

.field public static final B_L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

.field public static final B_R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

.field public static final CTR:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_AUTO:I = 0x1

.field public static final INT_B_CTR:I = 0x2

.field public static final INT_B_L:I = 0x7

.field public static final INT_B_R:I = 0x8

.field public static final INT_CTR:I = 0x3

.field public static final INT_MID_L:I = 0x4

.field public static final INT_MID_R:I = 0x5

.field public static final INT_RADIAL:I = 0xb

.field public static final INT_T_CTR:I = 0x6

.field public static final INT_T_L:I = 0x9

.field public static final INT_T_R:I = 0xa

.field public static final MID_L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

.field public static final MID_R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

.field public static final RADIAL:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

.field public static final T_CTR:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

.field public static final T_L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

.field public static final T_R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stconnectorpoint387etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "auto"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint;->AUTO:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    const-string v0, "bCtr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint;->B_CTR:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    const-string v0, "ctr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint;->CTR:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    const-string v0, "midL"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint;->MID_L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    const-string v0, "midR"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint;->MID_R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    const-string v0, "tCtr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint;->T_CTR:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    const-string v0, "bL"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint;->B_L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    const-string v0, "bR"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint;->B_R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    const-string v0, "tL"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint;->T_L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    const-string v0, "tR"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint;->T_R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    const-string v0, "radial"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint;->RADIAL:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STConnectorPoint$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
