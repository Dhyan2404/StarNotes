.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;
    }
.end annotation


# static fields
.field public static final CONTINUATION_NOTICE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;

.field public static final CONTINUATION_SEPARATOR:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CONTINUATION_NOTICE:I = 0x4

.field public static final INT_CONTINUATION_SEPARATOR:I = 0x3

.field public static final INT_NORMAL:I = 0x1

.field public static final INT_SEPARATOR:I = 0x2

.field public static final NORMAL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;

.field public static final SEPARATOR:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stftnednd4c9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "normal"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn;->NORMAL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;

    const-string v0, "separator"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn;->SEPARATOR:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;

    const-string v0, "continuationSeparator"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn;->CONTINUATION_SEPARATOR:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;

    const-string v0, "continuationNotice"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn;->CONTINUATION_NOTICE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
