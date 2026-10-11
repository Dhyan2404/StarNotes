.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments$Enum;
    }
.end annotation


# static fields
.field public static final COMM_INDICATOR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments$Enum;

.field public static final COMM_IND_AND_COMMENT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments$Enum;

.field public static final COMM_NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_COMM_INDICATOR:I = 0x2

.field public static final INT_COMM_IND_AND_COMMENT:I = 0x3

.field public static final INT_COMM_NONE:I = 0x1

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stcommentsdbcdtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "commNone"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments;->COMM_NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments$Enum;

    const-string v0, "commIndicator"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments;->COMM_INDICATOR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments$Enum;

    const-string v0, "commIndAndComment"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments;->COMM_IND_AND_COMMENT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
