.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;
    }
.end annotation


# static fields
.field public static final CENTER:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSIDE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;

.field public static final INT_CENTER:I = 0x3

.field public static final INT_INSIDE:I = 0x4

.field public static final INT_LEFT:I = 0x1

.field public static final INT_OUTSIDE:I = 0x5

.field public static final INT_RIGHT:I = 0x2

.field public static final LEFT:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;

.field public static final OUTSIDE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;

.field public static final RIGHT:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stalignh768ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "left"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH;->LEFT:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;

    const-string v0, "right"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH;->RIGHT:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;

    const-string v0, "center"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH;->CENTER:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;

    const-string v0, "inside"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH;->INSIDE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;

    const-string v0, "outside"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH;->OUTSIDE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
