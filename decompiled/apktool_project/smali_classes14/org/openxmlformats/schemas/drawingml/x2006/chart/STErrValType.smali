.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;
    }
.end annotation


# static fields
.field public static final CUST:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;

.field public static final FIXED_VAL:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CUST:I = 0x1

.field public static final INT_FIXED_VAL:I = 0x2

.field public static final INT_PERCENTAGE:I = 0x3

.field public static final INT_STD_DEV:I = 0x4

.field public static final INT_STD_ERR:I = 0x5

.field public static final PERCENTAGE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;

.field public static final STD_DEV:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;

.field public static final STD_ERR:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sterrvaltype96d6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "cust"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType;->CUST:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;

    const-string v0, "fixedVal"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType;->FIXED_VAL:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;

    const-string v0, "percentage"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType;->PERCENTAGE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;

    const-string v0, "stdDev"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType;->STD_DEV:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;

    const-string v0, "stdErr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType;->STD_ERR:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
