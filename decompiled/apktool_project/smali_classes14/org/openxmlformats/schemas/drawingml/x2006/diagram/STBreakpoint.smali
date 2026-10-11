.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint$Enum;
    }
.end annotation


# static fields
.field public static final BAL:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint$Enum;

.field public static final END_CNV:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint$Enum;

.field public static final FIXED:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BAL:I = 0x2

.field public static final INT_END_CNV:I = 0x1

.field public static final INT_FIXED:I = 0x3

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stbreakpointd310type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "endCnv"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint;->END_CNV:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint$Enum;

    const-string v0, "bal"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint;->BAL:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint$Enum;

    const-string v0, "fixed"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint;->FIXED:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STBreakpoint$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
