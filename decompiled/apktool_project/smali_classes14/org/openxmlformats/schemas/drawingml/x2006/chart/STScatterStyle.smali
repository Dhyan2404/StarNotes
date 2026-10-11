.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_LINE:I = 0x2

.field public static final INT_LINE_MARKER:I = 0x3

.field public static final INT_MARKER:I = 0x4

.field public static final INT_NONE:I = 0x1

.field public static final INT_SMOOTH:I = 0x5

.field public static final INT_SMOOTH_MARKER:I = 0x6

.field public static final LINE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

.field public static final LINE_MARKER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

.field public static final MARKER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

.field public static final NONE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

.field public static final SMOOTH:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

.field public static final SMOOTH_MARKER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stscatterstyle9eb9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    const-string v0, "line"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle;->LINE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    const-string v0, "lineMarker"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle;->LINE_MARKER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    const-string v0, "marker"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle;->MARKER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    const-string v0, "smooth"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle;->SMOOTH:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    const-string v0, "smoothMarker"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle;->SMOOTH_MARKER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
