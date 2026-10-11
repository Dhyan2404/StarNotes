.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;
    }
.end annotation


# static fields
.field public static final ANCST:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

.field public static final ANCST_OR_SELF:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

.field public static final CH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

.field public static final DES:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

.field public static final DES_OR_SELF:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

.field public static final FOLLOW:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

.field public static final FOLLOW_SIB:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ANCST:I = 0x6

.field public static final INT_ANCST_OR_SELF:I = 0x7

.field public static final INT_CH:I = 0x2

.field public static final INT_DES:I = 0x3

.field public static final INT_DES_OR_SELF:I = 0x4

.field public static final INT_FOLLOW:I = 0xa

.field public static final INT_FOLLOW_SIB:I = 0x8

.field public static final INT_NONE:I = 0xd

.field public static final INT_PAR:I = 0x5

.field public static final INT_PRECED:I = 0xb

.field public static final INT_PRECED_SIB:I = 0x9

.field public static final INT_ROOT:I = 0xc

.field public static final INT_SELF:I = 0x1

.field public static final NONE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

.field public static final PAR:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

.field public static final PRECED:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

.field public static final PRECED_SIB:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

.field public static final ROOT:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

.field public static final SELF:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "staxistypeca86type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "self"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType;->SELF:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    const-string v0, "ch"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType;->CH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    const-string v0, "des"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType;->DES:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    const-string v0, "desOrSelf"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType;->DES_OR_SELF:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    const-string v0, "par"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType;->PAR:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    const-string v0, "ancst"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType;->ANCST:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    const-string v0, "ancstOrSelf"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType;->ANCST_OR_SELF:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    const-string v0, "followSib"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType;->FOLLOW_SIB:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    const-string v0, "precedSib"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType;->PRECED_SIB:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    const-string v0, "follow"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType;->FOLLOW:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    const-string v0, "preced"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType;->PRECED:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    const-string v0, "root"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType;->ROOT:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STAxisType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
