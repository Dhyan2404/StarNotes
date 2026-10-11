.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;
    }
.end annotation


# static fields
.field public static final ALL_AT_ONCE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;

.field public static final CUST:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ALL_AT_ONCE:I = 0x1

.field public static final INT_CUST:I = 0x3

.field public static final INT_P:I = 0x2

.field public static final INT_WHOLE:I = 0x4

.field public static final P:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;

.field public static final WHOLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttlparabuildtype188ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "allAtOnce"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType;->ALL_AT_ONCE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;

    const-string v0, "p"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType;->P:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;

    const-string v0, "cust"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType;->CUST:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;

    const-string v0, "whole"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType;->WHOLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLParaBuildType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
