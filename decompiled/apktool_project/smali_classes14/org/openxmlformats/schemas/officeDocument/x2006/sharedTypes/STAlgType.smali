.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType$Enum;
    }
.end annotation


# static fields
.field public static final CUSTOM:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CUSTOM:I = 0x2

.field public static final INT_TYPE_ANY:I = 0x1

.field public static final TYPE_ANY:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stalgtypecaa6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "typeAny"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType;->TYPE_ANY:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType$Enum;

    const-string v0, "custom"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType;->CUSTOM:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
