.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay$Enum;
    }
.end annotation


# static fields
.field public static final ALL_PAGES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay$Enum;

.field public static final FIRST_PAGE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ALL_PAGES:I = 0x1

.field public static final INT_FIRST_PAGE:I = 0x2

.field public static final INT_NOT_FIRST_PAGE:I = 0x3

.field public static final NOT_FIRST_PAGE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stpageborderdisplay731btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "allPages"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay;->ALL_PAGES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay$Enum;

    const-string v0, "firstPage"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay;->FIRST_PAGE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay$Enum;

    const-string v0, "notFirstPage"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay;->NOT_FIRST_PAGE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
