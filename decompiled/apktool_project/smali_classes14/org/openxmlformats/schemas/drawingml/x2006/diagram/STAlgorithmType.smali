.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;
    }
.end annotation


# static fields
.field public static final COMPOSITE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

.field public static final CONN:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

.field public static final CYCLE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIER_CHILD:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

.field public static final HIER_ROOT:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

.field public static final INT_COMPOSITE:I = 0x1

.field public static final INT_CONN:I = 0x2

.field public static final INT_CYCLE:I = 0x3

.field public static final INT_HIER_CHILD:I = 0x4

.field public static final INT_HIER_ROOT:I = 0x5

.field public static final INT_LIN:I = 0x7

.field public static final INT_PYRA:I = 0x6

.field public static final INT_SNAKE:I = 0xa

.field public static final INT_SP:I = 0x8

.field public static final INT_TX:I = 0x9

.field public static final LIN:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

.field public static final PYRA:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

.field public static final SNAKE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

.field public static final SP:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

.field public static final TX:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stalgorithmtype8c82type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "composite"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType;->COMPOSITE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    const-string v0, "conn"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType;->CONN:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    const-string v0, "cycle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType;->CYCLE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    const-string v0, "hierChild"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType;->HIER_CHILD:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    const-string v0, "hierRoot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType;->HIER_ROOT:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    const-string v0, "pyra"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType;->PYRA:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    const-string v0, "lin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType;->LIN:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    const-string v0, "sp"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType;->SP:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    const-string v0, "tx"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType;->TX:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    const-string v0, "snake"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType;->SNAKE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAlgorithmType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
