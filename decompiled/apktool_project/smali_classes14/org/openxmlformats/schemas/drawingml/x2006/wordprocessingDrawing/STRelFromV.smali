.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;
    }
.end annotation


# static fields
.field public static final BOTTOM_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSIDE_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

.field public static final INT_BOTTOM_MARGIN:I = 0x6

.field public static final INT_INSIDE_MARGIN:I = 0x7

.field public static final INT_LINE:I = 0x4

.field public static final INT_MARGIN:I = 0x1

.field public static final INT_OUTSIDE_MARGIN:I = 0x8

.field public static final INT_PAGE:I = 0x2

.field public static final INT_PARAGRAPH:I = 0x3

.field public static final INT_TOP_MARGIN:I = 0x5

.field public static final LINE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

.field public static final MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

.field public static final OUTSIDE_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

.field public static final PAGE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

.field public static final PARAGRAPH:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

.field public static final TOP_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "strelfromv56dctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "margin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    const-string v0, "page"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->PAGE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    const-string v0, "paragraph"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->PARAGRAPH:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    const-string v0, "line"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->LINE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    const-string v0, "topMargin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->TOP_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    const-string v0, "bottomMargin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->BOTTOM_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    const-string v0, "insideMargin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->INSIDE_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    const-string v0, "outsideMargin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->OUTSIDE_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
