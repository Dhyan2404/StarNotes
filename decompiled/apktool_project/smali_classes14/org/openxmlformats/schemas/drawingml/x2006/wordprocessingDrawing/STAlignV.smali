.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;
    }
.end annotation


# static fields
.field public static final BOTTOM:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;

.field public static final CENTER:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSIDE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;

.field public static final INT_BOTTOM:I = 0x2

.field public static final INT_CENTER:I = 0x3

.field public static final INT_INSIDE:I = 0x4

.field public static final INT_OUTSIDE:I = 0x5

.field public static final INT_TOP:I = 0x1

.field public static final OUTSIDE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;

.field public static final TOP:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stalignv5abetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "top"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV;->TOP:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;

    const-string v0, "bottom"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV;->BOTTOM:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;

    const-string v0, "center"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV;->CENTER:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;

    const-string v0, "inside"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV;->INSIDE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;

    const-string v0, "outside"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV;->OUTSIDE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
