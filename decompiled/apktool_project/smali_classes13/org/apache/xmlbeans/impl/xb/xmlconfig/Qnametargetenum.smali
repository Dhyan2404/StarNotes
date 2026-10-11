.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum$Enum;
    }
.end annotation


# static fields
.field public static final ACCESSOR_ATTRIBUTE:Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum$Enum;

.field public static final ACCESSOR_ELEMENT:Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum$Enum;

.field public static final DOCUMENT_TYPE:Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ACCESSOR_ATTRIBUTE:I = 0x4

.field public static final INT_ACCESSOR_ELEMENT:I = 0x3

.field public static final INT_DOCUMENT_TYPE:I = 0x2

.field public static final INT_TYPE:I = 0x1

.field public static final TYPE:Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLCONFIG/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLCONFIG/TypeSystemHolder;

    const-string v2, "qnametargetenum9f8ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "type"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum$Enum;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum;->TYPE:Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum$Enum;

    const-string v0, "document-type"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum$Enum;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum;->DOCUMENT_TYPE:Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum$Enum;

    const-string v0, "accessor-element"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum$Enum;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum;->ACCESSOR_ELEMENT:Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum$Enum;

    const-string v0, "accessor-attribute"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum$Enum;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum;->ACCESSOR_ATTRIBUTE:Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetenum$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
