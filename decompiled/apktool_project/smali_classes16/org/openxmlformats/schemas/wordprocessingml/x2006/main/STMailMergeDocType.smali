.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;
    }
.end annotation


# static fields
.field public static final CATALOG:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

.field public static final EMAIL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

.field public static final ENVELOPES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

.field public static final FAX:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

.field public static final FORM_LETTERS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CATALOG:I = 0x1

.field public static final INT_EMAIL:I = 0x5

.field public static final INT_ENVELOPES:I = 0x2

.field public static final INT_FAX:I = 0x6

.field public static final INT_FORM_LETTERS:I = 0x4

.field public static final INT_MAILING_LABELS:I = 0x3

.field public static final MAILING_LABELS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stmailmergedoctype4be7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "catalog"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType;->CATALOG:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

    const-string v0, "envelopes"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType;->ENVELOPES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

    const-string v0, "mailingLabels"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType;->MAILING_LABELS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

    const-string v0, "formLetters"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType;->FORM_LETTERS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

    const-string v0, "email"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType;->EMAIL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

    const-string v0, "fax"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType;->FAX:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDocType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
