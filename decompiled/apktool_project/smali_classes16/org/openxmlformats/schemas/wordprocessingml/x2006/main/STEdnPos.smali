.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdnPos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdnPos$Enum;
    }
.end annotation


# static fields
.field public static final DOC_END:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdnPos$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdnPos;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_DOC_END:I = 0x2

.field public static final INT_SECT_END:I = 0x1

.field public static final SECT_END:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdnPos$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stednposde93type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdnPos;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdnPos;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "sectEnd"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdnPos$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdnPos$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdnPos;->SECT_END:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdnPos$Enum;

    const-string v0, "docEnd"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdnPos$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdnPos$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdnPos;->DOC_END:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdnPos$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
