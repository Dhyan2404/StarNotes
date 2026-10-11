.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest$Enum;
    }
.end annotation


# static fields
.field public static final EMAIL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest$Enum;

.field public static final FAX:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_EMAIL:I = 0x3

.field public static final INT_FAX:I = 0x4

.field public static final INT_NEW_DOCUMENT:I = 0x1

.field public static final INT_PRINTER:I = 0x2

.field public static final NEW_DOCUMENT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest$Enum;

.field public static final PRINTER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stmailmergedesta0bftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "newDocument"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest;->NEW_DOCUMENT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest$Enum;

    const-string v0, "printer"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest;->PRINTER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest$Enum;

    const-string v0, "email"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest;->EMAIL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest$Enum;

    const-string v0, "fax"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest;->FAX:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMailMergeDest$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
