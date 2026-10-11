.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;
    }
.end annotation


# static fields
.field public static final A_1:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_A_1:I = 0x1

.field public static final INT_R_1_C_1:I = 0x2

.field public static final R_1_C_1:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "strefmodee5a5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "A1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode;->A_1:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;

    const-string v0, "R1C1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode;->R_1_C_1:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
