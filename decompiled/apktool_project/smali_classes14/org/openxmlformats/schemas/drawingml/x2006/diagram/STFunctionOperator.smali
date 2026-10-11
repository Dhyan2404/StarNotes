.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;
    }
.end annotation


# static fields
.field public static final EQU:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator;",
            ">;"
        }
    .end annotation
.end field

.field public static final GT:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

.field public static final GTE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

.field public static final INT_EQU:I = 0x1

.field public static final INT_GT:I = 0x3

.field public static final INT_GTE:I = 0x5

.field public static final INT_LT:I = 0x4

.field public static final INT_LTE:I = 0x6

.field public static final INT_NEQ:I = 0x2

.field public static final LT:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

.field public static final LTE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

.field public static final NEQ:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stfunctionoperator7485type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "equ"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator;->EQU:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

    const-string v0, "neq"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator;->NEQ:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

    const-string v0, "gt"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator;->GT:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

    const-string v0, "lt"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator;->LT:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

    const-string v0, "gte"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator;->GTE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

    const-string v0, "lte"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator;->LTE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionOperator$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
