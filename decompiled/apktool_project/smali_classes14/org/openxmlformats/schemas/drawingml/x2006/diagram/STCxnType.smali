.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_PAR_OF:I = 0x1

.field public static final INT_PRES_OF:I = 0x2

.field public static final INT_PRES_PAR_OF:I = 0x3

.field public static final INT_UNKNOWN_RELATIONSHIP:I = 0x4

.field public static final PAR_OF:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;

.field public static final PRES_OF:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;

.field public static final PRES_PAR_OF:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;

.field public static final UNKNOWN_RELATIONSHIP:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stcxntypeca58type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "parOf"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType;->PAR_OF:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;

    const-string v0, "presOf"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType;->PRES_OF:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;

    const-string v0, "presParOf"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType;->PRES_PAR_OF:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;

    const-string v0, "unknownRelationship"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType;->UNKNOWN_RELATIONSHIP:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
