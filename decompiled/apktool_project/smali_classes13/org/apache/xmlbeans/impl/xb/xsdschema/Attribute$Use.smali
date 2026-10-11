.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlNMTOKEN;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Use"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/ElementFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_OPTIONAL:I = 0x2

.field public static final INT_PROHIBITED:I = 0x1

.field public static final INT_REQUIRED:I = 0x3

.field public static final OPTIONAL:Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use$Enum;

.field public static final PROHIBITED:Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use$Enum;

.field public static final REQUIRED:Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;

    const-string v2, "usea41aattrtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use;->Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "prohibited"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use$Enum;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use;->PROHIBITED:Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use$Enum;

    const-string v0, "optional"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use$Enum;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use;->OPTIONAL:Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use$Enum;

    const-string v0, "required"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use$Enum;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use;->REQUIRED:Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
