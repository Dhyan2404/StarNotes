.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;
    }
.end annotation


# static fields
.field public static final ALL_AT_ONCE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;

.field public static final CATEGORY:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;

.field public static final CATEGORY_EL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ALL_AT_ONCE:I = 0x1

.field public static final INT_CATEGORY:I = 0x3

.field public static final INT_CATEGORY_EL:I = 0x5

.field public static final INT_SERIES:I = 0x2

.field public static final INT_SERIES_EL:I = 0x4

.field public static final SERIES:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;

.field public static final SERIES_EL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttlolechartbuildtype0dc5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "allAtOnce"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType;->ALL_AT_ONCE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;

    const-string v0, "series"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType;->SERIES:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;

    const-string v0, "category"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType;->CATEGORY:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;

    const-string v0, "seriesEl"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType;->SERIES_EL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;

    const-string v0, "categoryEl"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType;->CATEGORY_EL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLOleChartBuildType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
