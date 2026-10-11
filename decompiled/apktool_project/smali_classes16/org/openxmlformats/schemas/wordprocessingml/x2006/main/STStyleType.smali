.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;
    }
.end annotation


# static fields
.field public static final CHARACTER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CHARACTER:I = 0x2

.field public static final INT_NUMBERING:I = 0x4

.field public static final INT_PARAGRAPH:I = 0x1

.field public static final INT_TABLE:I = 0x3

.field public static final NUMBERING:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;

.field public static final PARAGRAPH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;

.field public static final TABLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ststyletypec2b7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "paragraph"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType;->PARAGRAPH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;

    const-string v0, "character"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType;->CHARACTER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;

    const-string v0, "table"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType;->TABLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;

    const-string v0, "numbering"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType;->NUMBERING:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
