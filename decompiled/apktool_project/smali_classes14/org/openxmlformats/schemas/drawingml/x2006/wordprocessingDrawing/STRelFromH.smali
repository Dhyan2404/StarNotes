.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;
    }
.end annotation


# static fields
.field public static final CHARACTER:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

.field public static final COLUMN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSIDE_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

.field public static final INT_CHARACTER:I = 0x4

.field public static final INT_COLUMN:I = 0x3

.field public static final INT_INSIDE_MARGIN:I = 0x7

.field public static final INT_LEFT_MARGIN:I = 0x5

.field public static final INT_MARGIN:I = 0x1

.field public static final INT_OUTSIDE_MARGIN:I = 0x8

.field public static final INT_PAGE:I = 0x2

.field public static final INT_RIGHT_MARGIN:I = 0x6

.field public static final LEFT_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

.field public static final MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

.field public static final OUTSIDE_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

.field public static final PAGE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

.field public static final RIGHT_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "strelfromh72aatype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "margin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH;->MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

    const-string v0, "page"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH;->PAGE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

    const-string v0, "column"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH;->COLUMN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

    const-string v0, "character"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH;->CHARACTER:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

    const-string v0, "leftMargin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH;->LEFT_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

    const-string v0, "rightMargin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH;->RIGHT_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

    const-string v0, "insideMargin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH;->INSIDE_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

    const-string v0, "outsideMargin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH;->OUTSIDE_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
