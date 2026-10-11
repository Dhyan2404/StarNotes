.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;
    }
.end annotation


# static fields
.field public static final AUTO_EXP:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

.field public static final BB_PLC_HDR:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

.field public static final FORM_FLD:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_AUTO_EXP:I = 0x3

.field public static final INT_BB_PLC_HDR:I = 0x7

.field public static final INT_FORM_FLD:I = 0x6

.field public static final INT_NONE:I = 0x1

.field public static final INT_NORMAL:I = 0x2

.field public static final INT_SPELLER:I = 0x5

.field public static final INT_TOOLBAR:I = 0x4

.field public static final NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

.field public static final NORMAL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

.field public static final SPELLER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

.field public static final TOOLBAR:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stdocparttype191dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

    const-string v0, "normal"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType;->NORMAL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

    const-string v0, "autoExp"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType;->AUTO_EXP:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

    const-string v0, "toolbar"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType;->TOOLBAR:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

    const-string v0, "speller"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType;->SPELLER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

    const-string v0, "formFld"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType;->FORM_FLD:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

    const-string v0, "bbPlcHdr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType;->BB_PLC_HDR:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocPartType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
