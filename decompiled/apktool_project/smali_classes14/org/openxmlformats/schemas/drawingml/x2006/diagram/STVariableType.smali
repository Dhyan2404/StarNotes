.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;
    }
.end annotation


# static fields
.field public static final ANIM_LVL:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

.field public static final ANIM_ONE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

.field public static final BUL_ENABLED:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

.field public static final CH_MAX:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

.field public static final CH_PREF:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

.field public static final DIR:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIER_BRANCH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

.field public static final INT_ANIM_LVL:I = 0x9

.field public static final INT_ANIM_ONE:I = 0x8

.field public static final INT_BUL_ENABLED:I = 0x5

.field public static final INT_CH_MAX:I = 0x3

.field public static final INT_CH_PREF:I = 0x4

.field public static final INT_DIR:I = 0x6

.field public static final INT_HIER_BRANCH:I = 0x7

.field public static final INT_NONE:I = 0x1

.field public static final INT_ORG_CHART:I = 0x2

.field public static final INT_RESIZE_HANDLES:I = 0xa

.field public static final NONE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

.field public static final ORG_CHART:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

.field public static final RESIZE_HANDLES:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stvariabletypef00btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    const-string v0, "orgChart"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType;->ORG_CHART:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    const-string v0, "chMax"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType;->CH_MAX:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    const-string v0, "chPref"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType;->CH_PREF:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    const-string v0, "bulEnabled"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType;->BUL_ENABLED:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    const-string v0, "dir"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType;->DIR:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    const-string v0, "hierBranch"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType;->HIER_BRANCH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    const-string v0, "animOne"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType;->ANIM_ONE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    const-string v0, "animLvl"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType;->ANIM_LVL:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    const-string v0, "resizeHandles"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType;->RESIZE_HANDLES:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STVariableType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
