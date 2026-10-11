.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;
    }
.end annotation


# static fields
.field public static final DARKEN:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

.field public static final DARKEN_LESS:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_DARKEN:I = 0x5

.field public static final INT_DARKEN_LESS:I = 0x6

.field public static final INT_LIGHTEN:I = 0x3

.field public static final INT_LIGHTEN_LESS:I = 0x4

.field public static final INT_NONE:I = 0x1

.field public static final INT_NORM:I = 0x2

.field public static final LIGHTEN:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

.field public static final LIGHTEN_LESS:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

.field public static final NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

.field public static final NORM:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stpathfillmode3cf6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    const-string v0, "norm"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;->NORM:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    const-string v0, "lighten"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;->LIGHTEN:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    const-string v0, "lightenLess"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;->LIGHTEN_LESS:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    const-string v0, "darken"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;->DARKEN:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    const-string v0, "darkenLess"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;->DARKEN_LESS:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
