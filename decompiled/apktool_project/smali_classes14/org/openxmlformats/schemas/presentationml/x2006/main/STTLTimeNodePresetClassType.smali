.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;
    }
.end annotation


# static fields
.field public static final EMPH:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

.field public static final ENTR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

.field public static final EXIT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_EMPH:I = 0x3

.field public static final INT_ENTR:I = 0x1

.field public static final INT_EXIT:I = 0x2

.field public static final INT_MEDIACALL:I = 0x6

.field public static final INT_PATH:I = 0x4

.field public static final INT_VERB:I = 0x5

.field public static final MEDIACALL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

.field public static final PATH:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

.field public static final VERB:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttltimenodepresetclasstypef353type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "entr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType;->ENTR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

    const-string v0, "exit"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType;->EXIT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

    const-string v0, "emph"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType;->EMPH:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

    const-string v0, "path"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType;->PATH:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

    const-string v0, "verb"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType;->VERB:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

    const-string v0, "mediacall"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType;->MEDIACALL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
