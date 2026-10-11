.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;
    }
.end annotation


# static fields
.field public static final BOX:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

.field public static final CONE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

.field public static final CONE_TO_MAX:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

.field public static final CYLINDER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BOX:I = 0x3

.field public static final INT_CONE:I = 0x1

.field public static final INT_CONE_TO_MAX:I = 0x2

.field public static final INT_CYLINDER:I = 0x4

.field public static final INT_PYRAMID:I = 0x5

.field public static final INT_PYRAMID_TO_MAX:I = 0x6

.field public static final PYRAMID:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

.field public static final PYRAMID_TO_MAX:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stshapecdf5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "cone"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape;->CONE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

    const-string v0, "coneToMax"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape;->CONE_TO_MAX:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

    const-string v0, "box"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape;->BOX:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

    const-string v0, "cylinder"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape;->CYLINDER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

    const-string v0, "pyramid"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape;->PYRAMID:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

    const-string v0, "pyramidToMax"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape;->PYRAMID_TO_MAX:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STShape$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
