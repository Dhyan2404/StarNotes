.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRAM_END:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr$Enum;

.field public static final GRAM_START:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr$Enum;

.field public static final INT_GRAM_END:I = 0x4

.field public static final INT_GRAM_START:I = 0x3

.field public static final INT_SPELL_END:I = 0x2

.field public static final INT_SPELL_START:I = 0x1

.field public static final SPELL_END:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr$Enum;

.field public static final SPELL_START:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stprooferr6bf7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "spellStart"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr;->SPELL_START:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr$Enum;

    const-string v0, "spellEnd"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr;->SPELL_END:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr$Enum;

    const-string v0, "gramStart"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr;->GRAM_START:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr$Enum;

    const-string v0, "gramEnd"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr;->GRAM_END:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STProofErr$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
