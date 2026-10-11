.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType$Enum;
    }
.end annotation


# static fields
.field public static final CALL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType$Enum;

.field public static final EVT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CALL:I = 0x2

.field public static final INT_EVT:I = 0x1

.field public static final INT_VERB:I = 0x3

.field public static final VERB:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttlcommandtype6752type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "evt"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType;->EVT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType$Enum;

    const-string v0, "call"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType;->CALL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType$Enum;

    const-string v0, "verb"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType;->VERB:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLCommandType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
