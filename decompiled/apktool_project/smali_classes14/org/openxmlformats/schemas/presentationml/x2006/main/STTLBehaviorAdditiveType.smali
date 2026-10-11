.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;
    }
.end annotation


# static fields
.field public static final BASE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BASE:I = 0x1

.field public static final INT_MULT:I = 0x4

.field public static final INT_NONE:I = 0x5

.field public static final INT_REPL:I = 0x3

.field public static final INT_SUM:I = 0x2

.field public static final MULT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;

.field public static final NONE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;

.field public static final REPL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;

.field public static final SUM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttlbehavioradditivetype0145type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "base"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType;->BASE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;

    const-string v0, "sum"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType;->SUM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;

    const-string v0, "repl"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType;->REPL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;

    const-string v0, "mult"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType;->MULT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType;->NONE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLBehaviorAdditiveType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
