.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat;",
            ">;"
        }
    .end annotation
.end field

.field public static final HANDOUTS_1:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

.field public static final HANDOUTS_2:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

.field public static final HANDOUTS_3:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

.field public static final HANDOUTS_4:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

.field public static final HANDOUTS_6:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

.field public static final HANDOUTS_9:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

.field public static final INT_HANDOUTS_1:I = 0x2

.field public static final INT_HANDOUTS_2:I = 0x3

.field public static final INT_HANDOUTS_3:I = 0x4

.field public static final INT_HANDOUTS_4:I = 0x5

.field public static final INT_HANDOUTS_6:I = 0x6

.field public static final INT_HANDOUTS_9:I = 0x7

.field public static final INT_NOTES:I = 0x8

.field public static final INT_OUTLINE:I = 0x9

.field public static final INT_SLIDES:I = 0x1

.field public static final NOTES:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

.field public static final OUTLINE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

.field public static final SLIDES:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stprintwhat9feetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "slides"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat;->SLIDES:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    const-string v0, "handouts1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat;->HANDOUTS_1:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    const-string v0, "handouts2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat;->HANDOUTS_2:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    const-string v0, "handouts3"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat;->HANDOUTS_3:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    const-string v0, "handouts4"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat;->HANDOUTS_4:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    const-string v0, "handouts6"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat;->HANDOUTS_6:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    const-string v0, "handouts9"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat;->HANDOUTS_9:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    const-string v0, "notes"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat;->NOTES:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    const-string v0, "outline"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat;->OUTLINE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPrintWhat$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
