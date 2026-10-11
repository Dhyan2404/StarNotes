.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;
    }
.end annotation


# static fields
.field public static final CATEGORY:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRID_LEGEND:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;

.field public static final INT_CATEGORY:I = 0x3

.field public static final INT_GRID_LEGEND:I = 0x1

.field public static final INT_PT_IN_CATEGORY:I = 0x5

.field public static final INT_PT_IN_SERIES:I = 0x4

.field public static final INT_SERIES:I = 0x2

.field public static final PT_IN_CATEGORY:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;

.field public static final PT_IN_SERIES:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;

.field public static final SERIES:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttlchartsubelementtype3883type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "gridLegend"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType;->GRID_LEGEND:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;

    const-string v0, "series"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType;->SERIES:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;

    const-string v0, "category"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType;->CATEGORY:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;

    const-string v0, "ptInSeries"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType;->PT_IN_SERIES:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;

    const-string v0, "ptInCategory"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType;->PT_IN_CATEGORY:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLChartSubelementType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
