.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;
    }
.end annotation


# static fields
.field public static final BEGIN:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

.field public static final END:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BEGIN:I = 0x3

.field public static final INT_END:I = 0x4

.field public static final INT_ON_BEGIN:I = 0x1

.field public static final INT_ON_CLICK:I = 0x5

.field public static final INT_ON_DBL_CLICK:I = 0x6

.field public static final INT_ON_END:I = 0x2

.field public static final INT_ON_MOUSE_OUT:I = 0x8

.field public static final INT_ON_MOUSE_OVER:I = 0x7

.field public static final INT_ON_NEXT:I = 0x9

.field public static final INT_ON_PREV:I = 0xa

.field public static final INT_ON_STOP_AUDIO:I = 0xb

.field public static final ON_BEGIN:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

.field public static final ON_CLICK:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

.field public static final ON_DBL_CLICK:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

.field public static final ON_END:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

.field public static final ON_MOUSE_OUT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

.field public static final ON_MOUSE_OVER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

.field public static final ON_NEXT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

.field public static final ON_PREV:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

.field public static final ON_STOP_AUDIO:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttltriggerevent36dbtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "onBegin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;->ON_BEGIN:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    const-string v0, "onEnd"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;->ON_END:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    const-string v0, "begin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;->BEGIN:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    const-string v0, "end"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;->END:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    const-string v0, "onClick"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;->ON_CLICK:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    const-string v0, "onDblClick"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;->ON_DBL_CLICK:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    const-string v0, "onMouseOver"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;->ON_MOUSE_OVER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    const-string v0, "onMouseOut"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;->ON_MOUSE_OUT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    const-string v0, "onNext"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;->ON_NEXT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    const-string v0, "onPrev"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;->ON_PREV:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    const-string v0, "onStopAudio"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;->ON_STOP_AUDIO:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
