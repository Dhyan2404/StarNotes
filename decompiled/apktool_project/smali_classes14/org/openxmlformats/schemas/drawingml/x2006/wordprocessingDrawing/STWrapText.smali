.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;
    }
.end annotation


# static fields
.field public static final BOTH_SIDES:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BOTH_SIDES:I = 0x1

.field public static final INT_LARGEST:I = 0x4

.field public static final INT_LEFT:I = 0x2

.field public static final INT_RIGHT:I = 0x3

.field public static final LARGEST:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;

.field public static final LEFT:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;

.field public static final RIGHT:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stwraptext4a98type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "bothSides"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText;->BOTH_SIDES:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;

    const-string v0, "left"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText;->LEFT:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;

    const-string v0, "right"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText;->RIGHT:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;

    const-string v0, "largest"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText;->LARGEST:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
