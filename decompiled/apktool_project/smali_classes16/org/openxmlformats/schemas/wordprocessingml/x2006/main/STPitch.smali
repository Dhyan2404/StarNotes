.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch$Enum;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch$Enum;

.field public static final FIXED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_DEFAULT:I = 0x3

.field public static final INT_FIXED:I = 0x1

.field public static final INT_VARIABLE:I = 0x2

.field public static final VARIABLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stpitch0ea2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "fixed"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch;->FIXED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch$Enum;

    const-string v0, "variable"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch;->VARIABLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch$Enum;

    const-string v0, "default"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch;->DEFAULT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPitch$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
