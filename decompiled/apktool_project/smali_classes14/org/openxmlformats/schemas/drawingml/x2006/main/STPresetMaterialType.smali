.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;
    }
.end annotation


# static fields
.field public static final CLEAR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

.field public static final DK_EDGE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

.field public static final FLAT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CLEAR:I = 0xd

.field public static final INT_DK_EDGE:I = 0xb

.field public static final INT_FLAT:I = 0xe

.field public static final INT_LEGACY_MATTE:I = 0x1

.field public static final INT_LEGACY_METAL:I = 0x3

.field public static final INT_LEGACY_PLASTIC:I = 0x2

.field public static final INT_LEGACY_WIREFRAME:I = 0x4

.field public static final INT_MATTE:I = 0x5

.field public static final INT_METAL:I = 0x7

.field public static final INT_PLASTIC:I = 0x6

.field public static final INT_POWDER:I = 0xa

.field public static final INT_SOFTMETAL:I = 0xf

.field public static final INT_SOFT_EDGE:I = 0xc

.field public static final INT_TRANSLUCENT_POWDER:I = 0x9

.field public static final INT_WARM_MATTE:I = 0x8

.field public static final LEGACY_MATTE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

.field public static final LEGACY_METAL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

.field public static final LEGACY_PLASTIC:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

.field public static final LEGACY_WIREFRAME:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

.field public static final MATTE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

.field public static final METAL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

.field public static final PLASTIC:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

.field public static final POWDER:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

.field public static final SOFTMETAL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

.field public static final SOFT_EDGE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

.field public static final TRANSLUCENT_POWDER:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

.field public static final WARM_MATTE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stpresetmaterialtype87ebtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "legacyMatte"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;->LEGACY_MATTE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    const-string v0, "legacyPlastic"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;->LEGACY_PLASTIC:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    const-string v0, "legacyMetal"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;->LEGACY_METAL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    const-string v0, "legacyWireframe"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;->LEGACY_WIREFRAME:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    const-string v0, "matte"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;->MATTE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    const-string v0, "plastic"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;->PLASTIC:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    const-string v0, "metal"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;->METAL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    const-string v0, "warmMatte"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;->WARM_MATTE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    const-string v0, "translucentPowder"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;->TRANSLUCENT_POWDER:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    const-string v0, "powder"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;->POWDER:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    const-string v0, "dkEdge"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;->DK_EDGE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    const-string v0, "softEdge"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;->SOFT_EDGE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    const-string v0, "clear"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;->CLEAR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    const-string v0, "flat"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;->FLAT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    const-string v0, "softmetal"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;->SOFTMETAL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
