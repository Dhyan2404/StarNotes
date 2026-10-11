.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle$Enum;
    }
.end annotation


# static fields
.field public static final FILLED:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_FILLED:I = 0x3

.field public static final INT_MARKER:I = 0x2

.field public static final INT_STANDARD:I = 0x1

.field public static final MARKER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle$Enum;

.field public static final STANDARD:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stradarstyle3dc1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "standard"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle;->STANDARD:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle$Enum;

    const-string v0, "marker"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle;->MARKER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle$Enum;

    const-string v0, "filled"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle;->FILLED:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STRadarStyle$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
