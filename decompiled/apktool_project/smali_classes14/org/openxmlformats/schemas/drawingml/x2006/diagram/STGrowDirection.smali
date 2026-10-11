.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection$Enum;
    }
.end annotation


# static fields
.field public static final B_L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection$Enum;

.field public static final B_R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_B_L:I = 0x3

.field public static final INT_B_R:I = 0x4

.field public static final INT_T_L:I = 0x1

.field public static final INT_T_R:I = 0x2

.field public static final T_L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection$Enum;

.field public static final T_R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stgrowdirectione57ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "tL"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection;->T_L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection$Enum;

    const-string v0, "tR"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection;->T_R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection$Enum;

    const-string v0, "bL"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection;->B_L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection$Enum;

    const-string v0, "bR"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection;->B_R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STGrowDirection$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
