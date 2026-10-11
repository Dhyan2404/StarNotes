.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;
    }
.end annotation


# static fields
.field public static final AROUND:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

.field public static final AUTO:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_AROUND:I = 0x3

.field public static final INT_AUTO:I = 0x1

.field public static final INT_NONE:I = 0x6

.field public static final INT_NOT_BESIDE:I = 0x2

.field public static final INT_THROUGH:I = 0x5

.field public static final INT_TIGHT:I = 0x4

.field public static final NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

.field public static final NOT_BESIDE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

.field public static final THROUGH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

.field public static final TIGHT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stwrap3f4etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "auto"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap;->AUTO:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

    const-string v0, "notBeside"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap;->NOT_BESIDE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

    const-string v0, "around"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap;->AROUND:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

    const-string v0, "tight"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap;->TIGHT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

    const-string v0, "through"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap;->THROUGH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
