.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;
    }
.end annotation


# static fields
.field public static final EXP:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_EXP:I = 0x1

.field public static final INT_LINEAR:I = 0x2

.field public static final INT_LOG:I = 0x3

.field public static final INT_MOVING_AVG:I = 0x4

.field public static final INT_POLY:I = 0x5

.field public static final INT_POWER:I = 0x6

.field public static final LINEAR:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

.field public static final LOG:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

.field public static final MOVING_AVG:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

.field public static final POLY:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

.field public static final POWER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttrendlinetype1f6btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "exp"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType;->EXP:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

    const-string v0, "linear"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType;->LINEAR:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

    const-string v0, "log"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType;->LOG:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

    const-string v0, "movingAvg"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType;->MOVING_AVG:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

    const-string v0, "poly"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType;->POLY:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

    const-string v0, "power"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType;->POWER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTrendlineType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
