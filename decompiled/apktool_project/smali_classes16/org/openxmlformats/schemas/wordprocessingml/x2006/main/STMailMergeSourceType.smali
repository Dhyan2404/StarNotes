.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;
    }
.end annotation


# static fields
.field public static final ADDRESS_BOOK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

.field public static final DATABASE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

.field public static final DOCUMENT_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

.field public static final DOCUMENT_2:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

.field public static final EMAIL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ADDRESS_BOOK:I = 0x2

.field public static final INT_DATABASE:I = 0x1

.field public static final INT_DOCUMENT_1:I = 0x3

.field public static final INT_DOCUMENT_2:I = 0x4

.field public static final INT_EMAIL:I = 0x6

.field public static final INT_LEGACY:I = 0x8

.field public static final INT_MASTER:I = 0x9

.field public static final INT_NATIVE:I = 0x7

.field public static final INT_TEXT:I = 0x5

.field public static final LEGACY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

.field public static final MASTER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

.field public static final NATIVE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

.field public static final TEXT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stmailmergesourcetype534ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "database"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType;->DATABASE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    const-string v0, "addressBook"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType;->ADDRESS_BOOK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    const-string v0, "document1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType;->DOCUMENT_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    const-string v0, "document2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType;->DOCUMENT_2:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    const-string v0, "text"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType;->TEXT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    const-string v0, "email"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType;->EMAIL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    const-string v0, "native"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType;->NATIVE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    const-string v0, "legacy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType;->LEGACY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    const-string v0, "master"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType;->MASTER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeSourceType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
