.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;
    }
.end annotation


# static fields
.field public static final CNT:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

.field public static final DEPTH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CNT:I = 0x1

.field public static final INT_DEPTH:I = 0x7

.field public static final INT_MAX_DEPTH:I = 0x8

.field public static final INT_POS:I = 0x2

.field public static final INT_POS_EVEN:I = 0x4

.field public static final INT_POS_ODD:I = 0x5

.field public static final INT_REV_POS:I = 0x3

.field public static final INT_VAR:I = 0x6

.field public static final MAX_DEPTH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

.field public static final POS:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

.field public static final POS_EVEN:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

.field public static final POS_ODD:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

.field public static final REV_POS:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

.field public static final VAR:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stfunctiontype0c2ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "cnt"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType;->CNT:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

    const-string v0, "pos"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType;->POS:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

    const-string v0, "revPos"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType;->REV_POS:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

    const-string v0, "posEven"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType;->POS_EVEN:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

    const-string v0, "posOdd"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType;->POS_ODD:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

    const-string v0, "var"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType;->VAR:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

    const-string v0, "depth"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType;->DEPTH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

    const-string v0, "maxDepth"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType;->MAX_DEPTH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STFunctionType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
