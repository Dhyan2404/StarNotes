.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;
    }
.end annotation


# static fields
.field public static final ASST:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

.field public static final DOC:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ASST:I = 0x2

.field public static final INT_DOC:I = 0x3

.field public static final INT_NODE:I = 0x1

.field public static final INT_PAR_TRANS:I = 0x5

.field public static final INT_PRES:I = 0x4

.field public static final INT_SIB_TRANS:I = 0x6

.field public static final NODE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

.field public static final PAR_TRANS:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

.field public static final PRES:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

.field public static final SIB_TRANS:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stpttype6dc3type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "node"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType;->NODE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

    const-string v0, "asst"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType;->ASST:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

    const-string v0, "doc"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType;->DOC:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

    const-string v0, "pres"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType;->PRES:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

    const-string v0, "parTrans"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType;->PAR_TRANS:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

    const-string v0, "sibTrans"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType;->SIB_TRANS:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
