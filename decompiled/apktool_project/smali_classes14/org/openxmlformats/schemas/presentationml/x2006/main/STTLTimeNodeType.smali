.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;
    }
.end annotation


# static fields
.field public static final AFTER_EFFECT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

.field public static final AFTER_GROUP:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

.field public static final CLICK_EFFECT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

.field public static final CLICK_PAR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERACTIVE_SEQ:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

.field public static final INT_AFTER_EFFECT:I = 0x3

.field public static final INT_AFTER_GROUP:I = 0x8

.field public static final INT_CLICK_EFFECT:I = 0x1

.field public static final INT_CLICK_PAR:I = 0x6

.field public static final INT_INTERACTIVE_SEQ:I = 0x5

.field public static final INT_MAIN_SEQ:I = 0x4

.field public static final INT_TM_ROOT:I = 0x9

.field public static final INT_WITH_EFFECT:I = 0x2

.field public static final INT_WITH_GROUP:I = 0x7

.field public static final MAIN_SEQ:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

.field public static final TM_ROOT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

.field public static final WITH_EFFECT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

.field public static final WITH_GROUP:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttltimenodetypebbf4type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "clickEffect"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;->CLICK_EFFECT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    const-string v0, "withEffect"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;->WITH_EFFECT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    const-string v0, "afterEffect"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;->AFTER_EFFECT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    const-string v0, "mainSeq"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;->MAIN_SEQ:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    const-string v0, "interactiveSeq"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;->INTERACTIVE_SEQ:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    const-string v0, "clickPar"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;->CLICK_PAR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    const-string v0, "withGroup"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;->WITH_GROUP:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    const-string v0, "afterGroup"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;->AFTER_GROUP:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    const-string v0, "tmRoot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;->TM_ROOT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
