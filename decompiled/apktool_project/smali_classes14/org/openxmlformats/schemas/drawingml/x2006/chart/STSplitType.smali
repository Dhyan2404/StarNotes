.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;
    }
.end annotation


# static fields
.field public static final AUTO:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;

.field public static final CUST:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_AUTO:I = 0x1

.field public static final INT_CUST:I = 0x2

.field public static final INT_PERCENT:I = 0x3

.field public static final INT_POS:I = 0x4

.field public static final INT_VAL:I = 0x5

.field public static final PERCENT:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;

.field public static final POS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;

.field public static final VAL:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stsplittype6842type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "auto"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType;->AUTO:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;

    const-string v0, "cust"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType;->CUST:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;

    const-string v0, "percent"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType;->PERCENT:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;

    const-string v0, "pos"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType;->POS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;

    const-string v0, "val"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType;->VAL:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STSplitType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
