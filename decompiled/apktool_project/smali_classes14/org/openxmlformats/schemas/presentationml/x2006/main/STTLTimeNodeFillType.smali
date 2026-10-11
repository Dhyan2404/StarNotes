.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;
    }
.end annotation


# static fields
.field public static final FREEZE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOLD:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

.field public static final INT_FREEZE:I = 0x2

.field public static final INT_HOLD:I = 0x3

.field public static final INT_REMOVE:I = 0x1

.field public static final INT_TRANSITION:I = 0x4

.field public static final REMOVE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

.field public static final TRANSITION:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttltimenodefilltypeb7f1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "remove"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;->REMOVE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

    const-string v0, "freeze"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;->FREEZE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

    const-string v0, "hold"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;->HOLD:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

    const-string v0, "transition"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;->TRANSITION:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
