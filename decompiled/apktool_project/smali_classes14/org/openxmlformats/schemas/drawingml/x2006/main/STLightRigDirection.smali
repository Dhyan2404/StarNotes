.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;
    }
.end annotation


# static fields
.field public static final B:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

.field public static final BL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

.field public static final BR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_B:I = 0x7

.field public static final INT_BL:I = 0x6

.field public static final INT_BR:I = 0x8

.field public static final INT_L:I = 0x4

.field public static final INT_R:I = 0x5

.field public static final INT_T:I = 0x2

.field public static final INT_TL:I = 0x1

.field public static final INT_TR:I = 0x3

.field public static final L:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

.field public static final R:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

.field public static final T:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

.field public static final TL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

.field public static final TR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stlightrigdirection1e26type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "tl"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection;->TL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

    const-string v0, "t"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection;->T:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

    const-string v0, "tr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection;->TR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

    const-string v0, "l"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection;->L:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

    const-string v0, "r"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection;->R:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

    const-string v0, "bl"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection;->BL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

    const-string v0, "b"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection;->B:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

    const-string v0, "br"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection;->BR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLightRigDirection$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
