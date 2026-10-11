.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;
    }
.end annotation


# static fields
.field public static final COLON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;

.field public static final EM_DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;

.field public static final EN_DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep;",
            ">;"
        }
    .end annotation
.end field

.field public static final HYPHEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;

.field public static final INT_COLON:I = 0x3

.field public static final INT_EM_DASH:I = 0x4

.field public static final INT_EN_DASH:I = 0x5

.field public static final INT_HYPHEN:I = 0x1

.field public static final INT_PERIOD:I = 0x2

.field public static final PERIOD:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stchaptersep27e7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "hyphen"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep;->HYPHEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;

    const-string v0, "period"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep;->PERIOD:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;

    const-string v0, "colon"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep;->COLON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;

    const-string v0, "emDash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep;->EM_DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;

    const-string v0, "enDash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep;->EN_DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
