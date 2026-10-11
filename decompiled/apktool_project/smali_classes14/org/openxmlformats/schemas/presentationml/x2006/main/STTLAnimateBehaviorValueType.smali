.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType$Enum;
    }
.end annotation


# static fields
.field public static final CLR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CLR:I = 0x3

.field public static final INT_NUM:I = 0x2

.field public static final INT_STR:I = 0x1

.field public static final NUM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType$Enum;

.field public static final STR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttlanimatebehaviorvaluetype1725type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "str"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType;->STR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType$Enum;

    const-string v0, "num"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType;->NUM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType$Enum;

    const-string v0, "clr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType;->CLR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLAnimateBehaviorValueType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
