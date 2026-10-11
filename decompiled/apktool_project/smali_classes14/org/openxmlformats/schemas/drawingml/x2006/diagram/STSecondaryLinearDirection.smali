.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;
    }
.end annotation


# static fields
.field public static final FROM_B:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;

.field public static final FROM_L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;

.field public static final FROM_R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;

.field public static final FROM_T:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_FROM_B:I = 0x5

.field public static final INT_FROM_L:I = 0x2

.field public static final INT_FROM_R:I = 0x3

.field public static final INT_FROM_T:I = 0x4

.field public static final INT_NONE:I = 0x1

.field public static final NONE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stsecondarylineardirectioneb9btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;

    const-string v0, "fromL"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection;->FROM_L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;

    const-string v0, "fromR"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection;->FROM_R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;

    const-string v0, "fromT"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection;->FROM_T:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;

    const-string v0, "fromB"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection;->FROM_B:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STSecondaryLinearDirection$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
