.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;
    }
.end annotation


# static fields
.field public static final AREA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;

.field public static final AREA_ERROR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;

.field public static final COMPUTED_AREA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_AREA:I = 0x3

.field public static final INT_AREA_ERROR:I = 0x4

.field public static final INT_COMPUTED_AREA:I = 0x5

.field public static final INT_REF:I = 0x1

.field public static final INT_REF_ERROR:I = 0x2

.field public static final REF:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;

.field public static final REF_ERROR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stformulaexpressione5adtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "ref"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression;->REF:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;

    const-string v0, "refError"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression;->REF_ERROR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;

    const-string v0, "area"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression;->AREA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;

    const-string v0, "areaError"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression;->AREA_ERROR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;

    const-string v0, "computedArea"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression;->COMPUTED_AREA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
