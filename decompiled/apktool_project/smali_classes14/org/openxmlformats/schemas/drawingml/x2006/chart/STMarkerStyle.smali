.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;
    }
.end annotation


# static fields
.field public static final AUTO:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final CIRCLE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final DASH:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final DIAMOND:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final DOT:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_AUTO:I = 0xc

.field public static final INT_CIRCLE:I = 0x1

.field public static final INT_DASH:I = 0x2

.field public static final INT_DIAMOND:I = 0x3

.field public static final INT_DOT:I = 0x4

.field public static final INT_NONE:I = 0x5

.field public static final INT_PICTURE:I = 0x6

.field public static final INT_PLUS:I = 0x7

.field public static final INT_SQUARE:I = 0x8

.field public static final INT_STAR:I = 0x9

.field public static final INT_TRIANGLE:I = 0xa

.field public static final INT_X:I = 0xb

.field public static final NONE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final PICTURE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final PLUS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final SQUARE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final STAR:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final TRIANGLE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final X:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stmarkerstyle177ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "circle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->CIRCLE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v0, "dash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->DASH:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v0, "diamond"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->DIAMOND:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v0, "dot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->DOT:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v0, "picture"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->PICTURE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v0, "plus"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->PLUS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v0, "square"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->SQUARE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v0, "star"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->STAR:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v0, "triangle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->TRIANGLE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v0, "x"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->X:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v0, "auto"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;->AUTO:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
