.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;
    }
.end annotation


# static fields
.field public static final CIRCLE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CIRCLE:I = 0x2

.field public static final INT_RECT:I = 0x3

.field public static final INT_SHAPE:I = 0x1

.field public static final RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

.field public static final SHAPE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stpathshadetype93c3type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "shape"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;->SHAPE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    const-string v0, "circle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;->CIRCLE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    const-string v0, "rect"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;->RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
